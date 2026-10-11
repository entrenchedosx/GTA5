# Development

## Repository layout

| Location | Purpose |
|---|---|
| `mirror/playgta5.com/index.html` | Served page, startup settings, input and optional benchmark UI |
| `mirror/playgta5.com/b/8b0b5899ed/loader.js` | Engine worker startup and browser integration |
| `.../game.js`, `.../game.wasm`, `.../audio-worklet.js` | Supplied compiled engine, Emscripten glue and audio worklet |
| `.../wgpu_worker.js`, `.../geometry-buffer-arena.js` | WebGPU command consumer and shared small-mesh allocator |
| `.../io_worker.js` | Asset requests, cache and streaming integration |
| `.../shaders/` | Translated WGSL, shader metadata, recipes and packs |
| `.../performance-profiler.js`, `.../performance-page.js` | Optional frame/CPU/GPU diagnostics and report controls |
| `serve_local.py` | Loopback HTTP server with isolation headers, ranges and batch reads |
| `Download-Game.*`, `download-manifest.json`, `file-inventory.json` | External data/runtime installation and original archive checksums |
| `performance/` | Regression tests, analysis utilities and sanitized benchmark summary |
| `snapshot/` and investigation documents | Selected original snapshot manifests and historical static evidence |

Only `mirror/playgta5.com` is served. Old root-level copies of the page/workers, local original-source backups, runtime binaries, downloaded game data, screenshots and raw profiling records are excluded from Git; existing local copies are preserved.

The native engine's C++ source, build scripts and compiler flags are absent. Native simulation, collision, NPC, audio and decompression internals cannot be rebuilt from this checkout. Do not substitute an unrelated engine or claim a native rebuild from JavaScript checks.

## Code checks

Use Node.js and Python 3.11 or newer:

```sh
python performance/run_checks.py
```

Set `NODE_BINARY` to an executable path if Node is outside `PATH`. The checks cover allocator lifetime/coalescing, actual worker buffer operations, bindings, profiling, input protection, benchmark cleanup and JavaScript syntax. They require no game-data download.

On Windows, the suite also tests the actual PowerShell installer with tiny local archives: preservation of fork code, asset verification, resumability, conflict rejection, safe archive paths, and custom destinations. GitHub Actions runs the suite on Windows and Linux; it does not run the native game or a physical GPU benchmark.

With all external assets installed, also run:

```sh
python performance/test_server.py
python verify_game.py
```

The server check exercises actual served bytes, isolation headers, WASM ranges and plain/gzip asset batches. Asset verification checks original downloaded data/runtime hashes; repository code intentionally differs from that release and is outside that inventory's verification scope.

## Actual browser validation

Start `python serve_local.py --open`. Open `/b/8b0b5899ed/geometry-arena-test.html` for real-device shared-buffer upload, readback, zeroed reuse and reclamation checks. Then test both maps in the actual browser. CPU checks do not replace visual/gameplay validation.

Profiling uses `profile=1`; `detail=1` additionally enables sampled hot-function timers. GPU pass timestamps are sampled and read asynchronously. Controls are held from startup only for `profile=1&autoBenchmark=1`; Escape cancels, and completion/watchdogs restore controls. Normal gameplay has no benchmark input hold.

The allocation fallback is `bufferArena=0`. Ordinary reloads use versioned loader/renderer URLs so earlier cached workers do not hide the current implementation.

The page no longer loads title artwork, fonts or animated loading panels. A small status/mode control group leaves immediately on the existing world-ready event. `io_worker.js` publishes successful engine read bytes as well as network bytes, including the final small transfer. `loader.js` waits for data initialization, rather than script loading alone, before starting the engine. Manifest fetching/parsing has a 30-second deadline; failures are reported to the page. Cache-open failures release both access handles and retain the existing memory-cache fallback. `performance/test_startup.cjs` exercises these cases and checks that diagnostic logs cannot mask a startup stall or overwrite the first error.

Fullscreen and window resizing fit a centered canvas while keeping the native render targets at their startup desktop resolution. This avoids a reproduced GTA VI WASM out-of-bounds crash in the native live-resize path. `res=WxH` still selects a render resolution; `scale` and the existing memory caps still apply. A different window aspect produces borders rather than stretching. Moving to a larger monitor keeps the startup render resolution until reload.

Open `/b/8b0b5899ed/fullscreen-test.html` to load either real map and run eight alternating 1920x1080/1280x720 iframe viewport changes. It also has fullscreen/windowed buttons and records frame progress, render dimensions, errors and texture accounting. The browser may deny automated fullscreen entry; viewport changes exercise the same page resize path. `liveResize=1` retains the unsafe native resize path for diagnosis only; ordinary play does not use it. The GPU worker explicitly destroys auxiliary depth/stencil textures with their parent. Editable HTML/JS responses from the local server revalidate their cache.

## Evidence and historical utilities

The published `performance/benchmark-summary.json` retains measured phase statistics, workload counts, limitations and sanitized memory snapshots. Full JSON captures, scene PNGs and original-source backups remain local and are ignored. The performance reports distinguish observations from an isolated speedup claim.

`verify_snapshot.py` and `performance/verify_integrity.py` concern the original snapshot, not the current fork. The former detects intentional runtime edits; the latter additionally requires local `performance/original/` backups. Neither is a clean-clone code check. `mirror_site.py`, `public_discovery.py`, `inspect_assets.py`, `engine_static_evidence.py`, `append_investigation.py`, `bundle_runtime.py` and `build_portable_zip.py` are historical snapshot/research/package tools. They depend on original collection files or a complete original snapshot. They are retained as code, but are not the installer or a native-engine build system; run collection/packaging work in a separate checkout.

## Contributions

Keep changes focused and preserve gameplay and logical resource contents. Measure the same map, resolution and workload before attributing a speedup. Report mean, median and p95 frame times, renderer CPU and GPU pass timing separately, and disclose streaming/camera differences. Do not claim 60 FPS without a repeatable browser benchmark.

Do not commit game data, credentials, personal saves, local paths, caches or raw system logs. Rights and distribution conditions are recorded in `LICENSE_NOTICE.md`.

Before publishing, run `python performance/check_repository.py` after staging files. It checks tracked paths, the file-size limit and common credential/home-path patterns without printing matched secret values. This is a bounded pattern check, not a guarantee that every possible secret is detectable.
