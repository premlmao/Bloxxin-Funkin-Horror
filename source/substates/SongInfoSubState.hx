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
    var bg:FlxSprite;
    var song:String;
	var difficulty:Int;

    public function new(song:String, difficulty:Int)
	{
        this.song = song;
		this.difficulty = difficulty;

        var name:String = song;

        super();
        
        bg = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
        bg.alpha = 0;
        bg.scrollFactor.set();
        add(bg);

        var portrait:FlxSprite = new FlxSprite().loadGraphic(Paths.image('pauseShit/portrait_' + name));
		portrait.antialiasing = ClientPrefs.data.antialiasing;
		portrait.scale.set(1, 1);
		portrait.updateHitbox();
		portrait.x = -700;
		portrait.y = 100;
        add(portrait);

        FlxTween.tween(bg, {alpha: 0.8}, 1, {ease: FlxEase.cubeInOut});
        FlxTween.tween(portrait, {x: -115}, 1, {ease: FlxEase.backInOut});

        switch (name)
		{
			case 'Deadline':
				portrait.y = 125;
			case 'Copied':
				portrait.y = 150;
			case 'Predecessor':
				portrait.x -= 280;
		}

        trace("viewing:" + name);
    }

    override function update(elapsed:Float)
    {
        if(controls.BACK)
        {
            FlxG.sound.play(Paths.sound('scrollMenu'));
            close();
            trace("stopped viewing");
        }
        super.update(elapsed);
    }
}