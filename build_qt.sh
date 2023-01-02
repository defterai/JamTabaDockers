#!/bin/bash
set -euxo pipefail

docker pull ubuntu:20.04

# Ubuntu statically linked
docker build --force-rm -f Dockerfile.linux -t defterai/qt-linux:v5.15.2 .

# MXE (M cross environment)
docker build --force-rm -f Dockerfile.mxe -t defterai/qt-mxe:v5.15.6 .

# Windows 32bit statically linked
docker build --force-rm -f Dockerfile.win32 -t defterai/qt-win32:v5.15.6 .

# Windows 64bit statically linked
docker build --force-rm -f Dockerfile.win64 -t defterai/qt-win64:v5.15.6 .

read -p "Press enter to continue"
