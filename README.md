# GTA5

An existing browser game with GTA V and GTA VI (`env_test`) maps, a WebAssembly runtime, and a WebGPU renderer. This repository contains the available browser code, translated shaders, compiled WASM, local server, installation tools, and performance work.

**The native C++ engine source and its build configuration are not available.** This is a working compiled client with editable browser workers; it is not a reproducible native-engine source release.

Play the hosted build at [gta.ezgames.lol](https://gta.ezgames.lol/). It uses the existing Cloudflare Worker and private R2 bucket. The delivery layer combines recorded startup reads into 77 bounded downloads at normal graphics, and fetches measured map-region packs only on demand. The local disk cache reuses those original file blocks across visits; gameplay settings and asset contents are preserved. The full launch includes requests outside those 77 startup packs.

The source includes an optional two-station browser radio panel with original SVG artwork. It loads only when opened and fetches each MP3 only after station selection. The two local recordings are not in Git. Public playback is held until redistribution rights are confirmed. See [station mapping, local setup and distribution limits](RADIO_STATIONS.md). The compiled game engine's own vehicle-radio wheel is outside the available source.

Cloudflare cache hits still count as requests. Bundling and avoiding browser fetches through the local cache reduce request count; edge caching mainly reduces origin work. See [delivery results](PERFORMANCE_RESULTS.md) and [deployment/rollback](CLOUDFLARE_DEPLOYMENT.md).

## Run locally on Windows

1. Clone this repository or extract **Code → Download ZIP** completely.
2. Run **`Download-Game.cmd`** to install the external game data and bundled Python runtime. Allow approximately 25 GB of free disk space and a roughly 21 GB initial download. Interrupted downloads can be resumed by running it again.
3. Run **`Launch-Local.cmd`**. Keep the server window open while playing.
4. Open [localhost:8000](http://localhost:8000/) in Chrome or Edge. Choose Story Mode or Sandbox Mode, then click the game to capture the mouse and enable sound. **Esc** releases the mouse.

Use a browser with WebGPU and hardware acceleration. First loading and shader preparation may take several minutes. Do not open `index.html` directly; the server supplies the isolation headers and asset-read endpoints required by the game.

The illustrated loading screen has been removed. Small mode/map controls and startup status remain in the corner until gameplay is ready. `Game data read` includes completed reads from the browser cache; downloaded bytes are reported separately. It is a read counter, not an installation percentage.

The installer retrieves checksum-verified archives from the existing [full-game data release](https://github.com/alihammoud21/playgta5/releases/tag/full-game-v1). That release belongs to a separate repository; **this repository does not host a new game-data release**. It installs only external assets and Python, preserving this repository's current renderer and launcher code. Differing existing asset files are rejected rather than overwritten.

The 21 GB data tree, loading-screen media, bundled runtime, caches, saves, and raw benchmark captures are excluded from Git. Download ZIP contains the code and compiled WASM, but the separate data installation is still required. Shader sources, metadata and shader packs are included because the renderer needs them.

## Maps and settings

| Purpose | Local URL |
|---|---|
| GTA V sandbox | `http://localhost:8000/?mode=sandbox` |
| GTA VI map sandbox | `http://localhost:8000/?mode=sandbox&map=env_test` |
| Fixed desktop benchmark resolution | Add `&res=1920x1080&fixed=1&low=0` |
| Lower-memory configuration | `http://localhost:8000/?low=1&fps=30` |
| Original dedicated-buffer path for comparison | Add `&bufferArena=0` |

Small mesh buffers use shared GPU allocations by default. The fix preserves logical mesh contents and graphics settings; the original allocation path remains available. Profiling is optional with `profile=1` and is documented in [PERFORMANCE_RESULTS.md](PERFORMANCE_RESULTS.md).

Local RTX 5060 tests found substantial CPU rendering work and memory pressure. Shared geometry reduced engine GPU allocations by about 81% and browser GPU-process private commit by about 2.5 GiB in the repeat comparison. GTA VI runs measured approximately 25–26 FPS after the change, with remaining spikes. Camera and streaming workloads varied, so these are observations rather than an isolated percentage speedup or a 60 FPS guarantee. See the [audit](PERFORMANCE_AUDIT.md), [results](PERFORMANCE_RESULTS.md), and [published summary](performance/benchmark-summary.json).

## Verification and development

Run **`Verify-Game.cmd`** after data installation to check downloaded assets and Python against their SHA-256 inventory. It reads roughly 21 GB. The inventory describes the external release; current repository code is checked separately with the regression suite.

For code checks, install Node.js and Python 3.11 or newer, then run:

```sh
python performance/run_checks.py
```

See [DEVELOPMENT.md](DEVELOPMENT.md) for the architecture, optional browser tests, and source limitations. No npm packages are required by the browser runtime or the regression suite.

Cloudflare deployment tools are under `cloudflare/`. They generate packs from an installed asset tree and upload only new or changed objects. Credentials, generated packs and local deployment records are excluded from Git. GitHub Pages alone cannot provide the private R2 reads, POST batch endpoint and required isolation headers used by this build; this hosted version uses the existing Worker.

On other operating systems, install the external data on Windows or copy an existing complete data installation, install Python 3.11 or newer, and run `python3 serve_local.py --open`. The bundled runtime is Windows-only; other operating systems have not been gameplay-tested.

## Troubleshooting

- **Missing data or a blank page:** complete `Download-Game.cmd`, then run `Verify-Game.cmd`.
- **Startup stays at “Game data: 0 MB”:** update the client and refresh the page. Cached reads now advance the read counter. Missing/invalid data manifests, manifest timeouts and worker failures show an explicit error; follow that message. Keep the local server running. Repeated GPU-wait log lines alone do not show that loading is progressing.
- **Port 8000 is occupied:** use the existing server or run `python serve_local.py --port 8001 --open` with your installed Python.
- **WebGPU unavailable:** check browser hardware acceleration and WebGPU support.
- **Fullscreen/windowed switches:** the game now keeps its desktop render resolution and fits the picture to the window, avoiding the compiled engine's resize crash. Borders preserve proportions when the window has a different shape. After updating, restart the local server and refresh the game; use Ctrl+Shift+R if an old page remains cached.
- **Memory pressure:** test with a single game tab. The GTA VI scene still had active host paging after the allocation fix.
- **Installer finds a differing asset:** use a new clone/destination or investigate the difference. It does not overwrite modified assets.
