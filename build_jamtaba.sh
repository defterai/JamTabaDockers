#!/bin/bash
set -euxo pipefail

# Windows 32bit statically linked
docker build --force-rm -f Dockerfile.jamtaba-win32 -t defter/jamtaba-win32:v5.15.7 .

# Windows 64bit statically linked
docker build --force-rm -f Dockerfile.jamtaba-win64 -t defter/jamtaba-win64:v5.15.7 .

# Linux 64bit statically linked
docker build --force-rm -f Dockerfile.jamtaba-linux -t defter/jamtaba-linux:v5.15.7 .

read -p "Press enter to continue"
