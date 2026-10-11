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

## Radio station release status

The local source adds the page radio control, player, and two original SVG
logos. Both supplied MP3s were tested in a temporary ignored local stage, then
removed from that stage; the original Downloads files are unchanged. No radio
MP3, logo, new runtime, or main HTML was uploaded to production for this
feature. The live game therefore remains on its previous version.

Public streaming rights for the two recordings have not been established. Do
not run the radio production upload until those rights are confirmed. The
expected hash-addressed R2 objects, if cleared, are:

- `site/radio/cachalot-onda-andar.b456927b52fe308b.svg`
- `site/radio/type-london-onda-andar.09d74e5eda7c3d2a.svg`
- `site/radio/audio/cachalot-onda-andar.69de7494e1a3419f.mp3`
- `site/radio/audio/type-london-onda-andar.ab70604f1e86cefb.mp3`

The two local recordings total 3,589,431 bytes (about 3.42 MiB); this release
has added no storage or hosting cost. The precise account cost after upload
depends on current R2 allowance and usage. The browser radio panel is a
page-level player: the supplied compiled engine does not expose its vehicle
radio station list or a music-only mixer control, so its original audio mix
continues underneath the browser player.
