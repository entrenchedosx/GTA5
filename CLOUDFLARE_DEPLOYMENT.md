# Delivery rollout — 11 October 2026

Production: Worker `gta5-browser`, binding `ASSETS`, private R2 bucket
`gta5-browser`. Both existing domains use that Worker: `gta.ezgames.lol` and
`gta.kerncode.art`. A Worker update affects both. No DNS, nameserver, bucket
visibility, credentials, billing plan or routes change.

## Changes planned before production upload

- Add deterministic pack generation, deployment tooling, pack reader, opt-in
  delivery diagnostics and focused tests. Modify index, loader and worker entry
  points. Existing compiled engine/WASM/shaders remain.
- Worker: stream objects with one R2 GET; correct conditional and Range
  responses; stream legacy batches; repair batchc; cache only hash-named objects.
- Coalesce simultaneous gameplay ranges (at most 16 runs/4 MiB per request).
  Exact manifest-bounded batches use one GET per range without HEAD. Single
  requests remain GETs. Failures retry original ranges. No extra bytes or LOD
  changes; CPU scheduling window is one millisecond.
- Wrangler: remove account ID from public source (environment variable instead);
  enable Workers Cache if supported by the existing account.
- New R2 keys: `data/packs/<sha256>.bin`, `data/packs/index-<sha256>.json`,
  `data/delivery.json`, `site/runtime/<sha256>/*.js`, diagnostic canary HTML.
- Sole existing R2 object updated at promotion: `site/index.html`. Original game
  data and `/b/8b0b5899ed/` objects are untouched. Upload only new/changed keys.
- Runtime includes the unchanged compiled `game.js` under its new hash prefix,
  allowing thread script reuse without revalidation. `game.wasm` stays at its
  existing key. Existing shader packs already carry verified SHA-1 name prefixes.
- Hashed packs/indexes and verified hashed shader packs explicitly use the
  browser HTTP cache on reload. Mutable metadata keeps ordinary revalidation.
- First canary runs `packs=0` with a separate empty OPFS test store, retaining
  the original request algorithm. Normal caches and saves are never erased.
- Additional normal-graphics scene packs contain ranges measured in actual
  local GTA VI and GTA V gameplay. They are marked `prefetch: false` and fetched
  on demand only. Publish new hash keys/index and replace `data/delivery.json`
  after uploading its dependencies; never replace original data archives.
  The second upload plan adds 190 packs and one index, and replaces only the
  delivery pointer: 192 objects / 1,589,377,350 bytes. The normal index contains
  77 startup packs plus 190 demand-only packs; low graphics remains 68 packs.
- Final promotion follows tests/uploads. Exact generated object lists, hashes
  and byte counts are saved in ignored local deployment records.

## Verified deployment and promotion

Worker version `2140b2d0-721e-44dd-8c8f-a04ecbe83375` is deployed at 100%,
deployment `4ad4791b-818f-474b-ab97-a6331d31a6a5`, recorded by the Cloudflare API
after Wrangler reported success. The `ASSETS` binding, private bucket and both
custom-domain targets remain unchanged. API settings confirm Workers Cache
enabled, with cross-version cache disabled.

Uploaded startup packs/index/pointer: 136 objects / 971,672,340 bytes. The second
upload added 190 gameplay packs plus its index and updated the delivery pointer:
192 objects / 1,589,377,350 bytes. Existing original assets, WASM and shaders were
not uploaded or replaced. Diagnostic/runtime iterations use new hash paths;
only canary HTML was replaced while testing. Generated packs/credentials and
exact object records remain local and ignored.

Final runtime: `/runtime/e152386bbd99ddf10f7b81b332116e60fdfd57dacaccd6dd6c5d58f3a6134950/`.
Final index: `/data/packs/index-0367606b90b0036a064e281288259aa1542f1ae1bdbe0ec3185ddac292fd3e03.json`.
The reviewed main promotion changes exactly `site/index.html`, 35,206 bytes;
all 11 runtime scripts are already uploaded with matching SHA-256 metadata.

The public canary reached the GTA VI world, responded to keyboard movement and
reported zero pack/download failures. Cold world readiness used 144 IO fetch
attempts; the final repeat reached readiness with three, and its first minute
used four. Shader-cache reuse increased from one to 19 Resource Timing hits,
with reported GPU-worker resource transfers dropping from 71,918,592 to 4,948
bytes on the final reload. Public range/batch/conditional/isolation byte checks
passed; the immutable index returned `MISS` then `HIT`. Main-entry verification
is recorded in PERFORMANCE_RESULTS.md. Source implementation commit
`ef0e9059df8a3c6cde448bf0d40ddc15585b9b82` passed GitHub's Windows and Linux
checks before this documentation follow-up.

## Captured rollback point

Previous Worker version: `990171cb-25e5-4cf8-9f35-ec6b3a79f2b9` (100%).
Previous deployment: `a44ba174-826f-4b5f-a95b-25effad0aca7`.
The previous Worker bundle/settings and `site/index.html` are backed up under
ignored `.downloads/cloudflare-before/`. No credentials are in this document.

Rollback requires **both** restoring that saved R2 `site/index.html` and
deploying the previous Worker version with
`wrangler rollback 990171cb-25e5-4cf8-9f35-ec6b3a79f2b9` using the existing local
Cloudflare environment. A Worker rollback alone does not restore R2 entry HTML.
New immutable packs/runtime objects can safely remain in the private bucket.
Do not delete original assets or change custom domains.

With the same local secret environment used for upload, restore the entry:

```powershell
New-Item -ItemType Directory -Force .downloads/rollback-site/site
Copy-Item -LiteralPath .downloads/cloudflare-before/site-index.html -Destination .downloads/rollback-site/site/index.html
python cloudflare/publish.py --site .downloads/rollback-site --record .downloads/rollback-plan.json
python cloudflare/publish.py --site .downloads/rollback-site --record .downloads/rollback-executed.json --execute
wrangler rollback 990171cb-25e5-4cf8-9f35-ec6b3a79f2b9 --config cloudflare/wrangler.toml
```

## Measurement boundaries

Source replay counts describe a deterministic startup plan, not the complete
browser Network trace. Opt-in diagnostics count IO/GPU/loader fetch attempts
and record Resource Timing bytes separately. Other thread script loads are not
fully covered. Cold OPFS tests are distinct from cold HTTP cache; existing
engine/shader HTTP cache may be warm. Request reduction does not imply FPS gains.

## Radio station release

The maintainer confirmed public streaming rights for both recordings on 11
October 2026. The page radio panel, its two original SVG logos, and the two
MP3s are live on `gta.ezgames.lol`. Worker version
`d241cb89-efe1-4b56-9b8c-39fa38e1ab28` is deployed at 100%; the existing `ASSETS`
binding and routes are unchanged.

The release published 16 new content-addressed objects and replaced only
`site/index.html`: 17 planned paths / 4,060,759 bytes total. The page was
published last. No original game data, WASM, shader, or RPF object was uploaded
or replaced. The two MP3s total 3,589,431 bytes (about 3.42 MiB) and are outside
Git. The precise account cost depends on the current R2 allowance and usage.

Live production verification fetched every planned path from
`gta.ezgames.lol`; all 17 returned HTTP 200. Runtime, artwork, and audio bodies
matched the planned SHA-256 hashes. Audio returned `audio/mpeg`; SVGs returned
`image/svg+xml`; hash-addressed objects returned a one-year immutable cache
policy. The main page is `no-cache` and references the new content-addressed
runtime. Browser-component tests had already verified station switching,
pause/resume, disposal, error handling, and the compact layout. The other
configured domain, `gta.kerncode.art`, did not resolve from the test environment
and its public availability was not verified.

The panel remains a page-level player that plays alongside the engine's original
mix. The compiled engine has internal native radio code, but its browser-facing
exports expose no station registration/selection API, and the checkout contains
no native engine source or build system. Therefore these tracks are not in the
vehicle radio wheel. Doing that safely requires compatible engine source/build
support or a documented station API; the page-level player cannot add native
wheel entries.

For radio-only rollback, the previous Worker version was
`2140b2d0-721e-44dd-8c8f-a04ecbe83375` (deployment
`4ad4791b-818f-474b-ab97-a6331d31a6a5`). The exact previous entry HTML from
`ffd53b0` is preserved locally in ignored
`.downloads/radio-rollback/site/index.html` (35,096 bytes, SHA-256
`180c0579d51506b0feaa9cb51fb67d7802d638d794b1989ddf8fd96dd0c8a1dd`). Restore
that file through `cloudflare/publish.py`, then roll the Worker back to the
version above. This restores the pre-radio page/runtime; immutable radio assets
can remain in the private bucket.

## Graphics startup patch — 11 October 2026

Published 12 new hashed runtime scripts and replaced only `site/index.html`:
13 objects / 474,888 bytes. Runtime:
`/runtime/5e224cd56ae32db8936bff9d54562d35587d96dc99ee87cb21b87abb6d948d01/`.
No Worker script/configuration, bucket permissions, routes, original assets,
WASM, shaders or radio recordings changed in this patch. Worker version remains
`d241cb89-efe1-4b56-9b8c-39fa38e1ab28`.

Upload plans and records are ignored locally in
`.downloads/graphics-upload-{plan,executed}.json`. Before promotion, the previous
live entry was downloaded from private R2 to
`.downloads/graphics-rollback/site/index.html`: 37,063 bytes,
SHA-256 `96d9a359a13bef7bab8a29d46153c7226c2f2c8418cccb4a100db52cd5415b9b`.
For entry-only rollback, publish that staging directory with the existing
uploader; old and new immutable runtime URLs remain valid. Local tests exercised
missing API/adapters and timeouts without requesting game data. Both maps reached
gameplay at normal graphics / 1280×720 locally.

## Static Assets request-quota change

Production graphics startup verification also reached the GTA VI world; source
`af05d1d` passed GitHub checks on Windows and Linux. Static hosting is a separate
versioned rollout using that same fixed client and unchanged pack contents.

The final reviewed static stage is `.downloads/static-cpu-help`: 6,963 public
client files / 2,727,471,908 bytes, maximum 8,391,176 bytes. It includes all 327 generated
pack files, 6,615 shader files, 12 scripts, metadata, the homepage and two logos.
The private R2 bucket and its entire original data tree are retained. No original
archives, WASM or radio audio are re-uploaded. These already-served client files
are replicated once into Cloudflare Static Assets; later uploads deduplicate
unchanged file content. Exact paths/hashes are ignored in
`.downloads/static-cpu-help-plan.json`.

Configuration uses `run_worker_first = false`, `not_found_handling = "none"`,
distinct `STATIC` and existing `ASSETS` bindings. `_headers` preserves isolation
and supplies cache policy directly. Existing domains/routes/billing plan/bucket
visibility stay unchanged. Radio audio is excluded because local Static Assets
did not honor its Range reads. Missing original/range/batch paths still execute
the existing Worker. Responses identify their delivery path with
`X-Game-Delivery: static` or `worker`.

Local validation passed 367 HTTP checks on the bootstrap stage, including every
generated pack HEAD, representative byte hashes, conditional requests, isolation
and cache policy. Initial upload encountered a fetch/connectivity failure before
an asset session was established. Its retry uploaded the static catalogue into
preview version `1dddf98d-4db0-4fd2-8c1e-12630f8092c5`, without promoting it.
The final CPU-fallback/metadata revision reused 6,954 bodies and uploaded six
new ones; preview version `7ea13de8-7063-4b4a-969e-c4b29dad6de0` passed 42 HTTP
checks, then was deployed at 100%. The public `gta.ezgames.lol` domain passed
the same 42 checks and the GTA VI map reached gameplay without reported browser
warnings/errors. Hosted HTML omits ETag; its full body is verified instead.

Final runtime: `/runtime/f35c0c0becced23264c8755bc20213ec78ba0e8f38d3fbfad03a0c64a72c98a6/`.
Initial bootstrap: `/data/packs/bootstrap-39c15ebe9a66e33356a7d29e3022a36c5d887b4321744b1dca417cc347776127.json`.
The private-R2 rollback entry was also updated through the reviewed uploader:
13 new runtime/entry objects, 478,297 bytes; only `site/index.html` replaced.
This R2 entry retains the legacy metadata path, so rollback does not depend on
Static Assets. An intermediate metadata runtime was uploaded to R2 before the
CPU request; its immutable keys remain harmless and are not referenced by the
final entry. No original data, WASM, shaders or radio recordings were overwritten.
Upload/preview/production records remain under ignored `.downloads/`.

For rollback after promotion, deploy the previous Worker version
`d241cb89-efe1-4b56-9b8c-39fa38e1ab28` at 100%. It still serves the fixed graphics
entry from private R2 and needs no asset deletion. To roll back the graphics fix
as well, additionally restore `.downloads/graphics-rollback/site/index.html`.
Once Static Assets is active, R2-only HTML changes are shadowed by the deployed
static homepage; rebuild/upload/promote a matching static version for all future
client or pack-pointer releases. See DEVELOPMENT.md for the staging workflow.

Software rendering is a browser-supplied fallback, automatically requested after
hardware failure or exclusively with `?renderer=cpu`. Both actual tested browsers
returned no software adapter; no CPU gameplay result is established. The site
keeps an explicit pre-download failure for unsupported configurations. Publishing
the fallback request does not provide a universal CPU renderer. See the audit
and results for the tested limits and remaining engine-source requirement.

### Follow-up measured coverage release

The coverage version `cb3eddd4-712e-405d-a6a8-5559d2fbdc78` was promoted at 100%, using the same
`f35c0c0b…` browser runtime. Its bootstrap is
`/data/packs/bootstrap-54e8acbfc4d233c45e03ca0141e73dcc40e20b32f0851fa52554430ef72c18bb.json`;
index is `index-318ac217634529f877d93c24969f5945645868763ebbc201abb20d54d536d54e.json`.
It adds three demand-only packs for 111 measured missing normalized runs in
49 GTA V archives. Old normal/low pack URLs and bytes are preserved; startup
counts remain 77 / 68. New packs decode to 19,927,040 original bytes, fully compared
against source slices, with no remaining uncovered runs in that capture.

Private R2 changes were reviewed/executed as five objects / 20,191,738 bytes:
three new packs, new index, mutable delivery pointer last. Static version upload
added seven bodies and reused 6,956; preview and production each passed 42 checks.
The actual public browser downloaded and SHA-256-verified every complete new pack.
`site/delivery-pack-check.html` is a separate 1,820-byte R2 canary for that test;
normal gameplay does not load it. A fresh isolated local-cache GTA V game reached
gameplay without download/pack failures. Full-session request/FPS changes cannot
be inferred from differing cache/NPC workloads; see PERFORMANCE_RESULTS.md.

Coverage-only rollback: deploy `7ea13de8-7063-4b4a-969e-c4b29dad6de0` at 100% to
restore its static catalogue/bootstrap. The new private-R2 files can remain.
Full static-hosting rollback remains `d241cb89-efe1-4b56-9b8c-39fa38e1ab28`;
its current R2 entry uses compatible legacy metadata and the latest private-R2
pointer/packs. This restores metered Worker delivery; it does not erase caches,
saves or original data.

### Final CPU compatibility message release

Current production version is `4f4f65c4-af5e-4fec-af41-a0f57586366a` at 100%.
It preserves the coverage version's runtime, pack catalogue and bootstrap. Only
the entry HTML changed: CPU-only adapter failure hides advice about GPU drivers
and hardware acceleration. Private R2 replaced one entry / 40,139 bytes; Static
Assets uploaded one entry and reused 6,962 files. Preview and production each
passed 42 HTTP checks (40 static, two intentional Worker responses).

The actual fresh-preview-origin CPU test in Chromium 155 returned no software
adapter, reported zero IO/data fetches, created no IO worker and showed the
specific recovery card. CPU gameplay remains unavailable in that tested browser.
Rollback of this UI-only change: promote `cb3eddd4-712e-405d-a6a8-5559d2fbdc78`.
All earlier coverage/static rollback versions above remain retained.
