#!/bin/bash
./pkg2appimage makemkv.yml

cd out/
zsyncmake *.AppImage
