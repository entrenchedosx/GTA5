# Browser radio stations

The page adds a compact, symmetric two-station selector that appears when the
game world is ready. Opening it lazy-loads one small player script and the two
SVG logos; the MP3s are requested only when the player selects a station. The
player uses one media element per station, resumes a station at its paused
position, pauses it when switching, and pauses the active stream when the page closes.
Station selection requires a click, so it does not autoplay. Volume is exposed
in the panel.

The existing engine in this checkout is a compiled WebAssembly binary; its
native radio wheel and station list are not in the supplied source. The web
player therefore runs as a page overlay alongside the engine's existing audio
mix. It does not claim to replace the built-in vehicle-radio station or isolate
game music from sound effects. Replacing that internal station requires the
engine's native radio/mixer source or a published engine control for it.

The original local source files map as follows:

| Station | Local source filename | Public object name after rights clearance |
|---|---|---|
| CACHALOT — ONDA ANDAR | `cachalot #2016 [prod. onda andar].mp3` | `cachalot-onda-andar.<content-hash>.mp3` |
| TYPE LONDON — ONDA ANDAR | `ONDA ANDAR – type london.mp3` | `type-london-onda-andar.<content-hash>.mp3` |

Both original filenames are retained in the staging mapping in
`cloudflare/prepare_site.py`. Audio files are not included in Git or copied into
the published site unless they are explicitly passed with `--audio-dir`.
Distribution rights for both recordings must be confirmed before that audio
upload or main-page deployment. Local test audio is copied only into ignored
temporary storage; the originals in Downloads remain unchanged.

To stage the two licensed source files after confirming streaming rights, run:

```powershell
python cloudflare/prepare_site.py --audio-dir "$env:USERPROFILE\Downloads" --output .downloads/radio-release
```

Review the generated immutable names and upload plan before using the existing
Cloudflare deployment helper. The content-hashed MP3 paths return
`audio/mpeg`, same-origin isolation headers and immutable cache policy. The
asset requests occur only after a player selection. The additional audio
storage is 3,589,431 bytes (about 3.42 MiB) for the two local files; actual
monthly cost depends on the current account's R2 allowance and use.

Original station artwork is in `mirror/playgta5.com/radio/`. No external fonts,
images or music APIs are used.

Local verification used the two supplied MP3s in a temporary local web stage.
Both stations played in the browser, switching paused the previous track, the
pause control worked, the two cards remained equal-sized at a 430 px viewport,
and the browser console reported no radio errors. Automated player tests also
cover failed playback and disposal. This was a radio-component preview rather
than a full WASM game session.
