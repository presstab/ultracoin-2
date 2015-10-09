#!/bin/sh

#
#  Depends on brew, npm and appdmg:
#  Install brew for OSX
#     brew install npm
#     npm install -f appdmg

rm -rf Ultracoin-Qt.app
cp -r ../../build-ultracoin-qt-Desktop_Qt_5_4_0_clang_64bit-Release/UltraCoin-Qt.app .
rm Ultracoin-Qt.dmg

/usr/local/Cellar/qt/4.8.6/bin/macdeployqt UltraCoin-Qt.app -verbose -executable=UltraCoin-Qt.app/Contents/MacOS/UltraCoin-Qt
appdmg appdmg.json UltraCoin-Qt.dmg
