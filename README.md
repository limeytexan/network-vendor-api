# network-vendor-api

Mock package repository reproducing part of a customer build graph for
FloxHub Factory demonstrations. Each package sleeps for a fixed number of
seconds and writes its name and the store paths of its catalog inputs.

| package | build time | catalog inputs |
|---|---|---|
| `python3Packages.network-vendor-api` | 6 s | `flox`, `python3Packages.vault-client` |
