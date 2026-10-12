This unmodified, self-contained module is vendored for independent CPU shader
regression checks only. It is excluded from the public Static Assets catalogue
and is not a runtime game dependency.

- Upstream: https://github.com/brendan-duncan/wgsl_reflect
- Package: `wgsl_reflect@1.6.0`, MIT; full notice in LICENSE.md.
- npm tarball SHA-512 integrity:
  `sha512-p2bJTZXaS4/2L2NlvRIcnI6ZJJSF1kxvH5RYZzGw958Z2PDAw6Cl13cgbE9CWEqWZOFtnlCLXM9ZYdifnJ0FJg==`
- `wgsl_reflect.module.js` renamed to `wgsl_reflect.mjs`, without changing bytes.
  SHA-256: `74c61e5fe3dfe6dc2cceeb9924347c9c897d94e4bff16201d1418f25db9f2d9e`.
- Upstream source map is not needed for test execution; its trailing reference
  is retained to keep the module bytes unchanged.

Tests use documented `WgslDebug` APIs. For this game's translated numeric
attributes, the 1.6.0 debugger compares literal suffixed strings: `0u`, `1u`.
Bindings and stage input keys explicitly match those declarations. Using plain
numeric keys silently produced zero inputs/constants in the investigation.
This integration detail is not evidence of whole-game shader compatibility.
