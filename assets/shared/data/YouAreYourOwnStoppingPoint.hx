import psychlua.LuaUtils;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxG;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;

import flixel.text.FlxText;


import flixel.math.FlxMath;


var sixtyxcuzimlazy:Float;


function onCreate()
{ 
    sixtyxcuzimlazy = dad.x;
    dad.x = -1000;
}


function onBeatHit()
{
switch (curBeat)
{
    case 92:
        modchartTweens.set('e', FlxTween.tween(dad, {x: sixtyxcuzimlazy}, 1.3, {ease: FlxEase.quartOut}));
    case 222:
        dad.camera = FlxG.cameras.list[FlxG.cameras.list.length - 2];
        dad.setPosition(430, 120);
        dad.alpha = 0.5;
    case 282:
        modchartTweens.set('a', FlxTween.tween(dad, {x: dad.x + 1000}, 1, {ease: FlxEase.quartIn}));
    case 286:
        dad.alpha = 1;
        dad.camera = FlxG.cameras.list[FlxG.cameras.list.length - 3];
        dad.setPosition(sixtyxcuzimlazy, 450);
}
}