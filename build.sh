#/bin/bash

#sudo apt-get install build-essential pkg-config libc6-dev libssl-dev libexpat1-dev libavcodec-dev libgl1-mesa-dev libqt4-dev zlib1g-dev



mkdir makemkvbulid
cd makemkvBuild
mkdir makemkv.AppDir

wget https://www.makemkv.com/download/makemkv-oss-1.14.5.tar.gz

tar xf makemkv-oss-1.14.5.tar.gz

cd makemkv-bin-1.14.5

./configure

make
make install =../makemkv.AppDir

cd ..

wget https://www.makemkv.com/download/makemkv-bin-1.14.5.tar.gz

tar xf makemkv-bin-1.14.5.tar.gz

cd makemkv-bin-1.14.5

./configure

make

make install -y =../makemkv.AppDir

cd ..

wget https://raw.githubusercontent.com/cmatomic/makemkv-AppImage/master/pkg2appimage

chmod +x appimagetool

./appimagetool --no-appstream makemkv.AppDir

mkdir ../out
mv makemkv.AppImage ../out
ls -lh ../out/*.AppImage
cd ../out/
zsyncmake *.AppImage



  

