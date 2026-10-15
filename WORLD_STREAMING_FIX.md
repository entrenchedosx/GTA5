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

### Small on-demand startup packs

The cold public candidate also exposed a separate amplification problem: a small shader or archive-header read waited for a complete, validated multi-megabyte world pack. `build_startup_packs.py` creates an optional overlay containing only recorded complete metadata files up to 1 MiB and recorded RPF headers up to 64 KiB. Every new byte was checked against both the local source and the retained original packs' encoded/decoded hashes. The 167 packs total 44,714,050 encoded bytes, 146,037,396 decoded bytes. Each is bounded to 1 MiB decoded, and none is eagerly prefetched.

`DeliveryPacks.forBlocks` chooses the smaller pack only when it covers the entire requested block span. Larger reads keep their original pack path, without fetching both just for partial overlap. Failure returns to original coverage. Existing manifests, data version, journals, original pack URLs, large world payloads and quality settings are unchanged. The optional overlay is carried in a new immutable bootstrap; the legacy delivery pointer remains valid. Metadata packs reduce time spent waiting for essential inputs, but this is not a progressive texture-mip replacement system.

Controlled real-game GTA VI tests used Balanced 1280×720, fresh OPFS namespaces, warm engine/shader compiler caches and a local server limiting each pack response to 4 MiB/s. HTTP pack reuse was disabled equally in both cases. This is desktop network emulation, not a physical school-PC test or a cold engine-download benchmark. Native world-ready checkpoints processed approximately equal read coverage:

| Asset-store cold case | Native world ready | Decoded bytes stored at checkpoint | Pack HTTP attempts | Engine reads |
|---|---:|---:|---:|---:|
| Original large catalogue | 192.07 s | 887,532,738 | 111 | 9,921 |
| Startup overlay | 95.31 s | 660,864,194 | 124 | 9,905 |
| Startup overlay repeat | 91.02 s | 660,864,194 | 124 | 9,912 |

The two overlay runs reached the native world-ready checkpoint about 50–53% sooner and stored about 25.5% fewer decoded bytes there, with zero pack failures or captured errors. IO-worker ResourceTiming body bytes fell from 797,497,459 to 579,358,773 in both overlay runs (about 27.4%); these include the bootstrap and worker resources, while engine and shader compiler caches were warm. Browser HTTP cache hits were zero for the measured IO resources. The original baseline was run once, so further hardware/network repetition is still useful. Ground and nearby structures were visible in the captured new-world image roughly 21 seconds after the signal; this does not establish exact time until every visible texture is ready. Camera/scene composition varied after startup, so these runs must not establish an FPS gain. Continued gameplay transfers remain separate from initial checkpoints.

Historical `io.fetchedBytes` was incorrectly derived from decoded store writes. IO measurement version 2 separates `storedDecodedBytes` from observed response-body `fetchedBytes`; browser-decoded range responses can still differ from wire bytes, so use ResourceTiming for encoded transfer comparisons. Pack download progress now reports incoming compressed chunks immediately through the existing 400 ms UI batching. Partial/corrupt bytes remain unavailable to the engine until size and both hashes validate. Tests verify progress before completion, no premature asset availability, and single-counted compressed bytes. No extra network calls are made for progress reporting.

Pack attempts rose by 13 at this checkpoint. These requests are delivered through Static Assets with `run_worker_first=false`; they are distinct from metered Worker invocations. Cloudflare documents [Static Assets requests as free and unlimited](https://developers.cloudflare.com/workers/static-assets/billing-and-limitations/). The versioned candidate passed 55 delivery checks: 53 Static Assets responses and two deliberate Worker endpoint checks. This is routing evidence, not an account-billing measurement. All original 327 unique pack bodies remain available, and no full 20 GB download is introduced.

### Slow-transfer recovery

Public preview diagnostics confirmed three aborted pack downloads while the old fixed 45-second transfer timer was in use. That timer could cancel a healthy response still receiving bytes, force original-range fallback and delay world availability. The replacement separates a 45-second header deadline, a 30-second body-inactivity deadline reset by each chunk, and a 180-second absolute transfer limit. Integrity verification and fallback remain intact. A bounded eight-entry diagnostic records failure reasons without asset contents. Virtual-clock tests exercise a healthy 60-second transfer, stalled headers/body, the absolute bound, progress accounting and timer cleanup. Public timing observations with different warmed caches are not a controlled speedup comparison.

All 27 Node regression suites and ancillary checks passed locally. Both maps reached real local gameplay. Public preview/promotion status and rollback commands are recorded in `CLOUDFLARE_DEPLOYMENT.md`. Original 63,201,802-byte WASM, memory64/thread requirements and 3 GiB initial shared memory are unchanged. Physical Dell and iPhone testing remains unavailable. No complete CPU/WebGL backend, live native resizing or progressive mip-upgrade pipeline was introduced. Radio playback stayed off during these game tests.

Run `python performance/run_checks.py` and `python performance/test_server.py`. To repeat CPU comparisons, launch `?mode=sandbox&map=env_test&quality=balanced&profile=1&detail=1&autoBenchmark=1&benchmarkSeconds=30` and save the report after all three phases. For streaming diagnostics include `deliveryAudit=1`; `io.packScheduling` reports admission counts and waits separately from network waits. Structured captures are in `performance/benchmark-summary.json`; raw captures and screenshots remain ignored.

### Navigation regression found during release checks

A rapid map switch reproduced `Cannot read properties of null (reading write)`: the old document broadcast an origin-wide `game-io` close message after a new worker opened its cache. Each document now creates a random session ID and passes it through the loader to an isolated shutdown channel. Both pagehide and startup-failure cleanup target only that session. The regression test executes real worker handlers for two sessions and confirms that legacy and old-session shutdowns leave the new store open, while its own shutdown releases it. No cache reset is needed.

Final release checks: original WASM SHA-256 `11ca8d2c04c5e843d18ff4aea4899d72c86973c6b031df334e67c446b2ae83e0` was rechecked and WABT 1.0.42 `wasm-validate --enable-threads` passed. Windows/Linux implementation CI run `38694266328` passed for `579a3cb`. Final runtime `a73ab54d112708dc82010fd15d1b0a5bf609e0bfc3689f0b72dc1e37852a9076` reached GTA VI world-ready in 42.72 seconds on the partially warmed public canary store, with zero pack failures and no captured warnings/errors. This is a compatibility observation, not a controlled cold-load or FPS comparison.

### Final public verification (2026-10-14)

Version `edcb8634-7f78-4589-a521-ae347a7c0e4c` is deployed at 100%. Public GTA V reached world-ready in 17.76 seconds and GTA VI in 13.86 seconds on existing warm stores; these are compatibility observations, not cold-load improvement measurements. Both rendered textured ground/nearby structures with zero pack failures and no captured warnings/errors. Radio playback remained off. The final runtime also completed a canary GTA VI-to-GTA V switch without the earlier null-store error (42.72 and 28.76 seconds on a different partially warmed origin).

The short public GTA VI steady observation contained 1,519 frames: 52.20 FPS, mean/median/p95 19.16/17.60/27.41 ms, CPU rendering preparation mean 16.30 ms, sampled GPU passes 1.215 ms, and zero frames over 100 ms in that window. GPU pass sum excludes gaps and is not complete frame time. This is not a matched before/after FPS comparison or proof of long-route stability. WASM capacity was 3,678,470,144 bytes, estimated texture allocation 2,638,223,444 bytes and buffers 1,242,730,388 bytes; these are tracked allocations, not measured physical residency. Low-memory compatibility remains constrained.

All 27 selected public response bodies and isolation headers match the frozen stage. Twenty-six report Static Assets; `io_worker.js` retains a cached HIT with an old Worker label. One exact-URL purge was accepted but the label persisted. A fresh query reports Static Assets with identical bytes. The strict public routing suite therefore remains incomplete; its assertions were not weakened. Preview passed all 55 checks, and Windows/Linux CI passed implementation `579a3cb` (run `38694266328`). No global purge or original-asset changes were made.

Changed implementation/test files across this release: `io_worker.js`, `wgpu_worker.js`, `loader.js`, `performance-profiler.js`, `index.html`, `delivery-packs.js`, `cloudflare/build_startup_packs.py`, `performance/run_checks.py`, priority/queued-streaming/renderer-cache/delivery tests, and new startup-builder, pack-timeout and IO-shutdown tests. Documentation: README, PERFORMANCE_AUDIT, PERFORMANCE_RESULTS, WORLD_STREAMING_FIX, CLOUDFLARE_DEPLOYMENT and benchmark-summary.json. Exact changes are in Git commits `f78f820`, `80ef8e3` and `579a3cb`. Remaining highest-impact work is CPU draw preparation under a matched longer gameplay route; progressive mip variants, native live resizing and a safe lower-memory rebuild remain unavailable.
