import psychlua.LuaUtils;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxG;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import openfl.Lib;

function onBeatHit()
{
    switch(curBeat)
    {
        case 12:
            Lib.application.window.title = "THE REALM";
        case 13:
            Lib.application.window.title = "THE REALM WITCH GOD";
        case 14:
            Lib.application.window.title = "THE REALM WITCH GOD FAILED";
        case 15:
            Lib.application.window.title = "THE REALM WITCH GOD FAILED TO CONTROL";
    }

    if (curSection > 3 && curSection < 83)
    {
        if (curBeat %4 == 0)
        {
            FlxTween.tween(Lib.application.window, {x: FlxG.random.int(0, 600), y: FlxG.random.int(0, 400)}, 0.5, {ease: FlxEase.cubeInOut});
        }
    }
}

function onUpdatePost()
{
    if (curSection > 83 && curSection < 100)
    {
        switch (dad.animation.curAnim.name)
        {
            case 'idle':
                Lib.application.window.x = 340;
                Lib.application.window.y = 200;
            case 'singLEFT':
                Lib.application.window.x = 290;
            case 'singRIGHT':
                Lib.application.window.x = 390;
            case 'singUP':
                Lib.application.window.y = 150;
            case 'singDOWN':
                Lib.application.window.y = 250;
        }
    }
}

function onDestroy()
{
    FlxTween.tween(Lib.application.window, {width: 1280, height: 720, x: 340, y: 200}, 1, {ease: FlxEase.cubeInOut});
    Lib.application.window.resizable = true;
    Lib.application.window.fullscreen = false;
}
    

