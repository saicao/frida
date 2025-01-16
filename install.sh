#!/bin/bash
#mkdir -p build/host
#../../configure --build=macos-arm64  --host=ios-arm64 --enable-symbols --without-prebuilds=sdk:host --prefix=build/install
#mkdir -p build/client
#../../configure  --enable-symbols  --enable-frida-tools --prefix=build/install

export MACOS_CERTID=frida-cert 
export IOS_CERTID=frida-cert
export WATCHOS_CERTID=frida-cert
export TVOS_CERTID=frida-cert
BUILD_DIR=build/frida-ios-arm64e
INSTALL_DIR=build/frida-ios-arm64e/install
cd ${BUILD_DIR}
make install
cd ../../
#lazy copy all files from install directory into iphone
ldid -Ssubprojects/frida-core/server/frida-server.xcent ${INSTALL_DIR}/bin/frida-server
scp -r ${INSTALL_DIR} my-iphone:~/frida
