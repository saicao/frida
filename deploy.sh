make core-ios  
echo "run scp" 
scp -P 2222 build/frida-ios-arm64/usr/lib/frida/frida-agent.dylib  root@172.20.10.11:/var/jb/usr/lib/frida
# scp  build/frida-ios-arm64/usr/lib/frida/frida-agent.dylib  root@my-iphone:/var/jb/usr/lib/frida