#!/bin/sh

#
#  Depends on brew, npm and appdmg:
#  Install brew for OSX
#     brew install npm
#     npm install -f appdmg

rm Ultracoin-Qt.app
rm Ultracoin-Qt.dmg
make
/usr/local/Cellar/qt/4.8.6/bin/macdeployqt UltraCoin-Qt.app -verbose -executable=UltraCoin-Qt.app/Contents/MacOS/UltraCoin-Qt
appdmg appdmg.json UltraCoin-Qt.dmg
