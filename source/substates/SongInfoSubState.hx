package substates;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.addons.display.FlxBackdrop;
import flixel.addons.display.FlxGridOverlay;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.tweens.misc.NumTween;
import flixel.tweens.misc.VarTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import lime.utils.Assets;

import states.PlayState;

import backend.WeekData;
import backend.Highscore;

import flixel.FlxSubState;

class SongInfoSubState extends MusicBeatSubstate
{
    public static var firstStart:Bool = true;

    var bg:FlxSprite;
    // var robloxBackdrop:FlxBackdrop;
    var portrait:FlxSprite;

    var song:String;
	var difficulty:Int;
	var week:Int;

    override function create()
	{
        bg = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
        bg.alpha = 0;
        bg.scrollFactor.set();
        add(bg);

        /*
        robloxBackdrop = new FlxBackdrop(Paths.image('mainmenuUI/robloxBackdrop'), XY);
		robloxBackdrop.velocity.set(100, 100);
		robloxBackdrop.scale.set(0.75, 0.75);
		robloxBackdrop.alpha = 0.4;
		add(robloxBackdrop);
        if (firstStart)
			FlxTween.tween(robloxBackdrop, {angle: 180}, 5, {ease: FlxEase.linear, type: FlxTweenType.LOOPING});
        */

        portrait = new FlxSprite().loadGraphic(Paths.image('pauseShit/portrait_' + PlayState.curSong));
		portrait.antialiasing = ClientPrefs.data.antialiasing;
		portrait.scale.set(1, 1);
		portrait.updateHitbox();
		portrait.x = -700;
		portrait.y = 100;
        add(portrait);

        FlxTween.tween(portrait, {x: -115}, 0.75, {ease: FlxEase.circOut});

        trace("theyre viewing the desc");

        super.create();
    }

    override function update(elapsed:Float)
    {
        bg.alpha += elapsed * 1.5;
        if(bg.alpha > 0.8) bg.alpha = 0.8;

        if(controls.BACK)
        {
            FlxG.sound.play(Paths.sound('scrollMenu'));
            close();
            trace("they stopped viewing the desc");
        }
        super.update(elapsed);
    }
}
