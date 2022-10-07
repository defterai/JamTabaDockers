# JamTaba docker development environment
JamTaba compile environment for Docker with support C++ Qt 5.15.2 static builds

* Linux
```
docker build --force-rm -f Dockerfile.linux -t defterai/qt-linux:v5.15.2 .
docker run --rm -it -v $(pwd):/app defterai/qt-linux:v5.15.2
```

* Windows 64bit Cross-compiled
```
docker build --force-rm -f Dockerfile.win64 -t defterai/qt-win64:v5.15.2 .
docker run --rm -it -v $(pwd):/app defterai/qt-win64:v5.15.2
cd /app
qmake
make -j $(nproc)
```
