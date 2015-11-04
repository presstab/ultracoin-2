#!/bin/sh

BUILDNAME=build-ultracoin-qt-Desktop_Qt_5_5_1_clang_64bit-Release
#
#  Depends on brew, npm and appdmg:
#  Install brew for OSX
#     brew install npm
#     npm install -f appdmg

rm -rf Ultracoin-Qt.app
cp -r ../../$BUILDNAME/UltraCoin-Qt.app .
rm Ultracoin-Qt.dmg

/usr/local/Qt5.5.1/5.5/clang_64/bin/macdeployqt UltraCoin-Qt.app -verbose -executable=UltraCoin-Qt.app/Contents/MacOS/UltraCoin-Qt
appdmg appdmg.json UltraCoin-Qt.dmg
