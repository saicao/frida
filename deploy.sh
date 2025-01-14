make core-ios  
echo "run scp" 
#  为什么我的codesign 签名出来的东西无法执行？？？？用不了呢？？？？？
ldid -Sfrida-core/server/frida-server.xcent build/frida-ios-arm64/usr/bin/frida-server
# scp -P 2222 -r build/frida-ios-arm64  root@192.168.43.162:/var/jb/var/root
scp -r build/frida-ios-arm64  my-iphone:/var/jb/var/root
# scp  build/frida-ios-arm64/usr/lib/frida/frida-agent.dylib  root@my-iphone:/var/jb/usr/lib/frida