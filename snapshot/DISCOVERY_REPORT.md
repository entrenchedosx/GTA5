# Public discovery report

- Input inventory: 12480 paths; derived directories: 224.
- Requests: 281; status counts: {'None': 158, '522': 32, '502': 5, '404': 83, '200': 3}.
- Additions: 2 files / 7372 bytes.
- Scope: standard discovery files, source-map/build candidates, every known directory, then reachable same-origin textual references; untested ancestor closure including `/` and `/b/`, plus `/sw.js` and `/b/8b0b5899ed/prejs.js`.
- Limits: no authenticated/private probing or blind dictionary enumeration; directory non-listing does not establish that no unlinked children exist. The first phase had 158 timeouts and 37 5xx responses, so those attempts show origin unavailability during capture, not absence. The 27 short-timeout ancestor follow-ups returned 26 HTTP 404 and one generic fallback root response; no additional assets were verified.
