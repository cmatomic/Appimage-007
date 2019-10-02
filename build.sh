#!/bin/bash
ARCH=x86_64 ./pkg2appimage makemkv.yml

cd out/
zsyncmake *.AppImage
