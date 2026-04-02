#!/usr/bin/env bash
set -euo pipefail

mkdir -p demo-output
cat > demo-output/demo-secret.txt <<'SECRET'
# Fake token for scanner demo only. Never use in a real system.
GITHUB_TOKEN=ghp_abcdefghijklmnopqrstuvwxyz1234567890
SECRET

echo
echo "Added a fake GitHub token pattern for the demo."
echo "Next step: commit demo-output/demo-secret.txt and open a pull request."
