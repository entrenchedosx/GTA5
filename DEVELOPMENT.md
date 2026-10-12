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
| `cloudflare/` | Deterministic pack builder, normalized measured ranges, staged runtime uploader and read-only production Worker |
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

## Cloudflare asset delivery

`delivery-packs.js` validates a versioned pointer, the manifest path/size fingerprint, hash-named index, pack bounds, encoded and decoded SHA-256, and nonoverlapping file-block offsets. Packs contain original byte slices; the native engine still sees its original filenames and reads. `io_worker.js` deduplicates pack/block requests and commits validated bytes to the existing OPFS journal. There are at most four pack downloads, each with an 8 MiB decoded bound and a deadline. Index and pointer reads are bounded too. Missing, corrupt or stale packs fall back to original reads. Without OPFS or gzip support, the original loader remains available.

Startup packs reproduce the existing normal/low boot sets. Additional normal-graphics packs use `cloudflare/demand-reads.json`, recorded from both actual maps, and have `prefetch: false`; visiting a new region requests its packs only when engine reads need them. Unrecorded regions use original ranges, coalesced into at most 16 runs/4 MiB per request. Normal caches and IndexedDB saves are retained. Low graphics uses its original 68 startup packs and the range fallback for world streaming.

Generate after installing all assets:

```sh
python cloudflare/build_packs.py
python cloudflare/prepare_site.py
python -m pip install -r cloudflare/requirements.txt
```

The output defaults to ignored `.downloads/delivery-packs` and `.downloads/delivery-site`. The builder reads assets without modifying them, and fails on differing sizes, stale demand-plan versions or corrupted generated packs. The stage builder hashes all browser scripts, including an unchanged copy of compiled `game.js`, into a frozen `/runtime/<sha256>/` path. The existing WASM and shader objects remain at their original keys.

New measured spans go in `demand-reads.json::extensions`, with the installed
data version and a concrete scene description. Each extension is appended in a
separate pack phase after subtracting all earlier coverage. This preserves existing
pack bodies/boundaries/URLs and avoids repeated blocks; startup and low graphics
stay intact. Do not flatten an extension into the old ordered footprint, which
would regroup published packs and invalidate caches unnecessarily. For local
engine capture, `serve_bootstrap_qa.py --capture-reads` enables the existing recorder
after normal IO initialization; read the hidden `#read-footprint` after 75 seconds.
Only that local fixture adds capture code; release code sends no read telemetry.

Set `CLOUDFLARE_ACCOUNT_ID`, `CLOUDFLARE_API_TOKEN`, `R2_ENDPOINT_URL`, `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` through your local secret environment. Do not put their values in source or command arguments. With Wrangler 4.69 or newer:

```sh
python cloudflare/publish.py --site .downloads/delivery-site --packs .downloads/delivery-packs --record .downloads/upload-plan.json
```

Review that plan; repeat with `--execute` to upload. Dependencies precede the mutable pointer and HTML. Existing immutable keys with different hashes are rejected; no deletion or original-asset upload is performed. Before switching the main entry, use `--entry site/delivery-candidate.html` for a canary. Deploy the Worker with `wrangler deploy --config cloudflare/wrangler.toml --keep-vars`, then validate the public canary and promote `site/index.html`. Record and preserve the previous entry HTML and Worker version as described in [CLOUDFLARE_DEPLOYMENT.md](CLOUDFLARE_DEPLOYMENT.md).

For diagnostics use `deliveryAudit=1` and, optionally, a new `cacheNamespace=<test-name>`. The separate diagnostic OPFS directory is used only with delivery auditing; ordinary play retains `gamedata`. Read the hidden `#delivery-results` JSON and its small badge. `packs=0` compares the original algorithm. Diagnostics stay in the page; they send no telemetry or per-read log requests. `profile=1` separately enables existing CPU/GPU measurements. The diagnostic fetch counter includes attempts and browser-cache hits, not billed requests; Resource Timing bytes and hits are reported separately.

Workers Cache is enabled in Wrangler and verified on the deployed Worker. Only hash-named packs/runtime/shader packs are immutable. Editable entries and original asset paths revalidate. [Cloudflare charges cached requests too](https://developers.cloudflare.com/workers/cache/), so avoid browser requests through packing and persistent blocks. The Worker streams GETs and batch bodies; an exact manifest-bounded batch performs one R2 GET per run without metadata HEAD. Batching reduces HTTP requests but does not reduce that batch's number of R2 data reads.

## Static hosting and the daily Worker allowance

`wrangler.toml` additionally serves an explicit static catalogue before invoking
the Worker. Original data stays in private R2; its `ASSETS` binding is preserved.
The new `STATIC` binding handles generated packs, frozen browser scripts,
existing shaders, metadata and SVG logos. Audio and WASM retain the R2 handler.
Static requests are [free and unlimited](https://developers.cloudflare.com/workers/static-assets/billing-and-limitations/);
remaining dynamic reads still use the Worker allowance. HTTP pack count itself
is unchanged by this routing change.

After preparing the runtime and generating the complete pack catalogue:

```sh
python cloudflare/build_static.py --site .downloads/delivery-site --packs .downloads/delivery-packs
python cloudflare/verify_static.py --base http://127.0.0.1:8890 --record .downloads/static-local-checks.json --coverage-heads
wrangler versions upload --config cloudflare/wrangler.toml --keep-vars
```

The verification command assumes local `wrangler dev --local --port 8890` is
running. Stage generation must finish first. The builder defaults to ignored
`.downloads/static-public` and rejects an existing output directory. For later
releases use a fresh `--output .downloads/static-public-<release>` and pass that
directory to Wrangler with `--assets`. Retain previous stages for rollback.
The exact staging inventory/hashes stay outside Git in a separate plan JSON.
The builder never scans private world archives, credentials, saves or caches.

Validate the uploaded version before promoting it with `wrangler versions
deploy`. Preserve the existing private R2 copies/old immutable runtimes for old
tabs and rollback. Once static hosting is active, changing `site/index.html` in
R2 alone does **not** update the statically served homepage. Every client or pack
pointer update must publish a matching static version too. Keep entries/pointers
revalidating and hashed runtime/packs immutable; do not enable `run_worker_first`
for these paths. `_headers` supplies isolation directly, without a Worker call.

`build_static.py` also creates `/data/packs/bootstrap-<sha256>.json` from the exact
manifest and selected pack index, inserts its URL into the staged page, and
checks the 4 MiB client bound. `io_worker.js` validates its bytes/version/file
catalogue and uses `force-cache` only for this immutable URL. Missing/corrupt
bootstrap data falls back to the existing mutable metadata paths. The manifest
is transferred to the loader's one-use `__httpfsManifest` cache before engine
import, using the compiled glue's existing hook; `game.js` and WASM are unchanged.
The native glue clears that cache after copying it into the WASM heap.

For actual-worker metadata QA, run `python performance/serve_bootstrap_qa.py`
with matching `--stage` and `--plan` arguments, then open its localhost test
page. Only that fixture disables asset prefetch; release code retains it.

Original archives use range requests; the pack readers request complete bodies.
Local static Range tests returned 200 with the entire file, so radio MP3s are
excluded to preserve the existing 206/If-Range behavior. Static HEAD may omit
Content-Length; readers validate known sizes and actual body hashes instead.
Do not stage a fallback index.html/SPA for missing data paths.

For graphics failure QA, run `python performance/serve_graphics_qa.py` and open
`http://localhost:8877/qa/adapter.html`, `api.html`, `timeout.html` or `check.html`.
The first three inject local-only failure cases; the fourth tries the actual
default adapter after forcing the preferred selection to fail. They must request
no `/data/` or WASM before graphics succeeds. Mocked code stays outside the
deployed runtime; normal gameplay uses the actual GPU worker/device.

The GPU path retains its existing browser software-adapter attempt, but explicit
`?renderer=cpu` now starts `cpu_worker.js` and the genuine `cpu-rasterizer.js`.
The subset initializes a CPU canvas and refuses full native compatibility before
IO/WASM. Failed GPU adapter/device/format selection also tries CPU once, stopping
the old worker and ignoring its late messages. This does not enable GTA gameplay
without a full rendering backend; see [CPU_RENDERER_STATUS.md](CPU_RENDERER_STATUS.md).

`/cpu-renderer-check.html` runs synthetic geometry through ports of two original
shader pairs, on a 2D pixel surface. Benchmarks distinguish CPU work from presented
intervals, with 30 warm-up and 120 measured frames at a 30 FPS cap. Its camera
controls and resolution choices belong to the fixture, not native game systems.
The default regression suite includes geometric edge/depth/clipping/sampling
tests and independent execution of the original WGSL using a hash-pinned MIT
test-only module under `performance/third_party/`.

```sh
node performance/audit_cpu_contract.cjs .downloads/cpu-contract.json
node performance/probe_cpu_interpreter.cjs .downloads/cpu-interpreter.json
python performance/serve_cpu_contract_qa.py --stage .downloads/static-cpu-subset-final --port 8891
```

The contract fixture records only opcode/format/shader metadata; its per-page
tokens reject other sessions' messages. Open the actual map at `/index.html`
and read hidden `#cpu-contract`. Capture instrumentation is never deployed.
`--cpu-only --bind <local IPv4>` serves only the diagnostic and its two scripts
on port 8880. A non-loopback HTTP origin actually omits WebGPU in the tested
browsers, without mocking an adapter or changing flags. This is an API-absence
fixture, not proof of a physical GPU-less device or disabled compositor.
Stop this temporary server after QA. The earlier `serve_cpu_qa.py` remains a
separate probe of browser-supplied software WebGPU, not the new CPU rasterizer.

Native navigation cleanup remains unchanged after an intermittent startup stall
during the attempted change. The CPU diagnostic terminates only its own worker
and reloads on a back/forward-cache restore. Caches/saves keep their namespaces.

## Contributions

Keep changes focused and preserve gameplay and logical resource contents. Measure the same map, resolution and workload before attributing a speedup. Report mean, median and p95 frame times, renderer CPU and GPU pass timing separately, and disclose streaming/camera differences. Do not claim 60 FPS without a repeatable browser benchmark.

Do not commit game data, credentials, personal saves, local paths, caches or raw system logs. Rights and distribution conditions are recorded in `LICENSE_NOTICE.md`.

Before publishing, run `python performance/check_repository.py` after staging files. It checks tracked paths, the file-size limit and common credential/home-path patterns without printing matched secret values. This is a bounded pattern check, not a guarantee that every possible secret is detectable.
