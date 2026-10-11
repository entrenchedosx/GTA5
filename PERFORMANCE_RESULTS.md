# Performance results

Measured on 2026-10-09. The published [benchmark summary](performance/benchmark-summary.json) contains aggregate phase statistics, workload counts, resource counts and sanitized host-memory snapshots. Raw JSON captures, PNGs, original-source backups and generated verification outputs mentioned below are retained locally and excluded from Git; they are not downloads supplied by this code repository.

## Environment

- Host: Windows 11 Home, build 26200; AMD Ryzen 5 7500F, 6 physical cores / 12 logical processors; approximately 15.5 GiB usable physical memory.
- GPU: NVIDIA GeForce RTX 5060; installed driver 32.0.16.1088, read locally. No private device IDs or serial numbers were collected.
- Browser: Microsoft Edge 154.0.0.0 / Chromium 154.0.0.0, as exposed by its user agent.
- Rendering API: WebGPU. Adapter vendor `nvidia`, architecture `blackwell`, `isFallbackAdapter: false`; hardware rendering is selected. Device/description strings are hidden. The browser did not expose the graphics backend or physical VRAM residency, so neither is inferred.
- Timestamp queries: supported and enabled only for opt-in profiling. Cross-origin isolation: true.
- Render resolution: fixed 1920 × 1080; device pixel ratio 1. Browser viewport approximately 1912 × 863 (recorded in each JSON export). `low=0`, default desktop quality and 60 FPS limiter; no resolution, population, LOD, shadow, or texture-quality reduction.
- Engine: supplied Emscripten/shared-memory WASM binary, 63,201,802 bytes. Initial WASM memory capacity 3 GiB; maximum declared capacity 16 GiB. Actual growth is recorded in the benchmark. Compiler flags and debug/release identity are unavailable; source/build files are absent. Existing `-fastscriptcore` was already enabled before this task.
- Server: bundled Python 3.12.14 and unchanged `serve_local.py`, bound to loopback port 8001 for isolated testing. The user's existing port-8000 server was not stopped.

## Repeatable scenario

GTA VI: sandbox on `map=env_test`, waterfront spawn, with player input held and the existing world fully rendering. Use:

`http://localhost:8001/?mode=sandbox&map=env_test&res=1920x1080&fixed=1&low=0&profile=1&bufferArena=1&benchmark=geometry&autoBenchmark=1&benchmarkSeconds=65&revision=17`

Use `bufferArena=0` for the dedicated-buffer baseline and `bufferArena=1` for shared geometry. Close the previous test game before each fresh start. With `autoBenchmark=1`, controls are held from startup, the timed phase begins at least 70 seconds after world-ready, and its first five seconds are excluded. Each phase lasts at least 65 seconds. A scene PNG is automatically saved at phase start, before the excluded five-second period. Simulation/audio/streaming continue. Escape cancels; completion and watchdogs restore controls. Save the JSON report after completion. The uniform-packing experiment remains disabled in both paths.

The full phase statistics are supplemented by the identical 80–130 second interval after world-ready in `performance/geometry-comparison.json`. Captured images show different camera directions between fresh starts despite player input being held; the underlying camera/world state is not frozen. Streaming and ambient simulation also vary. Draw/triangle counts are retained to disclose this limitation. The local timing improvements cannot establish a precise isolated FPS gain or a guarantee for every scene.

GTA V regression uses the same resolution/settings with `map=env_test` omitted. Do not compare different maps, player positions, camera angles, quality settings, or profiler-detail modes.

## Final GTA VI measurements

The duplicate uniform-packing candidate was tested original → candidate → original with player input held and zero input events. Results were 23.93 → 27.46 → 29.28 FPS; mean frame times 41.80 → 36.41 → 34.15 ms, median 40.56 → 34.86 → 32.03 ms, and p95 58.22 → 56.42 → 52.97 ms. Draw counts varied 7,336 → 6,319 → 5,381 per frame despite a stationary character. The candidate lies within the original-path range, so it is disabled for ordinary gameplay and no speedup is attributed to it. Raw evidence: `performance/gta6-controlled.json`.

The geometry-allocation correction has two fresh-start tests per path, with the original uniform-packing path held constant. These full phases discard their first five seconds:

| Path | FPS | Mean ms | Median ms | p95 ms | Renderer CPU mean ms | GPU pass mean ms | Draws/frame | Frames >100 ms |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Dedicated buffers, first | 20.89 | 47.88 | 41.00 | 93.64 | 41.96 | 2.41 | 5,357 | 51 |
| Dedicated buffers, repeat | 24.50 | 40.82 | 37.79 | 73.97 | 37.02 | 2.36 | 6,045 | 4 |
| Shared geometry, first | 26.27 | 38.06 | 35.56 | 63.77 | 34.70 | 2.79 | 6,601 | 5 |
| Shared geometry, repeat | 25.33 | 39.47 | 38.03 | 62.74 | 36.38 | 2.80 | 6,747 | 2 |

Input is held from startup and measured input-event counts are zero in all four phases. Resolution is fixed 1920 × 1080, `low=0`, with default profiling and no function wrappers. Submitted triangles/frame were 4.40 / 4.61 million for the dedicated runs and 6.25 / 6.13 million for the shared runs. Maxima were 440.99 / 148.00 ms before and 144.00 / 139.71 ms after. All four had zero newly compiled pipelines in their timed windows. Streaming still continued.

In the common 80–130 second window, dedicated FPS was 20.39 / 22.74 and p95 was 99.67 / 78.85 ms; shared FPS was 26.28 / 23.38 and p95 was 65.31 / 64.33 ms. Draw counts were 5,050 / 6,622 versus 6,487 / 7,212. Mean frame times were 49.05 / 43.97 versus 38.05 / 42.77 ms. This supports improved observed tail latency, with a much smaller average-frame benefit in the repeat pair. It does not isolate all scheduling, camera or streaming effects. No 60 FPS result or sixfold improvement is claimed.

Raw files: `performance/gta6-baseline-protected.json`, `gta6-baseline-protected-repeat.json`, `gta6-arena-protected.json`, `gta6-arena-protected-repeat.json`, and their generated summaries. Phase-start PNGs: `gta6-protected-scene.png`, `gta6-protected-repeat-scene.png`, `gta6-baseline-repeat-scene.png`. The first baseline predates automatic scene capture. `compare_geometry.py` retains the common-window draw, triangle, pass, upload and CPU/GPU evidence. Earlier captures with unprotected warm-up input remain diagnostic only and are superseded for timing comparisons.

The shared allocator is enabled by default for browser play. `bufferArena=0` selects the original dedicated path for comparison or rollback. Node's optional rendering backend remains dedicated and was not benchmarked.

## Memory evidence

Host snapshots in `performance/host-memory.jsonl` record aggregate commit, available RAM, paging and the largest browser-process memory figures. They omit process IDs, device IDs, user URLs and full command lines.

| Snapshot | GPU process private GiB | Largest renderer private GiB | System committed GiB | Available RAM MB |
|---|---:|---:|---:|---:|
| Dedicated, first protected | 11.04 | 5.72 | 46.71 | 492 |
| Shared, first protected | 8.66 | 5.62 | 43.83 | 658 |
| Shared, protected repeat | 8.34 | 5.91 | 43.81 | 333 |
| Dedicated, protected repeat | 10.84 | 5.96 | 46.13 | 380 |

The final dedicated repeat had 56,670 logical/physical GPU buffers; the shared repeat had 56,564 logical buffers represented by 10,856 physical buffers, approximately 81% fewer. Of those, 45,827 small ranges occupied 119 shared buffers. Logical buffer bytes were almost identical: 1,200,997,164 before and 1,201,070,860 after. Texture accounting was also similar: 2,868,423,676 versus 2,874,303,892 bytes. GPU-process private commit was about 2.5 GiB lower in this repeat comparison.

Shared chunks occupied 499,122,176 bytes for 354,611,116 logical bytes, adding approximately 145 MB of explicit padding. This tradeoff reduces allocation/driver commitment; it does not reduce logical geometry bytes or prove lower resident VRAM. The first protected shared run similarly used 119 chunks and 10,721 physical buffers. WASM capacity remained approximately 3.76 GB in both paths, with about 2 MB variation between repeats; allocator live bytes are unavailable. The existing uniform ring remained 50,331,648 bytes.

Available physical RAM remains low and instantaneous paging counters remain nonzero. The correction reduces browser/driver commitment; it does not prove all paging or stutters have disappeared. GPU-process private bytes include browser/driver state and are not per-tab resident VRAM. Resource exports scan once after timed phases (approximately 23–51 ms in these final exports); that export work is excluded from comparisons.

## GTA V browser regression

The default-enabled shared path was exercised without a `bufferArena` query override, at the same fixed 1920 × 1080 and `low=0`. The 35-second automatic phase started at least 70 seconds after world-ready and excluded its first five seconds:

| FPS | Mean ms | Median ms | p95 ms | Max ms | Renderer CPU mean ms | GPU pass mean ms | Frames >100 ms |
|---:|---:|---:|---:|---:|---:|---:|---:|
| 50.59 | 19.77 | 17.90 | 30.17 | 55.38 | 14.34 | 1.75 | 0 |

Evidence: `performance/gta5-arena-default.json` and `gta5-arena-default-scene.png`. Its resource export confirms the shared path: 29,671 logical buffers / 7,154 physical buffers, including 22,564 small ranges in 47 chunks; retired ranges were zero. WASM capacity stayed 3 GiB, textures approximately 1.106 GB, logical buffers approximately 362 MB. About 2,966 draws and 934,093 triangles were submitted per frame. Two pipeline creations and 94 skipped engine draws were measured across the phase; the existing asynchronous first-use pipeline path remains. WebGPU validation errors were zero and retained engine logs reported zero clamped draws. The rendered world and streaming were checked, but this is not exhaustive native physics/NPC testing.

The raw phase label in this export is `dedicated-buffers`, reflecting the earlier diagnostic module's default label when `bufferArena` was omitted. That label did not control allocation mode: the loader, worker and exported arena/physical-buffer counts verify shared allocation. The label logic is corrected and regression-tested; raw evidence is preserved without relabeling it. Runtime worker URLs also now carry a version so ordinary reloads fetch the updated workers. A subsequent normal, non-profiling launch verified the updated loader URL, default-on setting, and rendered world with no benchmark overlay or input hold. Earlier GTA V figures used different camera/workload and profiling detail and do not establish a before/after speedup for this map.

A GTA V startup reload displayed the native `ClothInstanc` warning that a buffer's GPU version was not updated. Its underlying native cause was not traced in this compiled-only checkout. It is recorded separately from the zero WebGPU validation-error count; no claim of exhaustive cloth simulation correctness is made.

## Earlier diagnostic observations

These observations helped identify bottlenecks but are not the final paired speedup benchmark:

| Scene/window | FPS | Mean frame ms | Median ms | p95 ms | Renderer CPU mean ms | GPU pass mean ms |
|---|---:|---:|---:|---:|---:|---:|
| GTA V initial loading/early steady window | 42.85 | 23.34 | 18.96 | 33.75 | 15.35 | 2.02 |
| GTA V warm 30 s window | 58.75 | 17.02 | 16.11 | 23.94 | 14.10 | 1.65 |
| GTA VI exploratory gameplay window | 25.12 | 39.81 | 36.58 | 59.35 | 35.20 | 2.37 |

The GTA V early window had a 1,340.54 ms maximum gap; its warm window still had a 184.32 ms gap. This agrees with the user's clarification that GTA V can approach 60 FPS while stuttering. The GTA VI observation submitted approximately 5,863 draws per frame.

Files: `performance/baseline-initial.json`, `performance/baseline-detailed.json`, `performance/gta6-startup.json`, and `performance/gta6-baseline.json`. Early GTA VI candidate experiments in `gta6-exploratory-cache.json`, `gta6-reuse-only.json`, and `gta6-combined-experiment.json` had camera/player/workload changes and cannot substantiate a speedup. The user confirmed controlling the test game. The allocation-reuse experiment was removed.

## Measurement limitations

- Frame times are intervals between actual renderer presents, not requestAnimationFrame callbacks. FPS is 1000 divided by mean frame time; median/p95 describe milliseconds per frame.
- CPU time measures active JS rendering-worker wall time, excluding its explicit awaits. It does not separately expose native simulation, physics, collision, NPC, animation, or audio CPU time. Asynchronous completion callbacks outside the command loop are not wholly represented in that CPU counter.
- GPU pass sum is sampled render/compute work. Copies, other processes, and driver CPU work are excluded. GPU span includes queue/submission gaps and is not GPU busy time. Asynchronous mapping/queue-completion wait durations are not GPU execution durations.
- Physical-buffer counts cover engine resources in the object table, including shared chunks. Some auxiliary uniform-ring, scratch and pooled buffers are accounted separately rather than included in that count.
- Draw/geometry counts cover engine draws. Indirect draw geometry, entity count, visibility/culling count, and all auxiliary full-screen draws cannot be reconstructed from the supplied protocol.
- Upload bytes describe engine upload commands. Constant-buffer shadows and GPU ring writes have different accounting; these are not physical GPU bandwidth measurements. Upload timing covers textures and large buffer uploads.
- WASM memory is capacity, not allocator live bytes. GPU texture/buffer figures are resource accounting, not resident VRAM; driver allocations, pipeline storage, proxies, and some pooled resources are not fully covered.
- I/O wait counters are cumulative per-request waits and can overlap; they must not be added directly to frame time. HTTP decompression is inside the browser, archive decompression inside WASM, and both lack separate timings.
- The final default profiler has no per-function wrappers. `detail=1` adds timer overhead to sampled frames. GPU instrumentation adds an asynchronous resolve-only submission every 30 frames and reporting every two seconds; performance claims must compare identical instrumentation. No assumption of zero profiling overhead is made.
- Short stationary tests do not establish memory bounds or spike-free operation for a long open-world traversal. Native compiler optimization, WASM SIMD/compiler threading flags, backend identity, and engine source-level timing remain unverified.

## Tests and preservation

- Original `verify_snapshot.py`: passed before edits (inventory, sampled SHA-256, WASM signature, isolation headers, ranges, plain/gzip asset batches). After intentional source edits it fails its immutable original-runtime SHA assertion, as expected. No assertions or inventories were weakened.
- `performance/verify_integrity.py`: passed; all 12,482 original files / 21,158,604,965 bytes verified using the preserved original versions for the four modified served files. Assets and WASM remain unchanged.
- `performance/test_renderer_cache.cjs`: passed binding/sampler changes, constant versions/ranges, unbinding, reset, frame-slot offsets, destruction, and equal consumed output between original/optimized paths. It also verifies fewer duplicate packing calls.
- `performance/test_profiler.cjs`: passed asynchronous mapping, bounded slot lifetime, overflow rejection, GPU pass sum vs span, median/p95/FPS calculations, and unsupported-timestamp fallback.
- `performance/test_input.cjs`: passed release of held input, stationary camera/movement protection, restoration of controls, and absence of the lock from ordinary gameplay.
- `performance/test_benchmark.cjs`: passed startup input hold, 70-second automatic start, cancellation, completion, and watchdog control restoration.
- `performance/test_geometry_arena.cjs`: passed eligibility, alignment, disjoint allocation, deferred zeroed reuse, duplicate-free rejection, 30,000 heterogeneous allocations, coalescing, and complete empty-chunk release.
- `performance/test_worker_buffers.cjs`: passed equal dedicated/shared upload and copy contents, neighboring ranges, same-buffer scratch copies, and dedicated storage/indirect paths; checks readback/counter offsets.
- `geometry-arena-test.html`: passed on the actual NVIDIA WebGPU device: uploaded data read back correctly, neighboring ranges survived clearing, freed ranges were zero before reuse, all empty chunks were released, and the validation error scope was empty.
- `performance/test_server.py`: passed served page/profiler/arena/test-page bytes, isolation headers, WASM range, and plain/gzip asset batches.
- `performance/check_syntax.py`: passed eight modified/added JavaScript files and inline scripts. Native C++/WASM rebuild is unavailable in this compiled-only snapshot.

Run JS regression files with the bundled Node executable (`node performance/test_*.cjs`, each file separately), and Python checks with `.\runtime\python.exe performance/check_syntax.py`, `performance/test_server.py`, and `performance/verify_integrity.py`. The last check reads the full original asset snapshot; run it outside timing windows. Open `/b/8b0b5899ed/geometry-arena-test.html` on the local server for the real-device lifetime test.

## Files

Modified served files: `mirror/playgta5.com/index.html`, and `mirror/playgta5.com/b/8b0b5899ed/{loader.js,io_worker.js,wgpu_worker.js}`.

Added runtime: `geometry-buffer-arena.js` in that build directory. Added diagnostics: `performance-profiler.js` and `performance-page.js`, imported only in profiling mode, and the independent `geometry-arena-test.html` test page. Added audit/results documents, original-source backups, browser JSON/PNG captures, regression tests, integrity results, and analysis/memory-sampling scripts under `performance/`. The pre-edit snapshot verification also refreshed its existing generated `snapshot/verification.json`.

## Fullscreen/windowed regression (2026-10-10)

Environment: the same local RTX 5060 desktop, Edge, WebGPU/NVIDIA Blackwell hardware adapter and timestamp queries; `low=0`, normal graphics, sandbox maps. Tests used `/b/8b0b5899ed/fullscreen-test.html`, which runs the actual browser client and alternates its iframe viewport between 1920x1080 and 1280x720 every two seconds. Render resolution, presented frame count, engine stop text, GPU errors and auxiliary texture accounting were observed. No native rebuild is possible from the supplied files.

Before: GTA VI initially rendered at 1912x816. The first size change triggered a main-thread WASM out-of-bounds trap and stopped presentation at frame 6,426. The last 30-second report before the stop showed 30.07 FPS, mean 33.26 ms, median 32.39 ms, p95 42.78 ms, renderer CPU mean 30.75 ms and GPU pass mean 2.78 ms. These statistics exclude the subsequent permanent stop; zero GPU validation errors were recorded. Direct page error text, not GPU workload, identifies the failed native resize path.

After: the verified `fullscreen-2` client kept engine rendering at 1920x1080 while fitting its presentation to the changing viewport. GTA VI completed eight viewport changes twice and remained active beyond frame 10,972 (about five minutes after loading). Five live auxiliary textures accounted for 27,051,008 bytes throughout the resize rounds; creation/destruction remained 5/0 because browser resizing no longer recreated engine targets. At the final observation, WASM capacity was 3,764,453,376 bytes and estimated parent texture storage 2,893,545,404 bytes; capacity stayed unchanged from the earlier post-test observation. Resident VRAM is not exposed.

The final GTA VI rolling window measured 32.92 FPS, mean 30.38 ms, median 30.17 ms, p95 42.08 ms, maximum 72.24 ms, renderer CPU mean 26.82 ms and GPU pass mean 2.54 ms. An earlier post-test window contained a 149 ms CPU-heavy spike. Camera/aspect and streaming workloads differ from the baseline, so this is a survival/regression check, not an isolated FPS speedup or a claim that all stutter is fixed. The default preserves desktop detail instead of rendering at a smaller window size.

Code checks passed: all existing regressions, new tests executing the actual worker's texture/proxy destruction through 40 resize batches, stable native-size/aspect/input checks, settled diagnostic-resize checks, nine JS/inline syntax checks, installer fixtures, and actual local-server bytes/headers/range/batch I/O checks. The original lifetime test failed before the fix with three leaked auxiliary textures per batch.

Limitations: Edge denied automated `requestFullscreen()` with `not granted`; browser viewport changes exercise the same resize handler, but OS/browser F11 entry/exit was not directly automated. A different window aspect adds borders to preserve proportions. Native render targets keep the startup display size when moving between monitors; reload or an explicit `res=WxH` selects a different resolution. The optional `liveResize=1` path can still trigger the compiled-engine fault. Ordinary native audio/simulation/streaming stalls are separate remaining work.

GTA V also completed eight alternating viewport changes without an engine stop or GPU validation errors, continuing from frame 5,862 before the changes to frame 9,281 at the later observation. Native targets remained 1920x1080, five live proxies stayed at 27,051,008 bytes (created/destroyed 5/0), and WASM capacity stayed at 3,221,225,472 bytes. Its later 30-second window averaged 43.65 FPS, mean 22.91 ms, median 16.75 ms and p95 44.12 ms, with renderer CPU mean 7.69 ms and GPU passes mean 1.78 ms. One 801 ms frame was almost entirely renderer idle (795 ms), demonstrating a remaining engine-side stall after the resize test. This correction does not claim to solve unrelated audio/simulation/streaming waits.

Browser version observed: Edge 154.0.0.0 on Windows. The adapter exposes NVIDIA/Blackwell, with `isFallbackAdapter=false`; model/device/description fields are hidden. Local ignored evidence is saved in `performance/fullscreen-baseline.json`, `fullscreen-gta6-fixed.json`, `fullscreen-gta5-fixed.json`, and `fullscreen-windowed-check.jpg`. Public measurements are the aggregates in this section; raw captures stay local.

## Startup verification (2026-10-11)

The actual browser client was tested in Edge on the same local desktop at an explicit 1920x1080 render resolution, `low=0`, GTA VI sandbox (`env_test`). Baseline warm-cache startup reached gameplay; a permanent hang was not reproduced. The old page did not count cached bytes, so data progress could appear stationary. No startup-time or FPS speedup is claimed from this change.

After correction, a warm-cache reload reached the world and visibly reported 500.6 MB of completed game-data reads with only 16.0 KB newly downloaded during shader preparation. A separate local-server origin also reached the world with the character, scene and HUD rendered; prior cache history for that origin was not measured. The full-screen HTML artwork and artificial percentage bar were absent. The prior 1.5-second clean-frame/60-second maximum shader-readiness policy is retained; removing the title does not skip engine loading or shader preparation.

GTA V also reached gameplay after opening the ordinary page with no preselected mode, clicking Sandbox Mode, and choosing GTA V Map through the retained controls. Cached-read status advanced during its audio/scene initialization, and the controls disappeared on world readiness.

A browser failure fixture deliberately returned HTTP 404 for `/data/manifest.json` while serving the actual current page/workers. Startup showed `Game data manifest returned HTTP 404. Run Download-Game.cmd and keep the local server open.` The loader did not start the native engine. The error remained visible rather than being replaced by later cleanup errors or a generic memory warning. No installed asset files were removed or changed for this test.

Checks: `performance/test_startup.cjs` covers cached reads and engine wake-up, final sub-MB progress, missing/invalid manifests, stalled requests and retry-backoff cancellation, OPFS handle cleanup, readiness ordering/duplicate notices, worker errors, removal of artwork, meaningful stall detection and retention of the first error. All code regressions, nine JS/inline syntax checks, installer fixtures and the actual server's range/batch/isolation checks passed. Local screenshots are ignored: `performance/startup-gta6.png` and `performance/startup-missing-data.png`.

Limitations: read bytes are cumulative successful engine reads and can include repeated reads; they are not unique downloaded bytes or an installation percentage. Browser cache size is inferred from indexed blocks, not resident memory. No exhaustive native-engine deadlock or memory benchmark was performed for this startup change. A complete asset installation is still required.

## Request-minimization baseline and pack build (2026-10-11)

Environment: Windows desktop/RTX 5060 reported by the user, Edge 155.0.0.0, actual compiled WASM/WebGPU game, normal graphics (`low=0`), explicit 1920x1080 render resolution, sandbox maps. Native release/debug/compiler flags remain unavailable. Public tests use `https://gta.ezgames.lol`; local delivery tests use a loopback server mapping generated packs without altering original data. Separate diagnostic OPFS directories start empty; existing normal data caches and IndexedDB saves are retained. The shader/engine HTTP cache was warm in the baseline. A completely cleared browser profile was not used.

The deterministic original boot plan can be reconstructed from the existing `bootset.json`/`bootset_low.json` and the original IO algorithm:

| Identical startup coverage | Original planned HTTP requests | Final pack downloads | Original decoded bytes | Final encoded pack bytes |
|---|---:|---:|---:|---:|
| Normal | 2,292 (2,228 ranges + 32 batch-cache probes + 32 POSTs) | 77 | 642,212,331 | 530,391,292 |
| Low | 2,146 (2,082 ranges + 32 probes + 32 POSTs) | 68 | 566,684,081 | 455,129,140 |

Normal startup coverage therefore uses 96.64% fewer asset HTTP requests; low uses 96.83% fewer. These are **source-replay counts of the recorded boot set**, excluding manifest/pointer/index, code/shaders and extra gameplay reads. They are not full browser-launch totals. The old normal plan required 7,808 R2 operations from its HEAD+GET/batch implementation, versus at most 77 cold R2 GETs for those packs before edge hits; this is a source/mock-verified operation count, not a per-session billing measurement.

The live original public baseline at 136,796 ms had issued 2,481 IO fetch attempts (2,417 data, 32 missing batch-cache probes, 32 POSTs), 32 expected 404s, and no IO browser-cache hits. Completed Resource Timing bodies accounted for 577,185,674 encoded bytes / 577,671,661 decoded bytes. IO had consumed 645,419,937 source bytes, with an active fetch still in progress and cumulative overlapping engine network waits of 128,937 ms. The world was not ready and status read “Loading audio metadata”. The tab closed at a user-message boundary before completion was captured; baseline startup is a lower bound **greater than 136.8 seconds**, not a completed timing. Raw local evidence: `performance/delivery-baseline.json`. The original thousands-request run was not repeated after the user emphasized the request allowance.

Startup packs alone did not remove subsequent map streaming. A local GTA VI cold-store run reached the world in 22.29 seconds and had 1,763 IO fetches by 63.40 seconds (802 data, 78 pack/index and 883 batch POSTs), zero failures, and 2,018,055,420 consumed source bytes. A local GTA V start reached the world in 30.10 seconds and had 411 IO fetches by 86.46 seconds, zero failures, and 924,404,203 source bytes. These local timings are not comparable with public-network latency. Evidence: `delivery-local-bootpacks.json`, `delivery-local-gta5-bootpacks.json`.

Normalized local HTTP reads from both starts produced 7,091 valid runs across 408 files, merged to 1,703 ranges / 1,548,268,305 unique requested bytes. One malformed concurrent server-log record was discarded; its missing coverage uses the normal range fallback. `cloudflare/demand-reads.json` contains the normalized plan, not raw telemetry. After removing startup-covered blocks and applying the existing block/gap policy, the normal profile adds 190 demand-only packs / 1,592,640,273 decoded bytes. Startup prefetch remains 77 packs; those extra packs are downloaded only if engine reads intersect them. Low startup remains 68 packs and retains normal range fallback for additional streaming.

The final generated index is `index-0367606b90b0036a064e281288259aa1542f1ae1bdbe0ec3185ddac292fd3e03.json`. It contains 267 normal-profile packs and 68 low-profile packs, sharing 11 pack files: 324 unique files overall. All 324 were decompressed, hashed and checked against their 8,368 source slices / 2,709,286,701 decoded bytes. Pack payloads are at most 8 MiB decoded; four downloads can run concurrently. This bounds payload allocations, not total browser/WASM/driver memory. Packing nearby ranges can read bytes ahead of immediate engine demand; it does not remove those original bytes or reduce world detail.

An exploratory local final cold-store run reached the GTA VI world in 22.96 seconds, with 796 IO fetches / zero failures by 97.49 seconds, 254 packs loaded and 2,476,223,740 source bytes. Its longer observation window and extra pack reads prevent an isolated percentage comparison with the 63-second intermediate run. A subsequent warm run reached the world in 12.70 seconds: its saved first-minute snapshot had five IO fetches, zero packs downloaded, one engine network miss, and 20,480 newly fetched source bytes. Its store occupied 2,645,028,092 bytes. Later previously unseen NPC/resource reads increased fetches; a warm cache does not guarantee zero future downloads.

That local warm run's final 30-second present window observed 41.60 FPS, mean 24.04 ms, median 23.46 ms, p95 29.45 ms, max 57.38 ms and zero frames over 100 ms across 1,249 frames. Renderer CPU mean was 21.46 ms; sampled GPU render/compute passes averaged 2.23 ms (42 samples). WASM capacity was 3,764,453,376 bytes, estimated textures 2,865,526,652 bytes and logical buffers 1,195,599,764 bytes. These are current-run observations, **not an FPS speedup benchmark**. CPU rendering remains the larger measured workload; native simulation is not separately exposed. Timestamp spans are not GPU busy time. Evidence: `delivery-local-warm.json`, `delivery-local-warm-profile.json`.

Code validation: all 12 JavaScript regression suites pass, including actual IO worker deduplication, zero startup prefetch of demand-only packs, missing/corrupt/truncated/oversized/stale pack handling, range-batch fallback and original byte equality. Actual Worker tests cover one R2 GET, streaming without whole-body buffering, byte ranges, suffixes, EOF/416, conditional/If-Range/HEAD, batch limits, legacy routes, cache policy, isolation and traversal rejection. Twelve JS/inline syntax checks, reproducible builder/coverage/source-preservation tests, corrupted-output rejection and Windows installer fixtures pass. The actual local server's WASM range and plain/gzip batch checks also pass. No native C++ compilation is claimed.

Measurement limits: IO counters are fetch attempts, including browser-cache hits and retries, rather than billed Worker invocations. Resource Timing completion can lag streaming; encoded body sizes for revalidated responses may include retained cache bytes. A fully cleared HTTP/browser profile, exhaustive physics/save/controller tests, a full-world traversal, resident GPU/process memory and per-test Cloudflare billing counts were not measured. Cumulative network/pack timings overlap across parallel work and must not be summed into frame time or called decompression CPU. Public cold/warm verification and deployment records are documented below and in CLOUDFLARE_DEPLOYMENT.md.

## Verified public delivery results and main promotion

The public canary and promoted main entry were exercised in Edge with actual WASM/WebGPU gameplay, GTA VI `env_test`, normal graphics and 1920x1080 rendering. The public diagnostic viewport was 1920x1034; native rendering stayed fixed at 1920x1080. IO figures below include the data manifest, delivery pointer, index, asset packs, original ranges and batches; they exclude HTML, runtime scripts and shader-worker fetches. Milestone snapshots use the most recent worker counters, typically within one second; pending requests are included in attempts while their bytes appear on completion.

| Public observation | World-ready time | IO fetch attempts at that observation | Download failures | Consumed original source bytes | IO resource-transfer estimate |
|---|---:|---:|---:|---:|---:|
| Original algorithm, partial baseline | Not ready after 136.8 s | 2,481 | 32 expected missing batch-cache probes | 645,419,937 | Not retained as a separate wire-size counter |
| Packs, initially empty diagnostic store | 240.07 s | 144 at world readiness | 0 | 1,145,498,876 | 1,030,996,703 bytes |
| First warm repeat, before explicit shader cache reuse | 27.60 s | 6 at world readiness | 0 | 4,096 | 395,108 bytes |
| Final warm canary with explicit immutable-cache reuse | 16.93 s | 3 at world readiness | 0 | 0 | 68,224 bytes |
| Promoted main entry, next warm start | 15.46 s | 5 at world readiness | 0 | 16,384 | 78,692 bytes |
| Promoted main entry, GTA V with partly warm shared store | 24.98 s | 44 at world readiness | 0 | 35,196,928 | 34,651,360 bytes |

The cold run reached gameplay using substantially fewer IO fetches than the already incomplete original baseline. **A cold startup-time improvement is not established:** the original completion time was not captured, and the final first load still took four minutes. Engine/shader HTTP-cache histories and camera/NPC workloads vary. The cold observation precedes the final cache-policy-only tweak; no second multi-GB cold run was made for that tweak. Its miss/fallback behavior is covered by loader tests, and the final version was tested through the public main page.

At the final canary's first-minute milestone there were four IO attempts, zero pack downloads, one grouped-range POST and 561,152 newly consumed source bytes; estimated resource transfers were 629,676 bytes. The next main-page first minute had five IO attempts, no pack downloads, 24,576 source bytes and a 78,992-byte transfer estimate. Previous warm observations continued to discover new resources later (693 attempts and 238,348,255 source bytes by 130 seconds in the first warm run). A warm cache saves already visited data; it does not eliminate downloads from new NPCs or regions.

The GTA V main-page run reused the store already populated by GTA VI, so it is a partly warm compatibility test rather than a GTA V cold benchmark. Its first minute issued 69 IO attempts (44 data, six pack/index, 19 batches), with five packs completed, zero failures, 53,688,320 newly consumed source bytes and a 49,172,090-byte resource-transfer estimate. At the later observation around 21 minutes, 705 IO attempts had completed or started with zero failures; new audio/NPC/resources continued streaming. Indexed storage grew from 2,737,168,092 to 2,865,196,764 bytes, while WASM capacity stayed at 3,221,225,472 bytes across those observations. This does not establish a storage bound for full-world exploration. Keyboard movement, the original scene and HUD were verified on the actual public main page.

The first warm shader-worker observation still reported 71,918,592 resource-transfer bytes, 21 network resources and one browser-cache hit. Explicit `force-cache` for verified hash-named shader packs changed the final repeat to 4,948 bytes, three network resources and 19 browser-cache hits. The following main-page start reported 600 bytes, two network resources and 20 hits. Shader fetch attempts remain 20; most now require no HTTP transfer. The main loader reported zero resource transfers and 88 cache hits on that following start. These are Resource Timing observations, not exact Cloudflare billing counters.

Public GET/range/suffix/batch/conditional byte comparisons and isolation headers passed on the real domain. The hash-named pack index returned `CF-Cache-Status: MISS` followed by `HIT`. Keyboard movement was exercised after GTA VI world readiness; the rendered scene and HUD remained present, and no IO pack/download failures were reported. The small delivery badge is opt-in; ordinary gameplay has no audit/profiler overlay. Raw JSON/screenshots remain ignored locally: `delivery-public-cold.json`, `delivery-public-warm.json`, `delivery-public-final-warm.json`, `delivery-main-gta6.json`, `delivery-main-gta5.json` and matching scene captures.

Production verification: Worker version `2140b2d0-721e-44dd-8c8f-a04ecbe83375`, deployment `4ad4791b-818f-474b-ab97-a6331d31a6a5`, at 100%; binding `ASSETS`, existing private bucket and both existing domains retained. Workers Cache is enabled. Only the main `site/index.html` object was replaced at promotion, after all dependencies and canary tests; a public GET matched its 35,206 staged bytes and SHA-256 `c93461eb13d648cb7583625ea77a45b51b24902055c0035fb42cf2add5f921bc`, with revalidation and isolation headers. Original game assets, WASM and shaders were not overwritten/re-uploaded. Deployment records and exact rollback commands are in CLOUDFLARE_DEPLOYMENT.md.

Files added: `cloudflare/{build_packs.py,prepare_site.py,publish.py,worker.js,wrangler.toml,requirements.txt,demand-reads.json}`, `CLOUDFLARE_DEPLOYMENT.md`, browser `delivery-{packs,audit,page}.js`, and `performance/test_{delivery,cloudflare,pack_build,shader_delivery}` (CJS/Python as appropriate). Updated: index, loader, IO/GPU workers, regression runner/syntax/startup harness, `.gitignore`, README, DEVELOPMENT and both performance reports. New/changed objects only were uploaded; credentials/account IDs, original data, generated packs and raw captures are excluded from Git.

Remaining priorities: reduce cold latency and pack read amplification, record longer GTA VI walking/driving workloads to pack currently uncached regions/NPC resources, and measure repeated runs over a fixed timed scene. Request reduction is verified; no paired FPS speedup, 60 FPS result, resident-memory reduction or exhaustive gameplay correctness is claimed for this delivery change.

## Graphics startup regression checks — 11 October 2026

The user's failing screenshot showed 114.7 MB consumed / 275.0 MB downloaded
before `no WebGPU adapter`. Those numbers are screenshot evidence, not a baseline
benchmark of that user's machine.

Local browser QA used the Codex Chromium browser on this desktop, localhost with
COOP/COEP/CORP, and the existing compiled engine plus edited browser scripts.
`python performance/serve_graphics_qa.py` supplies test pages at port 8877.

| Browser scenario | Result | Game-data/WASM HTTP requests |
|---|---|---:|
| `/qa/adapter.html`, all adapter preferences return null | Recovery card; workers stopped | 0 |
| `/qa/api.html`, API absent | Recovery card; no engine worker starts | 0 |
| `/qa/timeout.html`, adapter never resolves | Recovery card after 30-second deadline | 0 |
| `/qa/check.html`, preferred returns null, default uses the real GPU | Actual GPU device initialized successfully | 0 (preflight-only fixture) |

The fixture server recorded 14 requests including pages, worker scripts, favicon
and two diagnostic-list reads; none requested `/data/` or `game.wasm`.
Raw local evidence is ignored in `performance/graphics-browser-requests.json`.
The real local GTA VI page (`mode=sandbox&map=env_test&low=0&res=1280x720`)
reached gameplay and rendered the character, world and HUD. This test used local
assets and the existing persistent cache, avoiding public cold-download traffic.

All 14 JavaScript regression suites, 13 syntax checks, deterministic pack tests,
radio asset tests and Windows installer tests passed. Selection tests additionally
cover request exceptions, rejected devices, identical adapter deduplication,
unsupported BC textures, concurrent preflight/device reuse and device loss.
These are startup/correctness checks; no frame-time percentiles, FPS speedup or
memory reduction was measured for this change. Affected users still require a
working WebGPU implementation; no universal hardware compatibility is claimed.

The local GTA V page (`mode=sandbox&low=0&res=1280x720`) also reached gameplay.
The runtime/entry was subsequently published to the existing domain; the actual
public GTA VI page passed preflight and reached the first-frame stage without
reported browser errors. Final world readiness is recorded below after verification.
