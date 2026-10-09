# Performance audit

## Scope and preservation

The user clarified that GTA V usually approaches 60 FPS, with spikes, and that the GTA VI map is the main concern. This audit prioritizes stability and the existing GTA VI (`env_test`) sandbox. No claim of achieving 60 FPS is made.

This checkout contains a compiled client snapshot, readable browser workers, translated WGSL shaders, and approximately 21.2 GB of assets. It does not contain the C++ engine source, engine build scripts, or reproducible WASM compiler configuration; the user confirmed they have no separate engine source folder. The available optimization surface is the browser integration and rendering command consumer. JavaScript syntax checks and execution of the actual browser game are possible; rebuilding the native engine/WASM is not.

At the start of the audit, the extracted checkout had no Git working tree or AGENTS.md. Before editing, the four served files were preserved in local `performance/original/` backups. Root-level worker copies are unserved and remain local. The assets, translated shaders, `game.js`, and `game.wasm` were not changed by the performance work. The local `performance/integrity-results.json` records SHA-256 verification of all 12,482 original files, substituting preserved originals for the four intentionally edited files. These backups, raw captures and local verification outputs are excluded from the public repository; [benchmark-summary.json](performance/benchmark-summary.json) publishes the aggregate measurements.

## Largest implemented correction: small geometry allocations

The stationary GTA VI scene exposed approximately 56,000–59,000 logical GPU buffers. Most were tiny vertex/index buffers, each backed by a dedicated WebGPU allocation. On this 16 GB machine the original game left only about 0.5 GB of RAM available, with active paging. Its browser GPU process held approximately 12 GB of private committed memory. Closing only the test game released approximately 17 GB of system commit and reduced that GPU process to approximately 1.3 GB. Other host/browser activity still left approximately 33 GB committed without the test game. These figures measure host commit, not resident VRAM.

The focused correction in `geometry-buffer-arena.js` places plain vertex/index buffers of at most 64 KB in 4 MB shared buffers. Buddy free lists avoid a linear search through thousands of allocations. Storage, indirect, structured and larger buffers remain dedicated. The engine's logical IDs, buffer sizes, contents, geometry, textures and graphics settings are preserved.

`createBuffer` and `uploadBuffer` in `wgpu_worker.js` assign and apply a physical offset. `doDraw` binds the original logical range, preserving bounds rather than exposing adjacent mesh data. `copyRegion`, `copyCounter` and `readback` apply offsets; copies sharing a physical buffer go through scratch storage because WebGPU prohibits same-buffer copies. `DESTROY_OBJECT` retires a range. `flush` records its zeroing after prior uses and reclaims it only after asynchronous queue completion. Empty chunks are explicitly destroyed. A rejected completion never makes uncertain data reusable.

The final repeat replaced 45,827 small allocations with 119 shared physical buffers; 10,856 physical buffers represented all 56,564 logical buffers, versus 56,670 dedicated buffers before. Logical geometry bytes remained approximately 1.201 GB in both paths. GPU-process private commit fell from 10.84 to 8.34 GiB in the repeat snapshots. Shared chunks add approximately 145 MB of explicit padding; actual resident VRAM is unavailable. The default browser path now uses this correction; `bufferArena=0` selects the preserved dedicated path.

Final fresh-start GTA VI runs measured 20.89 / 24.50 FPS before and 26.27 / 25.33 FPS after. Their p95 frame times were 93.64 / 73.97 ms before and 63.77 / 62.74 ms after. Camera directions and streaming workloads differed despite held input, so these observations do not isolate an exact FPS gain. The resource-count and host-commit reduction is repeatable with almost identical loaded logical resource bytes. PERFORMANCE_RESULTS.md retains all four runs and common elapsed-time comparisons. The 60 FPS/stall-free objective remains unmet.

Real WebGPU tests verify shared uploads, neighboring ranges, zeroed reuse after completion, and release of all empty chunks. The actual GTA VI world rendered with zero new validation errors or clamped draws in measured windows. Streaming continued and changed resource counts throughout the tests. Long traversal memory bounds remain unverified.

GTA V also rendered on the default shared path, with 22,564 ranges in 47 chunks and zero pending retired ranges at export. Its warm timed phase averaged 50.59 FPS, p95 30.17 ms, maximum 55.38 ms, and zero frames over 100 ms. This is a browser regression observation, not a paired speedup claim. Worker URLs are versioned to prevent an older cached loader/renderer from hiding the default change.

## Renderer CPU work and secondary experiment

The WebGPU command consumer in `mirror/playgta5.com/b/8b0b5899ed/wgpu_worker.js` is a significant CPU cost in the GTA VI scene. Observed gameplay windows contained thousands of draws and tens of milliseconds of active renderer CPU work, while sampled GPU render/compute passes took only a few milliseconds. GPU pass sums exclude copies and driver CPU work; submission spans include idle gaps and must not be treated as GPU busy time.

`stageBG`, `stageBindGroup`, and `packCopy` contain a confirmed redundant operation. `stageBindGroup` already obtains the packed uniform allocation, binds its GPU buffer, and records its dynamic offset. Immediately afterward, `stageBG` calls `packCopy` again solely to recover the allocation's ring-chunk ID. That second lookup scans the small pack cache and repeats constant-resource/version checks. No intervening asynchronous operation can change the bindings or frame slot.

The diagnostic candidate returns the chunk ID together with the binding result. `stageBG` can then use that exact ID without the second lookup. Binding identities, versions, first-constant offsets, resource invalidation, zero-filled unbound constants, frame-slot offsets, GPU lifetime waits, draw counts, and graphics settings are preserved. This candidate remains disabled for ordinary gameplay: the original → candidate → original run did not establish a reliable overall speedup.

The geometry tests use the original uniform-packing path throughout; they do not combine this unproven candidate with the allocation correction.

## Spike evidence and remaining causes

The existing engine and renderer diagnostics identified multiple kinds of stalls, rather than a single overloaded GPU:

- Startup exposure initialization waits on GPU staging readbacks. One GTA V startup window reported 1,584 ms of accumulated readback waits, including a 1,555 ms wait. Warm windows subsequently reported zero engine readback waits. Mapping duration alone includes queue delay and callback delivery, so it is not GPU execution time.
- GTA VI gameplay logs contained large texture/buffer uploads. Observed exploratory frames spent 35–60 ms processing tens of MB of upload commands. Original archives and textures have not been altered. Deciding how to schedule or prepare these uploads requires a repeatable traversal and an engine-aware dependency analysis.
- Engine freeze logs reported the main thread waiting on the audio update semaphore while the audio engine thread was busy. This identifies a blocking site, not the underlying audio computation or allocator responsible. That code is inside the supplied WASM binary.
- Several large frame gaps occurred while the JS renderer was idle, waiting for more engine commands. Optimizing a shader cannot resolve such a gap. Per-thread simulation, collision, animation, and audio CPU timings require the engine source or a native profiler with useful source mapping.
- Controlled frames also spent 60–110 ms awaiting the worker's MessageChannel turn, while sampled GPU passes were only approximately 2.5–3 ms. Other long frames accumulated 100–267 ms of active renderer wall time with little upload or compilation activity. Paging, garbage collection and OS scheduling can all contribute; those sites have not been falsely attributed to a single native function. The existing macrotask yield is retained because it delivers engine GPU fences and readback completions.
- GTA V's timed regression still created two pipelines and skipped 94 engine draws through the existing asynchronous first-use path. A startup reload also displayed a native cloth-buffer update warning; its underlying native cause was not traced. Device validation errors remained zero, and these observations are retained rather than hidden behind a blanket correctness claim.

Memory pressure is reduced, not eliminated. Corrected GTA VI phases still reached approximately 140–144 ms maximum frame times, with 2–5 frames exceeding 100 ms. The exact native causes of recurring audio/streaming stalls remain unresolved. They have not been replaced with stubs, disabled, or hidden behind lower quality settings.

## Experiments rejected

An experiment reused per-program binding records and their arrays to reduce temporary allocation counts. Exploratory results did not establish a repeatable frame-time improvement, so that implementation was removed. Record construction and invalidation retain the original behavior.

Global cache invalidation on state reset was investigated. Actual gameplay counters showed no such reset commands in the sampled workload, so changing reset semantics was not justified and was not retained. Sharing packed constants across programs was also investigated; sampled duplicate volume was small, so no cross-program packing rewrite was implemented.

Early GTA VI A/B runs had changing player positions and camera directions. The user confirmed playing in the benchmark tab; those runs are diagnostic observations, not speedup evidence. Later automatic runs hold input from startup, but their scene captures still reveal differing camera directions and draw counts; this remaining reproducibility limitation is explicit in the final results. The initial detailed profiler also had more overhead than the final default profiler. Results across those instrumentation versions must not be used to infer a game speedup.

## Instrumentation

Profiling is opt-in with `?profile=1`. It measures present intervals, active rendering-worker CPU wall time, explicit waits, render/compute passes, draws, submitted geometry, engine upload-command bytes, pipeline activity, readback completion wall time, memory capacity/accounting, and I/O counters. Detailed hot-function timing is additionally opt-in with `&detail=1`; default profiling avoids those per-call wrappers.

Timestamp queries are requested only when supported. One frame in 30 is sampled, using three bounded query/resolve/map slots. Resolution and mapping are asynchronous; the rendering command loop does not await the diagnostic readback. A busy slot is not reused until unmapping. Incomplete/overflowing samples are discarded. GPU sum and span are reported separately.

Frame history, report history, logs, and readback records are bounded. JSON exports include the retained raw frames, medians, nearest-rank p95, and the worst recent frames. Exports remain local. No new external telemetry is enabled.

The final geometry benchmark holds player input from startup, starts at least 70 seconds after world-ready, and discards its first five seconds. It leaves simulation, graphics, audio, and streaming running. It restores controls on completion, Escape cancellation, or timeout. The normal non-profiling game has no benchmark input lock. Profiler buttons do not feed mouse movement into the existing camera handler. Input diagnostics contain event counts, not typed text or key identities.

## Validation and limits

See PERFORMANCE_RESULTS.md for the final run, test commands, outcomes, and file list. Browser screenshots check the actual rendered world; synthetic binding tests check changed constants, samplers, binding ranges, frame slots, resets, and destruction. These tests do not constitute exhaustive native physics/NPC validation.

The next highest-impact investigation is a reproducible GTA VI walking/driving traversal, correlating long frames with upload volume, renderer CPU, engine idle waits and host paging. This is possible with the added browser profiler. Fixing the native audio semaphore, asset decompression, draw-list construction and upload preparation needs the absent engine source/build configuration or useful native debug symbols. The readable worker alone cannot safely reconstruct those engine systems.
