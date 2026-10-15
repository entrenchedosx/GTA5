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

## Fullscreen/windowed crash correction (2026-10-10)

The old `index.html::installInput` resize callback wrote new `winW/winH` values into the engine's shared input block after 150 ms. An actual Edge GTA VI (`env_test`) run stopped on the first requested viewport change in the regression harness: `THREAD ERROR (main): Uncaught RuntimeError: memory access out of bounds`. Presentation stopped at frame 6,426, still at 1912x816; the requested 1920x1080 target was never presented. GPU validation errors remained zero. The page's generic suggestion that the trap means insufficient memory is not a verified diagnosis. The internal C++ fault cannot be located/rebuilt without the missing native source.

Normal play now keeps native targets at a startup desktop resolution, with the existing scale/resolution overrides and memory caps. `fitGameCanvas` adjusts CSS presentation only, centered at the same aspect, and existing mouse mapping uses the displayed canvas rectangle. Fullscreen/windowed transitions therefore do not enter the crashing native resize path. This is a browser-side workaround for a confirmed compiled-engine defect, not a repair of native C++. `liveResize=1` retains that path only for diagnosis, with settled/visible-size checks; it remains unsafe.

A separate ownership defect in `wgpu_worker.js::DESTROY_OBJECT` destroyed parent textures but omitted `proxy_depth`, `proxy_stencil`, and `proxy_fdepth`. Cached bind groups retained these GPU textures beyond the parent lifetime. The real worker's lifecycle test failed before the correction with three surviving proxies; after correction 40 size-change batches reclaim all parents and proxies, submitting recorded uses before destruction without a GPU wait per texture. Profiling now accounts for live proxy counts/bytes and cumulative creation/destruction.

`present` configures its WebGPU canvas once; dimension setters already resize its drawing buffer, so another configure call is unnecessary ([WebGPU resize sample](https://webgpu.github.io/webgpu-samples/samples/resizeCanvas/)). Versioned loader/renderer URLs and local-server revalidation prevent stale editable code from hiding the fix.

The corrected GTA VI browser run completed two rounds of eight 1920x1080/1280x720 viewport changes, continued past 10,972 frames, and produced zero GPU validation errors or engine stops. Its engine resolution remained 1920x1080 and the five auxiliary textures stayed at 27,051,008 bytes with no resize-driven creations. Streaming continued; normal CPU/simulation/streaming spikes remain outside this specific fix. Direct automated fullscreen entry was denied by Edge; these tests exercise real iframe/browser resize events, not an OS F11 input test. See PERFORMANCE_RESULTS.md for measurements and limitations.

GTA V completed eight corresponding viewport changes with zero GPU errors/engine stops, stable 1920x1080 rendering, the same five proxies, and stable 3 GiB WASM capacity. A later 801 ms frame consisted almost entirely of renderer idle time; the engine's separate waits remain unresolved. These tests verify resize survival and resource accounting, not 60 FPS or complete removal of lag spikes.

## Startup status and loading artwork (2026-10-11)

Confirmed browser-side defects:

- `index.html` counted only `dl` network bytes, truncated them to integer MB, and ignored completed cached reads. A warm startup could therefore show no data movement despite reading hundreds of MB. Repeated engine log lines also reset its stall watchdog, including the same GPU-wait diagnostic.
- `io_worker.js::init` parsed the manifest without checking HTTP success, validation or a request deadline. Its rejected initialization promise was not handled. The loader started on the worker's script-loaded notice, so the engine could wait for a data service that had never initialized.
- `loader.js` did not report data-worker script errors to the page. Graphics initialization errors were logged but did not reach startup status. A failed OPFS journal replay could leave exclusive handles open.

Corrections: remove the full-screen HTML title artwork, logo, font, image requests, animation and artificial progress bar; preserve the engine's mode/map choice protocol in small controls over the canvas. Report completed reads, including cache hits, separately from downloads, with bytes/KB precision for small amounts and a trailing progress update. Wait for actual data readiness, validate the manifest, abort its fetch/body parsing and retry backoff after 30 seconds, and display the first actionable startup error. Release cache handles on replay failure. Repeated log diagnostics no longer count as startup progress. The compiled engine, assets and shader warm-up policy are unchanged.

Browser validation reached the GTA VI world after both a warm-cache reload and a start on a separate localhost origin. A warm run visibly reported `Game data read: 500.6 MB (downloaded 16.0 KB)` during shader preparation. An intentional manifest HTTP 404 displayed the missing-data/installer message instead of starting an engine that would wait indefinitely. The original permanent hang was not reproduced on the complete local installation; these fixes cover the confirmed counter and startup-error defects, not an unidentified native deadlock. See PERFORMANCE_RESULTS.md for checks and limits.

## Request-count audit and Cloudflare delivery (2026-10-11)

Verified production uses Worker `gta5-browser`, its `ASSETS` binding and private R2 bucket `gta5-browser`. The local original data tree contains 5,814 files / 20,944,285,552 bytes, rather than the estimated 30 GB. R2 initially contained 12,487 objects / 21,158,636,056 bytes, including site/runtime/shaders. The available browser source and compiled WASM remain the engine; no native rebuild was performed.

Confirmed causes, in priority order:

1. `io_worker.js::prefetch/ensureBlocks/fetchRangeRaw`: the normal recorded startup set issued 2,228 archive-range GETs, 32 unavailable batch-cache GETs and 32 batch POSTs. All data ranges used `no-store`. A live public baseline had already issued 2,481 IO fetch attempts after 136.8 seconds and was still loading audio metadata. Its 32 failed requests were the expected missing batch-cache objects, not missing game assets.
2. Map streaming remains substantial after boot. A local GTA VI run with startup packs but original on-demand ranges issued 1,763 IO fetches by 63.4 seconds; 883 were grouped range POSTs. Its HTTP trace contained thousands of reads from `env_test` region archives. Startup packing alone was insufficient for the user's request allowance.
3. The previous Worker performed HEAD followed by GET for ordinary objects, and per-range metadata checks in batches. It buffered whole batches and joined their bodies into another allocation. Repeated metadata operations and up to roughly two copies of a 64 MiB batch were avoidable.
4. The old batch-cache route rejected its own path. Gzip pack bodies also had HTTP encoding semantics inconsistent with the client's explicit decoder. Mutable HTML/browser-code paths used one-year immutable cache headers, allowing stale code. Edge caching cannot itself eliminate billed requests.

Applied corrections:

- `cloudflare/build_packs.py::planned_runs/build/subtract_runs` creates deterministic, hash-named gzip envelopes of original slices, capped at 8 MiB decoded. The original normal startup coverage is exactly retained in 77 downloads; low graphics uses 68. File IDs, offsets, lengths, source version/fingerprint and encoded/decoded hashes are indexed. Original asset files are only read.
- `cloudflare/demand-reads.json` contains normalized ranges observed in actual local GTA V and GTA VI scenes. The normal profile adds 190 demand-only packs, excluded from startup prefetch. Unrecorded world regions still use original asset ranges. This is a measured footprint, not an exhaustive open-world pack catalogue.
- `delivery-packs.js::load/download/forBlocks` validates bounded pointers/indexes, hashes, sizes, block alignment and overlap before bytes enter the cache. `io_worker.js::startPack/prefetchPacks/ensureBlocks` shares in-flight pack/block work, prioritizes demand over prefetch, limits downloads to four, and reuses the existing OPFS cache/journal and native file protocol. Failed packs fall back to individual original reads.
- `io_worker.js::queueRange/flushRanges` joins simultaneous uncached ranges into at most 16 runs/4 MiB per HTTP request with a one-millisecond scheduling window. The streaming response is demultiplexed into original buffers/blocks. Single runs remain GETs; batch failure retries original ranges. Batching saves HTTP requests, while R2 still reads each individual unbundled run.
- `cloudflare/worker.js::serveObject/handleBatch` streams ordinary GETs with one R2 read, supports conditional/suffix/open/EOF ranges, streams batches with backpressure, preserves legacy batch lengths, and skips metadata HEAD for exact manifest-bounded batches. Routing is read-only; the R2 bucket remains private.
- `cloudflare/prepare_site.py` stages browser scripts, including an unchanged compiled `game.js`, under an aggregate hash. Entry HTML/pointers revalidate; truly hash-named runtime, packs and existing verified shader packs are immutable. Original WASM/shader/data objects are retained. Wrangler enables Workers Cache; its deployed setting was verified through the API. [Cached Worker requests still count toward usage](https://developers.cloudflare.com/workers/cache/).
- `delivery-audit.js` and `delivery-page.js` are opt-in, local diagnostics. They distinguish fetch attempts, Resource Timing cache hits/bytes, engine waits, store/WASM capacity and pack failures. No telemetry or per-read logging requests are added to ordinary gameplay.
- A public reload still transferred the same shader packs despite their verified immutable names. `wgpu_worker.js::packBytes` now explicitly uses the browser cache for hashed names; mutable fallback names retain ordinary behavior. Hash-validated data packs/indexes do likewise. The final public repeat recorded 19 shader-worker cache hits and about 4.9 KB of resource transfers, versus one hit and about 71.9 MB previously. Fetch attempts remain counted even when they cause no network request.

All 324 unique final pack files were decompressed and hashed, and their 8,368 original slices / 2,709,286,701 decoded bytes compared directly with the source files. All 18 original shader-pack SHA-1 filename prefixes and R2 MD5/size matches were verified. Native asset decoding, resolution, LOD, simulation, input and save formats are unchanged. Existing JavaScript regressions plus pack/fallback/Worker response and deterministic-builder checks pass; real browser results and production verification are recorded in PERFORMANCE_RESULTS.md.

Remaining work: collect longer walking/driving footprints for regions outside these two starts, assess pack read amplification, and compare full public loads over repeated identical runs. Preserve the request-saving OPFS cache; browsers without it retain the original memory-cache loader and can need many more requests. Native simulation/rendering CPU and memory pressure remain separate bottlenecks. These delivery changes do not establish a frame-rate speedup or 60 FPS.

## Graphics startup failure — 11 October 2026

User evidence: `Graphics startup failed: no WebGPU adapter` after 114.7 MB of
game reads / 275.0 MB downloaded. That message proves adapter selection returned
null; it does not establish the affected user's browser, driver or hardware cause.

Confirmed client defects: `wgpu_worker.js::initDevice` only tried the
high-performance preference; `loader.js` opened the IO worker and imported the
engine based on script readiness rather than device readiness. Device creation
occurred after substantial loading. Its failure only broadcast a status error;
startup/download workers remained active. `index.html` accepted subsequent
world/download notifications after an error, potentially hiding the failure.

Corrections:

- `wgpu_worker.js::requestGameDevice/initDevice/createDevice` tries preferred,
  default and low-power adapter/device pairs, retains the original supported
  feature/limit requests, verifies required BC texture support, and creates the
  device exactly once. Preflight and native startup use the same GPU worker/device.
  Early validation errors guard the as-yet-uninitialized command ring.
- `loader.js` checks that actual device before creating the IO worker or importing
  the WASM engine. Failure, worker errors and a 30-second deadline terminate
  pre-start workers. A late graphics-ready event cannot resume failed startup.
- `index.html` checks secure context, isolation, shared memory and basic graphics
  APIs before starting workers. Graphics failures/device loss stop the worker tree
  and timer, hide startup controls, retain cached assets/saves, and show accessible
  recovery instructions plus a reload button. Failure is terminal for that page.
- `test_graphics_startup.cjs` exercises the actual selection/initialization code;
  startup regressions cover gating, failure cleanup and late notifications.
  `serve_graphics_qa.py` provides local-only fixtures for browser verification;
  none of its mocked adapter code is included in the deployed runtime.

Browser verification: forced high-performance null returned a working real default
device; missing API, null adapters and hung selection displayed recovery controls
with zero asset/WASM requests. Actual GTA VI gameplay rendered at 1280×720,
normal profile after preflight. See results for the second map and rollout.

Limitation: code cannot enable a disabled/blocklisted WebGPU implementation or
add missing driver/hardware/BC support. This renderer has no WebGL backend or
texture transcoder. The fallback helps when the preferred selection is unavailable;
the affected users' original environments were not available to reproduce.
No FPS improvement is claimed for this startup correction.

## Remaining daily quota pressure — Static Assets

Confirmed architecture issue: all pack/script/shader network requests enter the
Worker even though these files are static. Packing reduces HTTP count; edge
cache reuse alone does not establish that requests are outside the Worker quota.

`cloudflare/build_static.py` explicitly selects existing public client paths,
verifies fingerprints/data versions and file-size/count limits, and copies the
unchanged assets into an ignored static stage with generated startup metadata.
`wrangler.toml` sets `run_worker_first =
false`, `not_found_handling = "none"` and a distinct `STATIC` binding, preserving
the private `ASSETS` R2 binding. `_headers` retains browser isolation and applies
immutable cache policy only to the verified hash-addressed runtime, packs and
logos (all staged shader pack names also have verified hashes). Original ranges,
WASM and audio fall through to the existing handler. The bucket remains private.

`verify_static.py` compares bodies, conditional responses, headers and routing;
`test_static_build.py` covers allowlisting, original bytes, excluded originals/
credentials/saves/audio, corruption, runtime hashes, oversized files and stage
preservation. Local QA passed 365 protocol checks. Static Range compatibility
was insufficient for audio, so those files were excluded before deployment.
Generated packs and shader packs are fetched whole by their existing readers.

Remaining quota cost: previously unvisited original resources still use dynamic
range batches; WASM and selected audio use the Worker. Longer fixed walking/
driving captures and additional demand-only packs remain the next highest-value
HTTP-count task. The existing OPFS cache/manifest namespace is unchanged.

## Duplicate startup metadata — fixed

`io_worker.js::init` previously read manifest, pointer and index on every launch.
`delivery-packs.js::loadBootstrap/fromIndex` now consumes one immutable, bounded,
hash-validated manifest/index produced by `build_static.py`. `index.html` passes
the frozen URL through `loader.js`; malformed/unavailable bootstrap data retains
the original metadata fallback. Cold actual-worker QA measured three metadata
HTTP requests becoming one; warm QA measured zero HTTP with one cached fetch call.

The first full browser test revealed an additional metadata read in unchanged compiled
`game.js::wasm_httpfs_manifest_js`: a synchronous XHR even though the IO worker
had already loaded the same manifest. `io_worker.js` now transfers the validated
UTF-8 manifest at readiness; `loader.js` seeds that function's existing byte cache
before import. The native bridge releases the bytes after copying into WASM.
Actual-bridge regression tests prove identical bytes, terminator and no XHR;
the second full GTA VI test reached gameplay with zero metadata HTTP requests.
No original file IDs, data version, cache namespace, saves or asset bytes changed.

## Previous software-adapter attempt — insufficient for CPU gameplay

`wgpu_worker.js::requestGameDevice` now requests the standard software fallback
after hardware failure. `?renderer=cpu` selects only that path via the page and
loader; known hardware adapters cannot masquerade as a successful CPU test.
The same BC format and device requirements apply. Failure remains terminal and
occurs before asset loading. `serve_cpu_qa.py` probes the real adapter/device;
the mock cases in `test_graphics_startup.cjs` prove dispatch and error handling.

Both actual desktop browser probes returned null software adapters. These were
availability tests, not CPU gameplay benchmarks. A standard fallback request
cannot create an implementation the browser does not expose. The later genuine
CPU subset below replaces the explicit CPU option's adapter request; full game
support remains incomplete. No browser security flags, driver changes or hardware
acceleration settings were changed.

## Further GTA V streaming coverage — measured and appended

The actual public GTA V audit continued making original-data requests after world
readiness (17 individual reads / 49 batches at readiness, 81 / 119 at one minute).
A local actual-engine 75-second capture found 111 normalized uncovered runs in
49 archives, totaling 19,927,040 bytes. The capture fixture enables only the
existing read recorder after normal pack/cache initialization; it does not change
the release engine or omit prefetch. Footprint records contain asset names/ranges,
not user files or asset contents.

`cloudflare/demand-reads.json::extensions` and `build_packs.py::build` append those
missing spans in three demand-only packs. Each extension is version-checked and
subtracts earlier coverage; previous phases flush before the extension, preserving
every old pack URL/body. Low graphics and startup counts stay unchanged. All new
decoded slices matched original source files, and the recorded normalized footprint
now has no missing runs. Regression tests enforce preservation and no overlap.
The actual fresh-cache browser build reached gameplay without pack failures.

The three new pack downloads use Static Assets; their whole bodies were verified
in the actual public browser. Original unrecorded ranges and streaming hints remain
the largest metered-read category. Whole-session request counts cannot be compared
as an isolated speedup: cache state, NPC resources and capture duration differ.

## Genuine CPU subset and complete-contract gap

The new audit corrects the assumption that missing C++ source alone blocks all
CPU porting. `game.js::wgpu_start_worker` and `wgpu_worker.js::runCommands` expose
the actual geometry, constants, texture uploads, states and completion protocol.
They are sufficient to attempt an independent backend, but a complete software
implementation of that contract is missing. A shader interpreter alone does not
provide the required raster/resource/query operations.

The catalogue contains 4,808 translated programs, including 29 compute shaders.
The actual GTA V capture used 38 opcode kinds, 207 shader pairs, multiple BC
formats including BC7, and three active compute programs with 16×16 workgroups
and barriers. The prototype's two shader pairs account for only about 0.96% of
that first capture's draw attempts. A later per-page-token capture confirms the
same broad requirements without mixing sessions. Source locations and counts are
in [CPU_RENDERER_STATUS.md](CPU_RENDERER_STATUS.md).

`wgsl_reflect@1.6.0` parsed 4,805 files, but had three entity-selection parser
failures, literal-suffix binding/input integration issues, slow interpreted
pixel execution and a reproduced workgroup-barrier correctness failure (1
instead of 3). The active game compute shaders contain these barriers; sequential
dispatch is not a safe drop-in. Native Dawn/SwiftShader also cannot be installed
as a browser software device merely by wrapping the existing worker.

Implemented: `cpu-rasterizer.js` performs clipping, raster coverage, depth,
perspective interpolation, RGBA8 nearest sampling and alpha blending for two
original unlit shader pairs. Their ports are independently checked by executing
the exact WGSL, with immutable source/vendor hashes. `cpu-check-worker.js` renders
an interactive synthetic fixture, using reusable bounded buffers and CPU pixel
presentation. Actual Chromium/Edge contexts lacking WebGPU rendered it and
responded to camera controls. The fixture is explicitly not GTA gameplay.

`loader.js` selects `cpu_worker.js` for explicit CPU mode, or once after failed
GPU initialization. The old GPU worker is stopped before replacement; late events
are ignored. The CPU backend reports its actual incomplete contract, and the
loader prevents IO/WASM from starting without full compatibility. Existing GPU
readiness/device reuse, manifests, version, caches and native gameplay are kept.

Remaining: native ring/resource consumer, full required shaders/animation,
correct workgroup execution, BC texture decoding, MRT/deferred targets,
depth/stencil, indirect draws, queries and readbacks. CPU GTA world loading,
simulation/input/vehicles/HUD/audio and game frame times are not verified. The
next concrete milestone is software replay of a captured real game frame with
those semantics, then live native-engine integration. Obtaining the exact native
backend/render-graph/build sources is an alternative route to a simpler CPU mode.

## Renderer lifetime during navigation

Origin-wide diagnostics received lingering prior-game messages after immediate
navigation; worker state/resource lifetime could outlast the visible page.
An attempted owner termination on pagehide was not retained after one same-tab
GTA V→VI initialization stalled before any native graphics commands arrived.
Fresh VI and a later VI→V switch succeeded, so the cause was not isolated.
Original native cleanup remains intact. The diagnostic closes its own worker
and reloads on back/forward restore; local actual-game captures attach per-page
tokens. Native lifetime/initialization remains an open investigation; no
memory/FPS improvement is claimed without a dedicated benchmark.
# 13 October 2026: engine, low-memory loading and mobile audit

See `WASM_MOBILE_AUDIT.md` for official WABT versions, verified original module
hash, structural findings and physical-device support limits. Native engine,
shader bytes and original assets remain unchanged.

Confirmed host problems and focused changes:

- `io_worker.js::streamRanges`: the user's new idle-body timer did not bound
  waiting for batched response headers. A blackholed POST could still stop all
  reads in that group forever. Both batch paths now use bounded header waits;
  range batches recover through bounded individual requests.
- `stallGuardedRead`: cancellation was attempted before rejecting the timeout.
  A throwing cancellation could leave the caller pending. Reject first and
  contain cancellation failure; actual-worker regression covers this case.
- `startPack`: publish cache offsets only after all pack writes succeed, keeping
  the user's numeric short-write checks and short-read repair logic.
- `init/getMemBlock/readWithoutStore`: OPFS absence previously disabled packs.
  A bounded RAM pack path retains the 48 MiB block cache, verified pack hashes,
  shared in-flight downloads and original-byte fallback. Uncovered areas retain
  256 KiB reads; overlapping reads share those downloads. An intermediate 4 KiB
  fallback was rejected during browser testing and was not deployed.
- `index.html/loader.js`: low/touch devices default to demand-only streaming,
  skipping eager boot packs and native read-ahead hints. Explicit `prefetch=1`
  restores eager loading for controlled comparisons. Files are still fetched
  when the engine requests them; no complete-library preload is introduced.
- Safari often omits `deviceMemory`; touch-only devices previously fell through
  to desktop sizing, multiplying targets by Retina pixel ratio. Conservative
  mobile defaults now select the existing low-quality profile, 640×360 and
  native 30 FPS pacing. Desktop settings remain unchanged.
- The native shared-memory64/BigInt ABI is executed in a tiny startup probe,
  including the glue's memory constructor. Unsupported browsers get a specific
  error before workers or asset loading. The user's recalled BigInt error has
  not been reproduced on the actual phone, so its exact cause remains unverified.
- Pointer-lock APIs may return void or be absent; the old direct `.catch()`
  assumption could throw. Calls now handle both return forms and failures.
  Touch controls use the existing shared input block and release input on
  cancellation/backgrounding. GPU errors remain visible if CPU fallback fails.

The social audit checks 21 served UI source files; none contained social URLs.
A separate original-WASM HTTP social URL scan also found zero. No social
elements were removed merely to make a report say they were removed.

Remaining major limitations: iPhone A13 lacks the renderer's native BC texture
path; shared memory64 plus a 3 GiB initial heap still needs device validation or
a compatible native rebuild. Full WebGL/CPU gameplay backends are absent.
Real-device long sessions, physics/audio pause-resume QA and low-end hardware
FPS remain unverified. Desktop CPU render preparation is substantially heavier
than GPU pass time in the tested scenes; no native binary speedup is claimed.


## Low-end profiles and streaming coverage

See [the low-end update](LOW_END_OPTIMISATION.md) for confirmed request amplification, fixes, real launch resolutions, frame-time measurements, WABT findings and explicit physical-device limitations. Original native WASM and assets are unchanged; live resolution changes and iPhone/CPU-only gameplay are not established.
# 2026-10-14 follow-up: delayed world and draw-binding preparation

See `WORLD_STREAMING_FIX.md` for the confirmed pack-priority propagation defect, reserved demand lane, actual gameplay checks, two renderer A/B/A trials and their limitations. Missing terrain/buildings that eventually appear are a streaming/readiness symptom; the exact submitted spawn/cache state was not reproduced. No universal first-frame world-completion or repeatable overall FPS gain is claimed. The update preserves original game assets and native WASM.

The startup overlay follow-up in `WORLD_STREAMING_FIX.md` reached the native GTA VI world-ready milestone in 95.31 and 91.02 seconds versus 192.07 seconds in the controlled original-catalogue run, using 27.4% fewer IO encoded body bytes. These were fresh asset stores with warm engine/compiler caches and 4 MiB/s per pack connection, not physical low-end hardware. The update also fixes a fixed 45-second pack timeout that aborted progressing downloads, and separates received-body progress from decoded store bytes. All 26 Node suites and ancillary checks passed locally; stable 60 FPS and full nearby-texture completion remain unestablished.
