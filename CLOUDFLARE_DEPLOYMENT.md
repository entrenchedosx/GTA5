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

Production at that release was `4f4f65c4-af5e-4fec-af41-a0f57586366a` at 100%.
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

### Genuine CPU subset release candidate

Candidate `f9d000c9-5e70-43e7-b1d5-17a7ab6b9176` uses frozen runtime
`/runtime/06d78fae0c7a38f33cf7e227d9de64cb7d08287a0f6755657196355def03388a/`.
Stage `.downloads/static-cpu-subset-verified` contains 6,967 files /
2,727,492,113 bytes, maximum 8,391,176 bytes; the same 327 packs and startup
bootstrap/index are retained. Three CPU scripts and one diagnostic HTML were
added. GPU worker, compiled glue/WASM, original assets and shaders are unchanged.
The test-only MIT shader interpreter under `performance/third_party/` is not
included in the public catalogue.

This release implements a genuine CPU rasterizer subset, **not CPU GTA gameplay**.
Explicit CPU mode initializes that backend and stops before IO/WASM because
full native compatibility is false. The public diagnostic clearly renders a
synthetic fixture. See CPU_RENDERER_STATUS.md for the missing command/shader/
texture/query implementation and measured limits. Do not describe the update
as a complete GPU-less game port.

Private R2 first received 17 candidate objects / 498,545 bytes: 15 immutable
runtime scripts, new diagnostic and `site/delivery-cpu-candidate.html`.
The diagnostic then received its 4,514-byte back/forward restore update. The
public candidate reached gameplay on GTA V (22.6 s) and GTA VI (18.1 s), normal
graphics / 1280×720, with partially populated caches and zero reported download
failures/browser warnings. These are correctness observations, not FPS gains.
The entry promotion plan replaces only `site/index.html` / 40,673 bytes.

Initial preview `2056f2cb-11b6-48fd-8c51-6bdb3bf6d804` uploaded six new static bodies
and reused 6,961. It was not promoted: the canonical extensionless diagnostic URL
needed an explicit no-cache header too. The corrected candidate above reused
all bodies and passed 49 HTTP checks (47 static / two intentional Worker paths),
including byte hashes, canonical HTML cache policy, conditional responses and
isolation. Its real full-page CPU preflight initialized the subset, reported
`cpu-incomplete`, and requested zero game data/WASM. The renderer diagnostic
also drew actual generated pixels on the hosted preview.

Promote the corrected candidate only after the documented checks. No changes to
domains, DNS, permissions, private bucket access, original archive keys, billing
or data versions are needed. Rollback: promote the preceding production version
`4f4f65c4-af5e-4fec-af41-a0f57586366a` at 100%. Old immutable objects/caches remain;
its static entry continues using its original runtime. Existing full static-
hosting rollback instructions are unchanged.

### CPU subset promotion record

Current production version is `f9d000c9-5e70-43e7-b1d5-17a7ab6b9176` at 100%.
Code commit `6fa6bd6ee21d2d42ad3b498bb54a87943d0e8ab4` passed the local suite
and [Windows/Linux CI](https://github.com/entrenchedosx/GTA5/actions/runs/38212663818)
before promotion. Private R2 then replaced only `site/index.html` / 40,673 bytes,
SHA-256 `f683dd33e620849b4b0b6bdff87d66ed377923967c91846965a6919b2498f258`.
Production passed all 49 checks (47 static / two intentional Worker responses).
The real deployed diagnostic rendered its CPU-generated scene and responded to
camera input. No full CPU game support is advertised or established by this release.

Rollback retains the prior static production version, R2 objects, packs, caches
and saves. `.downloads/static-cpu-subset-verified-plan.json` records the exact
catalogue; upload and preview/production records are in ignored `.downloads/`.
Original archives, WASM/shaders, data version, bucket privacy and domain/DNS
configuration were not changed.
### 13 October 2026: WASM/mobile audit and low-memory loading release

Code commit `1b54c6511ae6649b99cccb87f947704fb454be9e` passed Windows and Linux
[CI checks](https://github.com/entrenchedosx/GTA5/actions/runs/38360978088).
Version `85865fff-f58f-492d-bcc4-fa283446899d` was promoted to **100%** production
traffic after its preview passed 49 HTTP checks (47 Static Assets responses and
two intentional Worker responses). Both public canary maps reached gameplay
at 1280×720, normal graphics, without reported GPU validation errors. This is
not a claim of full mobile support, CPU gameplay or a measured FPS speedup.

The promoted production site also passed all **49** HTTP checks. Its real root
entry reached GTA VI in 13.98 seconds with a warm persistent cache, no reported
GPU validation errors and no observed console warnings/errors. Raw verification
records remain ignored under `.downloads/mobile-audit-*-checks.json`.

Frozen runtime:
`/runtime/710ab54b4225a0e276af4bb0d6d0ef55fd86c8284c2cce47363efaad5b8921f0/`.
Static stage `.downloads/static-mobile-audit-final`: 6,967 files / 2,727,504,101
bytes, maximum 8,391,176 bytes. Wrangler uploaded three changed static bodies
and reused 6,964. Original WASM, shader/asset bytes, all 327 immutable packs,
metadata version and bootstrap URL are unchanged. The stage reuses hardlinks
to previously frozen asset bodies, never editable original asset files.

Private R2 candidate upload: 17 objects / 510,603 bytes, including immutable
runtime scripts, updated diagnostic reference and `site/delivery-mobile-audit.html`.
The final entry upload replaced only `site/index.html` / 45,742 bytes. No bucket
permissions, credentials, domains, routing or original archives were changed.

Rollback: promote retained version `f9d000c9-5e70-43e7-b1d5-17a7ab6b9176` to
100% with the normal `wrangler versions deploy <version>@100%` workflow. Its
Static Assets snapshot includes the previous entry and runtime; immutable
resources and game data remain compatible. For an R2-only fallback rollback,
the previous entry remains in `.downloads/cpu-subset-release-site/site/index.html`;
review and publish that retained site stage through the same uploader. Never
delete data, reset Git history or invalidate all caches to roll back.

See `WASM_MOBILE_AUDIT.md`, `PERFORMANCE_AUDIT.md` and `PERFORMANCE_RESULTS.md`
for exact scope, measurements and remaining iPhone/native-source limitations.


## 2026-10-13 low-end candidate

Both public maps reached gameplay on sequential warm repeats: GTA V 23.9 seconds, GTA VI 21.5 seconds, no captured warnings/errors and no radio playback in those repeats. Release implementation commits: `afb55b7`, `50257b5`, `16d873e`; the documentation-only follow-up records verification without changing the deployed runtime.

Production Worker version: `5156a958-ecd6-48c8-8c53-9376c7de4e1a`, promoted at 100% on 2026-10-13. Exact preview: https://5156a958-gta5-browser.aawad11-ma.workers.dev/ . The preview passed 51 delivery checks (49 Static Assets and two intended Worker responses). Earlier candidates `a572dfe9` and `12323756` exercised the same immutable runtime: GTA VI sustained gameplay and GTA V reached gameplay. The final HTML adds a tested exclusive-tab guard; CPU-mode rejection downloaded zero game-data assets. Windows/Linux CI runs `38443420833`, `38459398974` and `38460037467` passed.

Runtime: `/runtime/2bb726cf7a0b7ad177d5916974777d084d4ffe2f42845da8d8521478fcc21f22/`. Final frozen stage `.downloads/static-lowend-guard-final`, plan `.downloads/static-lowend-guard-plan.json`: 6,968 entries plus routing headers, with original 327 pack bodies, shaders, manifest and bootstrap unchanged. Initial upload added six bodies and reused 6,962; final HTML promotion added one body and reused 6,967. Original WASM remains unchanged on private R2. Runtime dependencies and canary entry were published before replacing `site/index.html`; the final pointer update was one 50,678-byte object. Old immutable resources remain available.

Promote the tested version with `wrangler versions deploy 5156a958-ecd6-48c8-8c53-9376c7de4e1a@100% --config cloudflare/wrangler.toml`; preserve variables/secrets and routing. Reproduce delivery verification with `python cloudflare/verify_static.py --base https://gta.ezgames.lol --stage .downloads/static-lowend-guard-final --plan .downloads/static-lowend-guard-plan.json --record .downloads/lowend-release-production-http.json`.

Rollback this candidate to the retained production version `85865fff-f58f-492d-bcc4-fa283446899d@100%` through the same versions-deploy command. For R2-only fallback, the retained prior entry is in `.downloads/mobile-audit-final-site/site/index.html`; review/publish only that entry through the existing publisher. Never delete assets, reset Git, force-push or invalidate immutable caches. Physical school-PC and iPhone results remain unverified.

Production verification checked all 25 selected GET bodies and isolation headers against the frozen candidate; 24 reported Static Assets. The diagnostic `delivery-audit.js` body matched exactly but retained an older edge-cache HIT with `X-Game-Delivery: worker`. A fresh query returned Static Assets. One targeted URL purge was accepted, but the cached label remained in subsequent checks. Consequently the strict 51-check production routing suite is **not passed**; its assertions remain unchanged. This is a routing-verification exception, not a body mismatch. It does not establish actual billed Worker invocations. No game-data packs, old runtime URLs or whole-zone caches were purged. Preview strict checks passed all 51. Public GTA V reached gameplay on a warm repeat in 23.9 seconds, without captured errors; no radio playback was started in that repeat.

## 2026-10-14 world startup release candidate

Implementation commits: `f78f820`, `80ef8e3`, `579a3cb`. Final candidate version `edcb8634-7f78-4589-a521-ae347a7c0e4c`; immutable runtime `/runtime/a73ab54d112708dc82010fd15d1b0a5bf609e0bfc3689f0b72dc1e37852a9076/`. Preview passed 55 strict delivery checks (53 Static Assets, two deliberate Worker responses). Stage `.downloads/static-world-startup-v4-20261014`, plan `.downloads/static-world-startup-v4-20261014-plan.json`: 7,137 unique entries, retaining all 327 original pack bodies and adding 167 bounded on-demand packs. Four changed static bodies were uploaded, 7,133 reused.

New immutable bootstrap: `/data/packs/bootstrap-0d1ce497b9d6fc3cc6950002b1130e3e133cf9cabf727c35b673fbfad8f09d42.json`. Index: `index-47862ab5fa28dcca6fff29ef5083d1f6206eacb825adb4787b2e8c962e856803.json`. Original assets, data version, legacy catalogue, cache namespaces, saves, bindings and domain configuration are preserved. New dependencies and the private-R2 canary were uploaded before the public entry switch. The reviewed main R2 entry plan replaces only `site/index.html` (51,407 bytes). Temporary analysis/captures/stages remain ignored.

Reproduce checks: `python performance/run_checks.py`, `python performance/test_server.py`, and `python cloudflare/verify_static.py --base https://gta.ezgames.lol --stage .downloads/static-world-startup-v4-20261014 --plan .downloads/static-world-startup-v4-20261014-plan.json --record .downloads/world-startup-v4-production-http.json`.

Promotion uses `wrangler versions deploy edcb8634-7f78-4589-a521-ae347a7c0e4c@100% --config cloudflare/wrangler.toml --yes`, followed by the reviewed R2 entry-only publish. Roll back with `wrangler versions deploy 5156a958-ecd6-48c8-8c53-9376c7de4e1a@100% --config cloudflare/wrangler.toml --yes`. For an R2-only rollback retain `.downloads/lowend-release-site/site/index.html` or `.downloads/static-lowend-guard-final/index.html` and review/publish the retained entry through `cloudflare/publish.py`. Do not delete immutable objects or reset Git. See `WORLD_STREAMING_FIX.md` for measurements and limitations. This section describes the prepared candidate; the verification note below records actual promotion status.

Promotion completed: `edcb8634-7f78-4589-a521-ae347a7c0e4c` at 100%; the R2 entry-only update uploaded one 51,407-byte object, SHA-256 `97590a6c65889dc617d79c0fe9ec781b998d435c6540c636f3b9bccaa36f6109`. Both public maps reached gameplay on warm stores without captured errors. All 27 selected body/isolation checks passed; strict public routing remains incomplete because one byte-identical io_worker.js carries a cached Worker label, despite a targeted purge. Fresh-query routing reports Static Assets. Preview passed 55/55. Windows/Linux implementation CI run 38694266328 passed. Details and exact observed timings are in WORLD_STREAMING_FIX.md; rollback target remains 5156a958.
