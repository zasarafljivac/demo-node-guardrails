#!/usr/bin/env bash
set -euo pipefail

npm install axios@0.21.0 --save --ignore-scripts

echo
echo "Added axios@0.21.0 for the demo."
echo "Next step: commit package.json and package-lock.json, then open a pull request."
