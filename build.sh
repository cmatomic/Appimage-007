#!/bin/bash
ARCH=x86_64 ./pkg2appimage makemkv.yml
mkdir out
cd out/
zsyncmake *.AppImage
