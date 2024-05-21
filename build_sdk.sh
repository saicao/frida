
export FRIDA_HOST=ios-arm64
make -f Makefile.sdk.mk
 
FRIDA_HOST=macos-arm64 
make -f Makefile.sdk.mk

FRIDA_HOST=macos-arm64e 
make -f Makefile.sdk.mk
cp build/sdk-macos-arm64.tar.bz2 build/sdk-macos-arm64e.tar.bz2  build/sdk-ios-arm64.tar.bz2  local_sdk