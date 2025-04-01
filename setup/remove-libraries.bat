@echo off
color 0a
cd ..
@echo on
echo Installing dependencies.
haxelib remove lime
haxelib remove openfl
haxelib remove flixel
haxelib remove flixel-addons
haxelib remove flixel-ui
haxelib remove flixel-tools
haxelib remove tjson
haxelib remove hxCodec
haxelib remove flxanimate
haxelib remove linc_luajit
haxelib remove hxdiscord_rpc
haxelib list
echo Finished!
pause