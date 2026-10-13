# CPU rendering investigation and current support

**Full GTA gameplay without a usable GPU is not implemented.** The new CPU
rasterizer is real, runs without WebGPU, and supports a verified subset of the
existing shaders. Its interactive diagnostic is a synthetic renderer fixture,
not the game world. Passing that diagnostic does not satisfy the gameplay goal.

## Available interfaces

The native engine imports `wgpu_start_worker` from `game.js`. That function passes
shared WASM memory, the rendering ring's address/size and input/debug addresses
to the worker. `wgpu_worker.js::runCommands` consumes 48 declared opcodes, numbered
0–47. Upload payloads include geometry, indices, constants and texture bytes;
shader hashes refer to the shipped WGSL/constant-table catalogue. Layouts include
semantic hashes, formats, strides, offsets and instance rates. State commands
include render targets, depth/stencil, blend, raster, viewport and scissor state.
Fences, queries and readbacks must write native completion/results and notify
waiting engine threads; dropping them can stall or change the simulation.

**These artifacts expose enough information to attempt a complete independent
CPU command consumer. Missing C++ source alone does not prove that impossible.**
The blocker is the absence of a tested software implementation of that complete
contract, rather than an inaccessible camera or missing mesh bytes. The current
CPU subset does not consume the native ring and cannot replace its worker.

`performance/audit_cpu_contract.cjs` reproduces the static inventory without
starting the engine. The catalogue contains 4,808 translated shaders: 1,112
vertex, 3,667 pixel and 29 compute shaders, totaling 71,734,781 bytes. Another 111
catalogue entries are marked unavailable; this does not establish that they are
required by the tested scenes. Features in translated sources include texture
sampling (3,750 programs), derivatives (1,702), discard (1,136), texture loads
(761), storage buffers (38), fragment depth (27), workgroup barriers/memory (25),
texture stores (21) and atomics (7). These counts describe the catalogue, not
features independently proved active in every frame.

Supported texture declarations span 2D/array/3D/cube/cube-array, depth, multisample
and storage textures. The existing host additionally provides indexed/instanced/
indirect draws, up to eight colour attachments, depth/stencil conversions,
copies/resolves, mip generation, UAV counters, occlusion/event queries and shared
memory readback. A basic triangle renderer cannot declare this game compatible.

## Real workload evidence

Local actual-engine captures at normal graphics / 1280×720 reached gameplay on
both maps. The first GTA V capture saw 38 opcode kinds, 207 shader pairs and BC1,
BC2, BC3, BC4, BC5 and BC7 texture creation. Recorded compute programs were:

| Hash | Existing program | Workgroup | Barriers in source |
|---|---|---|---:|
| `23a7a3c1c0d38f46` | `tiled_lighting::DepthDownsampleCS_Default` | 16×16×1 | 2 |
| `9b8e0c6c85e065da` | `avgLuminanceCompute::LuminanceDownsampleInitCS` | 16×16×1 | 9 |
| `7a1e45a48ffaaf08` | `avgLuminanceCompute::LuminanceDownsampleCS` | 16×16×1 | 9 |

The prototype's two shader pairs appeared in only 166,604 of 17,360,061 recorded
GTA V draw attempts, about 0.96%. The capture counts attempts before the existing
draw routine validates/submits them. It is neither an FPS benchmark nor proof
that every created texture is sampled. Immediate same-origin navigation could
mix origin-wide capture messages; follow-up fixtures attach a per-page token.
An attempted native-owner termination on pagehide was not retained: one
same-tab GTA V→VI startup stalled before the native graphics ring started.
Fresh VI and another VI→V switch succeeded; the cause was not isolated. Original
native navigation behavior is retained. The standalone CPU diagnostic terminates
its own worker and reloads on a back/forward-cache restore.

## Maintained implementation candidates

[Dawn](https://github.com/google/dawn) and
[SwiftShader](https://github.com/google/swiftshader) provide native graphics/API
building blocks. They are not a drop-in JavaScript software WebGPU device that
this website can install into an ordinary browser. The previously tested browser
fallback requests returned null. No unsafe flags, drivers or browser hardware
settings are changed by this release.

[wgsl_reflect](https://github.com/brendan-duncan/wgsl_reflect) 1.6.0 provides a
CPU shader interpreter/debugger. Its unmodified MIT module and full notice are
vendored for independent tests only, with package/file hashes pinned; it is not
served to players. `performance/probe_cpu_interpreter.cjs` reproduces:

- 4,805 of 4,808 shader files parse. The three failures are entity-selection
  pixel programs (`a5b5f9400270f4b2`, `dba3cac0eade8865`, `e3b65f17c9c8e30e`),
  not demonstrated gameplay blockers by themselves.
- The debugger matches this translator's raw numeric attribute strings (`0u`,
  `1u`); using ordinary numeric binding/input keys silently produced zeros.
  Tests supply matching keys and execute the original WGSL.
- A two-lane workgroup writes 1 and 2 to shared memory, synchronizes and sums
  them. The correct result is 3; sequential `WgslExec` returned 1. That execution
  mode cannot replace the active barrier-dependent compute programs safely.
- After 100 warm-up invocations, 2,000 executions of the simplest original
  unlit pixel program measured median 0.0057 ms / p95 0.0146 ms in Node on this
  desktop. Multiplying the median by 320×180 projects 328.3 ms for one full
  coverage pass, before geometry, sampling, other passes or presentation. This
  is a projection, not measured game FPS or an end-to-end renderer benchmark.

The library does not supply triangle clipping/rasterization, native command
consumption, render-target/resource lifetime, query completion or presentation.
Its shader execution APIs are useful as independent reference checks, rather
than being declared a complete game backend.

## Implemented CPU subset

`cpu-rasterizer.js` performs homogeneous six-plane clipping, triangle coverage
with a shared-edge rule, depth testing, perspective-correct colour/UV
interpolation, bounded RGBA8 nearest sampling and alpha blending. Its two fast
shader pairs port the exact shipped programs and preserve their constant layout:

- `cpv_only::VS_TransformUnlit` / `PS_TexturedUnlit`:
  `2d70b46951f3f092` / `826a317f7bd7b70a`.
- `im::VS_TransformUnlit_IM` / `PS_TexturedUnlit_IM`:
  `028921879df627f5` / `943b0ad9542193ff`.

Original shader file hashes are pinned in regressions. The independent WGSL
debugger checks 64 vertex invocations, fragment alpha and sampled colour/alpha
against the ports. Other tests cover near/far/side clipping, shared edges,
visibility ordering, alpha, perspective sampling, bounds and buffer reuse.
Unsupported shaders, layouts, textures and oversized draws throw errors rather
than silently omitting geometry. Surface size is bounded at 640×360; the fixture
offers 320×180 and 426×240 and a 30 FPS cap. No shadows, lighting/post-processing,
native animation, world streaming, collision, vehicles, game HUD or game audio
are implemented by this subset.

`cpu-check-worker.js` generates synthetic geometry and updated camera matrices,
renders it with the original IM shader ports and presents generated pixels on a
2D OffscreenCanvas. Camera controls produce different pixel hashes. The worker
does not call WebGPU or WebGL. Pixel, depth, clipping and transformed geometry
buffers are reused. Reported typed-array bytes do not include all JS heap,
browser canvas backing or compositor memory.

Open `/cpu-renderer-check.html` to inspect the subset. `?renderer=cpu` on the
game starts `cpu_worker.js`, which initializes a real CPU surface and returns
`cpu-incomplete` because full native compatibility is false. Failed GPU
adapter/device/format selection also tries this CPU backend once, after stopping
the GPU worker. Late messages from the retired worker are ignored. Only a
backend declaring actual full compatibility can open IO or import the engine;
the existing GPU renderer retains its normal readiness path. The CPU subset does
not manufacture a GPU adapter, capabilities, device or successful gameplay event.

## Reproducible tests and practical limits

The test computer is an AMD Ryzen 5 7500F (6 cores / 12 logical processors),
15.5 GiB reported physical RAM, Windows, with a physical GPU still present.
Chromium 155 and Edge 155 both ran the CPU fixture from a non-loopback HTTP
origin where the browsers actually omit `navigator.gpu`. No API object is mocked.
The allowlisted local fixture server exposes only the diagnostic and its two
scripts, with no game archives or engine. It is closed after QA.

This proves CPU-generated pixels in a browser context without WebGPU, not a
physical GPU-less-machine test or disabled OS/browser compositor acceleration.
Canvas presentation may still use the browser's compositor. Full CPU GTA
world loading, interactive gameplay, collision/audio correctness and game frame
times remain unverified and are not advertised as supported.

Each fixture benchmark discards 30 warm-up frames and measures 120 frames.
Camera yaw is identical across the recorded comparisons. CPU work time and
presented interval are separate; background timer scheduling affects intervals.
See PERFORMANCE_RESULTS.md for measurements. Rendering 48 fixture triangles
does not predict the native game's thousands of draws or millions of triangles.

## Remaining implementation and source requirements

The practical independent-backend route is to implement the existing native
ring/resource/state contract, add a correct compiled or efficiently scheduled
WGSL CPU execution system, decode/cache BC textures and implement all required
render targets, vertex formats, animation, compute, queries and readbacks. Capture
more scenes before declaring any optional pass safe to simplify. Integrate the
low-quality profile at the native rendering boundary, validate world/physics/
vehicles/HUD/audio, then benchmark actual CPU gameplay on an unaccelerated device.

The alternative rebuild route needs legitimate source and link/build inputs for:

1. `wasm/platform/graphics/wgpu_backend.h` and `wgpu_backend.cpp`, the resource
   wrappers, native command producer and completion/query interfaces.
2. The native render graph, scene submission, animation, material/constant
   definitions and quality/LOD controls, to implement a smaller forward CPU path
   while keeping gameplay systems intact.
3. The shader translation/constant-table build pipeline, including the referenced
   `phase3/make_shader_pack.py`, if generating new CPU shader variants.
4. The engine/platform sources and dependencies required to relink, plus the
   actual Emscripten/clang/linker configuration for memory64, shared memory and
   pthreads. Neither those sources nor build files are in this repository.

The inspected [upstream snapshot](https://github.com/alihammoud21/playgta5) also
describes itself as compiled rather than native engine source. The inspected
`shadany7824/playgta5` main tree had 92 files, was not truncated, and contained
no C/C++/Rust engine or native build files. These checks do not establish that
legitimate source is unavailable elsewhere; no matching native package was found.

Current compiled glue reserves a 3 GiB shared memory64 WASM capacity initially,
with a 16 GiB maximum. That is capacity, not measured resident RAM. A small CPU
surface does not reduce this native allocation or simulation workload. Changing
its constant alone is not a verified safe port or a replacement for a supported
build configuration. No missing source is requested again from the user.

Full CPU gameplay remains the unfinished objective. The next implementation
milestone is a command consumer and correct shader/texture execution for a
captured real game frame, followed by live engine integration; the fixture is
not a substitute for that milestone.


## 2026-10-13 routing correction

Explicit CPU mode previously bypassed the software-WebGPU selector. It now requests a verified fallback adapter through the existing complete renderer first, then tries the incomplete CPU subset. Unknown/hardware adapter types are rejected for explicit CPU mode. This fixes routing, not the missing full CPU/WebGL backend. No actual CPU-only GTA gameplay result is established. See LOW_END_OPTIMISATION.md.
