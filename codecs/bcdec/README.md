# Bounded BC decoder investigation

Upstream: https://github.com/iOrange/bcdec/tree/80859ed3b7afb1c527a2a99d70c61457bea72d0c

`bcdec.h` is unchanged, SHA-256 `134520764d96f70a27db814173616c89ad85db95fbd3328417c7a8c77e7ca189`. Its MIT alternative is selected; see LICENSE. The wrapper supports BC1–BC7, including signed BC4/5/6H, with a fixed 1 MiB memory32 heap, no imports, allocation or memory growth. BC6H becomes RGBA16Float with opaque alpha; BC4/5 retain R/RG channels.

Build with official WASI SDK clang/wasm-ld:

```sh
python codecs/bcdec/build.py --clang /path/to/clang
node performance/test_bc_decoder.cjs
wasm-validate codecs/bcdec/decoder.wasm
```

The checked-in decoder was built with official WASI SDK 34 (clang 23.1.0-rc3). The downloaded Windows distribution SHA-256 was cccb5c323a9b34f0349a9b09e8804a0a7632c68c3310f4b5f437ed57d7e71d8f, verified against its official release digest. Binary SHA-256: 8dd4ee3300fe736163637b07a8ce28ee0c25581dfde5d8cf425a32019849234d; 25,076 bytes.

This is analysis tooling, not an enabled game backend. A valid runtime integration must preserve the engine's encoded BC readbacks and compressed/uncompressed bit-copy operations, bound decoded GPU memory, handle all native subresources and preserve typed/sRGB views. Uncompressed BC1/BC3/BC7 expands texture storage 4–8 times; the observed low-quality scene already allocates about 750–800 MB of textures. A decoder alone does not establish a viable mobile memory budget or repair shared memory64 compatibility. No BC feature is fabricated, and unsupported graphics devices still stop before expensive game-data downloads.
