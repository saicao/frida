set -e
set -x


export MESON_BUILD_ROOT=build.ios
export MACOS_CERTID=frida-cert
export IOS_CERTID=frida-cert
export WATCHOS_CERTID=frida-cert
export TVOS_CERTID=frida-cert

##check if the meson build not exit reconfigure
if [ ! -d "$MESON_BUILD_ROOT" ]; then
    ./configure --build=macos-arm64 \
    --host=ios-arm64e --enable-symbols \
    --without-prebuilds=sdk:host \
    --disable-frida-python \
    --disable-inject \
    --disable-gadget \
    --disable-frida-tools \
    --disable-graft-tool \
    --prefix $(pwd)/$MESON_BUILD_ROOT/install
fi


make install
ssh my-iphone "rm -rf ~/frida"
scp -r build.ios/install my-iphone:~/frida
