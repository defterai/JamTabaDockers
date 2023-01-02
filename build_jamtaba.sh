#!/bin/bash
set -euxo pipefail

# Windows 32bit statically linked
docker build --force-rm -f Dockerfile.jamtaba-win32 -t defterai/jamtaba-win32:v5.15.6 .

read -p "Press enter to continue"
