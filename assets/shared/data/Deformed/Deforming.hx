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

    if (curSection > 3)
    {
        if (curBeat %4 == 0)
        {
            FlxTween.tween(Lib.application.window, {x: FlxG.random.int(0, 800), y: FlxG.random.int(0, 600)}, 0.5, {ease: FlxEase.cubeInOut});
        } 
    }

}

function onDestroy()
{
    FlxTween.tween(Lib.application.window, {x: 340, y: 200}, 1, {ease: FlxEase.cubeInOut});
}
    

