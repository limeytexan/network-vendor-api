{ runCommand, catalogs }:
let
  dep_python3Packages_vault_client = catalogs.brantley.python3Packages.vault-client;
in
runCommand "network-vendor-api-1" { pname = "network-vendor-api"; version = "1"; inputs = [ dep_python3Packages_vault_client ]; } ''
  sleep 6
  mkdir -p "$out/share"
  printf '%s\n' "python3Packages.network-vendor-api" > "$out/share/name"
  for i in $inputs; do printf '%s\n' "$i"; done > "$out/share/inputs"
''
