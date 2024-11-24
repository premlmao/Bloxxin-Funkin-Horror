import psychlua.LuaUtils;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxG;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import openfl.Lib;

var bg:FlxSprite = new FlxSprite(-300, -100, Paths.image("stages/elevator"));


function onCreate()
{
    bg.scale.set(1, 1);
    insert(game.members.indexOf(LuaUtils.getLowestCharacterGroup()), bg);
    bg.updateHitbox();

    bg.visible = true;
}



function onBeatHit()
{
    if (curBeat > 95 && curBeat < 160 || curBeat > 351 && curBeat < 416)
    {
        bg.color = FlxColor.fromRGB(255,100,100);
        modchartTweens.set('Whi', FlxTween.color(bg, 0.15, bg.color, FlxColor.WHITE));
    }
}

