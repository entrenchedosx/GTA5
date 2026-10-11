# Browser radio stations

The page adds a compact, symmetric two-station selector that appears when the
game world is ready. Opening it lazy-loads one small player script and the two
SVG logos; the MP3s are requested only when the player selects a station. The
player uses one media element per station, resumes a station at its paused
position, pauses it when switching, and pauses the active stream when the page closes.
Station selection requires a click, so it does not autoplay. Volume is exposed
in the panel.

The existing engine in this checkout is a compiled WebAssembly binary. Static
inspection found no browser API for registering or selecting native stations;
the page receives the engine's mixed audio ring but cannot change its station
list. The web player therefore runs as a page overlay alongside the engine's
existing audio mix. It does not replace the built-in vehicle-radio station or
isolate game music from sound effects. Putting tracks in the in-game radio wheel
requires compatible native engine source/build support or a documented station
control API, neither of which is present in this checkout.

The original local source files map as follows:

| Station | Local source filename | Live public object |
|---|---|---|
| CACHALOT — ONDA ANDAR | `cachalot #2016 [prod. onda andar].mp3` | `/radio/audio/cachalot-onda-andar.69de7494e1a3419f.mp3` |
| TYPE LONDON — ONDA ANDAR | `ONDA ANDAR – type london.mp3` | `/radio/audio/type-london-onda-andar.ab70604f1e86cefb.mp3` |

Both original filenames are retained in the staging mapping in
`cloudflare/prepare_site.py`. The maintainer confirmed public streaming rights
for both recordings on 11 October 2026. The recordings remain outside Git; the
original files in Downloads were left unchanged.

To stage the two licensed source files for a later release, run:

```powershell
python cloudflare/prepare_site.py --audio-dir "$env:USERPROFILE\Downloads" --output .downloads/radio-release
```

Review the generated immutable names and upload plan before using the existing
Cloudflare deployment helper. The live content-hashed MP3 paths return
`audio/mpeg`, same-origin isolation headers and immutable cache policy. The
asset requests occur only after a player selection. The additional audio
storage is 3,589,431 bytes (about 3.42 MiB) for the two local files; actual
monthly cost depends on the current account's R2 allowance and use.

The release is live on `gta.ezgames.lol`. Cloudflare Worker version
`d241cb89-efe1-4b56-9b8c-39fa38e1ab28` is deployed at 100%. Production
verification on 11 October 2026 fetched all 17 changed paths; each new runtime,
logo, and MP3 matched its planned SHA-256, and both MP3s returned `audio/mpeg`
with a one-year immutable cache policy. The entry page was published last,
after its hashed runtime and radio objects. `gta.kerncode.art` did not resolve
from the test environment, so its public availability was not verified.

Original station artwork is in `mirror/playgta5.com/radio/`. No external fonts,
images or music APIs are used.

Local verification used the two supplied MP3s in a temporary local web stage.
Both stations played in the browser, switching paused the previous track, the
pause control worked, the two cards remained equal-sized at a 430 px viewport,
and the browser console reported no radio errors. Automated player tests also
cover failed playback and disposal. This was a radio-component preview rather
than a full WASM game session.
