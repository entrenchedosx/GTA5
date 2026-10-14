# World streaming priority and CPU binding update — 2026-10-14

The user reported grey terrain and missing buildings that eventually appear. This is transient world availability, not evidence that the original assets were corrupted. The exact screenshot was not reproduced at the same saved spawn and cache state, so it is not claimed completely eliminated on every connection.

## Confirmed streaming defect and correction

`io_worker.js/ensureBlocks` discarded its caller's priority when choosing asset packs: every request used `startPack(pack, false)`. Normal announced engine reads also used demand priority. Consequently queued background work could occupy all four pack-download slots and a genuinely blocked engine read had no reserved lane.

`ensureBlocks` now preserves priority. `pumpHints` schedules announcements as background work while retaining their existing bounded concurrency and excluding speculative look-ahead. `pumpPacks` admits at most three background downloads and keeps the fourth lane available for demand. A queued, deduplicated pack is promoted when a blocking read requires it; its fetch then receives high priority. Promoting an already-running download cannot change the browser's existing network scheduling. Release callbacks are idempotent. Pack identities, hashes, integrity checks, byte ranges, cache namespaces, manifests and asset contents are unchanged. No extra prefetched library or loading artwork was added.

The real local GTA VI test recorded 106 background and 49 demand pack starts, total demand admission wait 0.535 ms and maximum 0.075 ms. This measures scheduler admission, not network transfer or complete texture readiness. Regression tests force occupied background lanes and demonstrate immediate demand admission, queued promotion, correct network priority, deduplication wiring and bounded cleanup. Original code lacked the demand reservation.

Actual Chromium gameplay tests used Balanced at 1280×720. GTA V reached its native world-ready signal in 29.5 seconds and rendered textured ground/buildings; GTA VI reached it in 19.2 seconds. Cache state and spawn differed from the public baseline; these are compatibility observations, not a before/after loading-time improvement. Local GTA V transferred roughly 0.96 GB at the captured checkpoint, so the desired 700 MB initial footprint remains unmet in this workload. Nearby-world readiness is not independently instrumented. Shader pending/skipped/validation counters were zero at the captured gameplay frames, while streaming was still active earlier.

## CPU draw preparation

Detailed real-game sampling found `stageBG` contributing about half of sampled inclusive `doDraw` time. Millions of fast binding records were reconstructed per phase, each with multiple arrays. `rememberStageBG` now reuses one record and its arrays per program/stage while refreshing constant versions, binding IDs, resource lifetime and dirty-proxy references. The slow path's existing allocation identity also removes the redundant `packCopy` lookup. It does not batch draws, remove geometry, change shaders or patch the native WASM.

Two stationary GTA VI A/B/A tests used the same running browser, Balanced 1280×720, held player input, a warm store and 30-second phases. The summary windows exclude the initial five seconds; counters include the full phase. CPU function timings sample GPU-query frames and include nested instrumentation overhead. They are inclusive and must not be added together.

| Trial / phase | FPS | Median / p95 frame ms | CPU preparation ms | Mean draws | Fast-record constructions |
|---|---:|---|---:|---:|---:|
| 1 / original A | 34.40 | 27.88 / 40.20 | 26.41 | 5,984 | 5,122,189 |
| 1 / reused B | 36.40 | 27.35 / 41.19 | 24.76 | 5,245 | 1 |
| 1 / original A2 | 40.09 | 23.77 / 36.53 | 21.71 | 4,639 | 3,934,248 |
| 2 / original A | 31.44 | 31.00 / 42.73 | 27.14 | 6,692 | 5,460,666 |
| 2 / reused B | 28.00 | 33.23 / 48.64 | 29.94 | 7,013 | 0 |
| 2 / original A2 | 28.75 | 32.04 / 49.52 | 24.01 | 5,592 | 3,875,723 |

Reused records replaced 4,830,972 and 4,878,853 constructions in the B phases. Mean sampled time per `stageBG` call fell approximately 7.5% and 10% versus each trial's surrounding original phases. These are verified allocation and function-level benefits. Whole-game FPS and p95 gains are **not established**: NPC/draw workloads changed substantially, and the second B phase had worse overall frame times. Stable 60 FPS remains unmet. The original implementation stays available through the existing profiler A/B/A control.

Tests compare actual descriptors, constant bytes and offsets, including null resources, version changes, reset, separate frame slots and destroyed buffers. Additional storage-texture tests verify that record reuse dirties the current proxy, preserves its view and releases the previous UAV references. Both original and reused paths produce the same tested output.

## Validation and remaining limits

All 25 Node regression suites and ancillary checks passed locally. Both maps reached real local gameplay. Public preview/promotion status and rollback commands are recorded in `CLOUDFLARE_DEPLOYMENT.md`. Original 63,201,802-byte WASM, memory64/thread requirements and 3 GiB initial shared memory are unchanged. Physical Dell and iPhone testing remains unavailable. No complete CPU/WebGL backend, live native resizing or progressive mip-upgrade pipeline was introduced. Radio playback stayed off during these game tests.

Run `python performance/run_checks.py` and `python performance/test_server.py`. To repeat CPU comparisons, launch `?mode=sandbox&map=env_test&quality=balanced&profile=1&detail=1&autoBenchmark=1&benchmarkSeconds=30` and save the report after all three phases. For streaming diagnostics include `deliveryAudit=1`; `io.packScheduling` reports admission counts and waits separately from network waits. Structured captures are in `performance/benchmark-summary.json`; raw captures and screenshots remain ignored.
