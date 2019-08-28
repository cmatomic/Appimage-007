#!/bin/bash
./pkg2appimage makemkv-beta.yml

cd out/
zsyncmake *.AppImage
