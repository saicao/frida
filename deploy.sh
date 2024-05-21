make core-ios  
echo "run scp" 
scp -P 2222 build/frida-ios-arm64/usr/lib/frida/frida-agent.dylib  root@192.168.43.121:/var/jb/usr/lib/frida
# scp  build/frida-ios-arm64/usr/lib/frida/frida-agent.dylib  root@my-iphone:/var/jb/usr/lib/frida
# export MACOS_CERTID=frida-cert                                                                                                                                    ─╯
#export IOS_CERTID=frida-cert
#export WATCHOS_CERTID=frida-cert
#export TVOS_CERTID=frida-cert