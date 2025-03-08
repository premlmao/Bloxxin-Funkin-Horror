import psychlua.LuaUtils;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxG;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;

import flixel.text.FlxText;
import flixel.text.FlxTextBorderStyle;

import flixel.FlxState;
import flixel.math.FlxMath;

var randomize:FlxText = new FlxText();
var mechanics:Array<String> = ["Random Note Pos"];

function onCreate()
{
    randomize.setFormat(Paths.font('Comic Sans MS.ttf'), 80, FlxColor.RED, 'center', FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
    randomize.borderColor = FlxColor.BLACK;
    randomize.text = 'RANDOMIZE!';
    randomize.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
    randomize.screenCenter();
    randomize.visible = false;
    randomize.alpha = 1;
    add(randomize);
}

function onBeatHit()
{
    if (curSection > 39 && curSection < 56)
        {
            if (curBeat %4 == 0)
            {
                modchartTweens.set('hudspin', FlxTween.tween(camHUD, {angle: camHUD.angle + 90}, 1, {ease: FlxEase.cubeOut}));
            }
        }
    switch (curBeat)
    {
        case 32,96,160,224,256:
            randomize.visible = true;
            modchartTweens.set('randoalpha', FlxTween.tween(randomize, {alpha: 0}, 1, {ease: FlxEase.quadIn}));
            modchartTweens.set('randoscale', FlxTween.tween(randomize.scale, {x: 1.5, y: 1.5}, 1, {ease: FlxEase.quadIn}));
        case 35,99,163,227,269:
            randomize.visible = false;
            randomize.alpha = 1;
            randomize.scale.set(1,1);
    }
}