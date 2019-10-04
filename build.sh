#!/bin/bash
./pkg2appimage makemkv.yml
mkdir out
cd out/
zsyncmake *.AppImage
