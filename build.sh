#!/bin/bash
set -euxo pipefail

docker pull ubuntu:20.04

# Ubuntu statically linked
docker build --force-rm -f Dockerfile.linux -t defterai/jam-taba-linux:v5.15.2 .

# MXE (M cross environment)
docker build --force-rm -f Dockerfile.mxe -t defterai/jam-taba-mxe:v5.15.2 .

# Windows 32bit statically linked
docker build --force-rm -f Dockerfile.win32 -t defterai/jam-taba-win32:v5.15.2 .

# Windows 64bit statically linked
docker build --force-rm -f Dockerfile.win64 -t defterai/jam-taba-win64:v5.15.2 .
