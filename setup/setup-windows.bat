@echo off
color 0a
cd ..
@echo on
echo Installing dependencies.
haxelib install lime 8.0.1
haxelib set lime 8.0.1
haxelib install openfl 9.3.2
haxelib set openfl 9.3.2
haxelib install flixel 5.5.0
haxelib set flixel 5.5.0
haxelib install flixel-addons 3.2.1
haxelib set flixel-addons 3.2.1
haxelib install flixel-ui 2.5.0
haxelib set flixel-ui 2.5.0
haxelib install flixel-tools 1.5.1
haxelib set flixel-tools 1.5.1
haxelib install tjson 1.4.0
haxelib set tjson 1.4.0
haxelib install hxdiscord_rpc 1.2.4
haxelib set hxdiscord_rpc 1.2.4
haxelib git hxCodec https://github.com/polybiusproxy/hxCodec.git
haxelib git flxanimate https://github.com/ShadowMario/flxanimate dev
haxelib git linc_luajit https://github.com/superpowers04/linc_luajit.git
haxelib list
echo Finished!
pause
