# GTA5

An existing browser game with GTA V and GTA VI (`env_test`) maps, a WebAssembly runtime, and a WebGPU renderer. This repository contains the available browser code, translated shaders, compiled WASM, local server, installation tools, and performance work.

**The native C++ engine source and its build configuration are not available.** This is a working compiled client with editable browser workers; it is not a reproducible native-engine source release.

## Run locally on Windows

1. Clone this repository or extract **Code → Download ZIP** completely.
2. Run **`Download-Game.cmd`** to install the external game data and bundled Python runtime. Allow approximately 25 GB of free disk space and a roughly 21 GB initial download. Interrupted downloads can be resumed by running it again.
3. Run **`Launch-Local.cmd`**. Keep the server window open while playing.
4. Open [localhost:8000](http://localhost:8000/) in Chrome or Edge. Choose Story Mode or Sandbox Mode, then click the game to capture the mouse and enable sound. **Esc** releases the mouse.

Use a browser with WebGPU and hardware acceleration. First loading and shader preparation may take several minutes. Do not open `index.html` directly; the server supplies the isolation headers and asset-read endpoints required by the game.

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

On other operating systems, install the external data on Windows or copy an existing complete data installation, install Python 3.11 or newer, and run `python3 serve_local.py --open`. The bundled runtime is Windows-only; other operating systems have not been gameplay-tested.

## Troubleshooting

- **Missing data or a blank page:** complete `Download-Game.cmd`, then run `Verify-Game.cmd`.
- **Port 8000 is occupied:** use the existing server or run `python serve_local.py --port 8001 --open` with your installed Python.
- **WebGPU unavailable:** check browser hardware acceleration and WebGPU support.
- **Memory pressure:** test with a single game tab. The GTA VI scene still had active host paging after the allocation fix.
- **Installer finds a differing asset:** use a new clone/destination or investigate the difference. It does not overwrite modified assets.

## Rights and provenance

The project owner states that the covered GTA code/assets are authorized for use, modification, recoding and distribution under a rights-holder agreement, with free distribution and no monetization. See [LICENSE_NOTICE.md](LICENSE_NOTICE.md); no broader third-party license is invented here.

The starting launcher/snapshot packaging project references [shadany7824/playgta5](https://github.com/shadany7824/playgta5) and credits snapshot collection to Sebas Furbastian / @SebasKitten. These packaging references do not establish native-engine authorship. This repository is not an official Rockstar Games or Take-Two release.
