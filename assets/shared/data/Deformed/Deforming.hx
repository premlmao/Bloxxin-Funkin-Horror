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
        
}

