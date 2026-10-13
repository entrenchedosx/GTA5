# Low-end graphics and streaming update — 2026-10-13

The update fixes low-profile request amplification and adds real native launch profiles. It does not establish stable 60 FPS, full CPU-only support or iPhone gameplay.

## Confirmed problems and fixes

- `delivery-packs.js: DeliveryPacks.fromIndex/forBlocks`: Low selected 68 catalogue descriptors, while normal selected 270 with much broader recorded coverage. Missing low-profile blocks fell back to thousands of small original reads. Low now searches verified normal coverage for gaps, preserving its original eager-prefetch list. Equal layouts share promise/failure identity. All pack URLs, hashes, file ranges, data version and original assets remain unchanged.
- `loader.js/openData`, `io_worker.js/drainHints/pumpHints`: demand-only mode disabled both speculative hints and reads already queued by the engine. It now keeps queued reads, skips speculative look-ahead and eager boot prefetch, and bounds queued concurrency at four in reduced graphics (16 in other demand-only configurations). Explicit `nohints=1` remains respected.
- `index.html`, `quality-profile.js`: 8 GB/unknown-memory devices previously inherited oversized screen/DPR-based startup targets unless classified <=4 GB. Auto now starts Low on <=8 GB/unknown, Balanced on larger reported memory, Performance on touch/mobile or explicit CPU mode. It observes real presentation intervals, with 15-second settling, 12-second downgrade and 90-second upgrade thresholds. Only one unapplied recommendation is allowed. Manual choice persists; URL settings also survive blocked localStorage. Overlays do not send movement, camera or wheel input to the game.
- `loader.js`, `wgpu_worker.js/requestGameDevice`: explicit CPU mode previously bypassed the software-WebGPU selector and went directly to the incomplete CPU subset. It now tries software-only WebGPU first. Adapter type must positively report fallback/software; unknown or hardware is rejected. The incomplete CPU subset remains the last fallback and cannot start native gameplay/assets.

## Actual quality controls

| Profile | Native startup targets | Native texture quality | Other native settings |
|---|---:|---:|---|
| Performance | 640×360 | 0 | Two cores, shadows off, existing minimum reflection/particle/grass/density/LOD/variety flags |
| Low | 960×540 | 0 | Same reduced settings |
| Balanced | 1280×720 | 1 | Same reduced settings, higher texture detail |
| High | 1920×1080 | Original | Original native quality/worker policy |

`res`, `scale`, `low`, `args` and `fps` remain explicit controls. A named profile can be benchmarked at a matched `res`. Native frame pacing uses the existing 60/30 FPS limiter. Sustained failure at the Performance floor recommends a 30 FPS target. Resolution, detail and pacing changes apply on reload; automatic recommendations never restart active gameplay.

**Live native resizing is unsafe.** An isolated downward 1280×720→960×540 probe also trapped in native WASM. WABT traced window requests to `grcDevice::Manage` and its reset path; the exact native fault remains unisolated. CSS sizing cannot substitute for real resolution scaling. Existing fullscreen protection is retained. Actual Performance gameplay used 640×360 GPU targets; a warm recovery reached gameplay in 12.8 seconds and remained running about 20 minutes. One preceding Chromium device loss reported an external-instance reference failure; reload recovered. Its cause was not isolated.

WABT also showed `grcSetup::EndDraw` rereading the command-line frame-limit parameter. A private frame-lock-word probe did not reliably cap frames; no such memory-offset manipulation is shipped. Native WASM remains 63,201,802 bytes, SHA-256 `11ca8d2c04c5e843d18ff4aea4899d72c86973c6b031df334e67c446b2ae83e0`. Official WABT validation passed. Shared memory64 still imports a 3 GiB minimum and 16 GiB maximum; gameplay capacity approached 3.95 GB. This is capacity, not measured residency. No safe lower-memory engine rebuild is available.

## Measurements

Windows Chromium 155, isolated local origins and fresh diagnostic stores, GTA VI sandbox spawn, low native settings, 1280×720, controls held, 70-second warm-up and 30-second measured phase. Browser exposes NVIDIA/Blackwell, with empty board-name fields; RTX 5060 is user-reported. Loading times are world-ready signals, not proof that every nearby texture is finished.

| Configuration | Early HTTP data-fetch attempts | World ready | Early fetched bytes | Measured mean/median/p95 frame ms | Observed FPS |
|---|---:|---:|---:|---|---:|
| Low before fixes | 6,585 | 35.6 s | 2,150,323,394 | 33.37 / 31.67 / 47.37 | 29.97 |
| Broader coverage | 1,597 | 27.9 s | 2,335,173,826 | 31.36 / 30.63 / 37.57 | 31.89 |
| Coverage + queued reads | 667 | 29.1 s | 2,348,002,498 | 24.91 / 24.48 / 32.51 | 40.14 |

These early snapshots cover 17,624 / 17,556 / 17,598 engine reads. HTTP attempts came from the delivery overlay, while IO `fetches` counts logical operations and must not be treated as HTTP. Counts are not Cloudflare billing totals; matching Static Assets bypass the metered Worker. Queued reads reduced cumulative demand wait from 122.2 seconds to 32.8 seconds, across overlapping reads; this is not wall-clock loading time. Transfers rose about 9.2% versus the narrow low catalogue. The initial client footprint still exceeds the expected 700 MB, but the full 20 GB library is not required before gameplay.

The final 30-second phase measured CPU rendering-worker active time 21.44 ms and timed GPU passes 1.92 ms. Dynamic NPC/draw workloads differ, so FPS changes are observations, not an isolated renderer speedup. Loading-time improvement needs repeated cold tests. Texture readiness, native simulation/physics time, true CPU/GPU resident memory and physical low-end performance remain unverified.

Full-quality baseline at matched 1280×720 allocated about 2.71 GB of textures; Low allocated about 0.80 GB. Low still had about 1.30 GB of logical buffers and 3.95 GB WASM capacity. Reduced resolution helps pixel work but cannot eliminate the measured CPU draw-preparation bottleneck.

## Texture-format investigation

`codecs/bcdec` contains pinned upstream BC1–BC7 decoding plus a bounded memory32 bridge, built with official WASI SDK 34. Its fixed heap is 1 MiB, with no imports or growth. Tests cover alpha, SNORM, HDR half-floats, BC7 mode 6, clipping, multiple blocks and maximum width. Original and decoder modules validate with WABT.

This is analysis tooling, not an enabled fallback. A runtime implementation must preserve encoded BC readbacks and bit-copy operations, mip/array/volume layouts and typed/sRGB views. RGBA conversion can expand storage 4–8×. There is no new progressive mip-upgrade pipeline or alternate-asset release. Original compressed textures are used only on genuinely supporting adapters. Source availability and memory budgets remain blockers for broad mobile support.

## Remaining targets and reproduction

Release-preview GTA VI (`quality=performance`, real 640×360 targets) reached world-ready in 258.6 seconds on a cold public origin. It remained running for about 112 minutes after that signal without captured errors. The final 30-second window measured 31.64 FPS, mean/median/p95 31.61/31.30/37.57 ms, CPU rendering preparation 29.71 ms, timed GPU passes 1.54 ms, and approximately 7,103 draws per frame. GPU span was 29.81 ms, including gaps between passes; it must not be confused with GPU execution. Final logical texture/buffer allocation was 0.752/1.364 GB and WASM capacity 3.926 GB. This differs from the local benchmark workload and is not a before/after speedup. An early 63 FPS preview reading during streaming did not persist. Cold nearby-texture completion and the 700 MB target remain unverified/unmet.

Concurrent same-origin release tests reproduced shared engine broadcast messages crossing tabs: a CPU-mode startup failure stopped another game's IO and changed its UI. The entry now acquires an exclusive lifetime Web Lock before constructing any channels/workers. A second game tab displays a local message without broadcasting shutdown or downloading game data; closing the owner releases the lock. Browsers without Web Locks retain the original path, so concurrent-tab isolation remains unverified there. Regression tests cover lease lifetime, duplicate refusal, failure and the no-API path. Old already-open deployments do not acquire the new lock; close those tabs before testing the release.

The actual deployed engine body was verified against the original SHA-256 using complete, length-checked 4 MiB byte ranges. One standalone full-body audit transfer truncated; its partial hash was rejected. The engine binary was not modified.

The user reports an 8 GB Dell without a dedicated GPU and iPhone 11 Pro on iOS 26.x. Neither physical device is attached or authoritatively benchmarked. Integrated graphics can work if the browser exposes the required WebGPU/BC/memory64 capabilities. A compatible software adapter may work through the existing renderer; requesting one is not a new CPU renderer. There is no complete WebGL2 or standalone CPU game backend.

Run `python performance/run_checks.py`, `python performance/test_server.py`, and official `wasm-validate --enable-threads` on the original engine plus `wasm-validate codecs/bcdec/decoder.wasm`. Actual browser benchmarks use `?mode=sandbox&map=env_test&quality=low&res=1280x720&profile=1&deliveryAudit=1&autoBenchmark=1&benchmark=geometry&benchmarkSeconds=30`; use fresh diagnostic namespaces/origins for cold comparisons. Repeat with `map=gta5`, then a warm reload. `?quality=performance` verifies actual 640×360 startup targets; `?renderer=cpu&quality=performance` exercises verified software selection.

Social-link audit remains clean across served UI code. Recent remote commit `1d92b39` changing LICENSE_NOTICE was preserved by fast-forward before this update. Credentials, original game assets, saves, caches, tooling downloads, screenshots and raw reverse-engineering/benchmark outputs remain excluded from Git. See deployment documentation for the versioned preview, promotion and retained rollback.
