package substates;

import states.BloxxinFreeplayState;

import backend.WeekData;
import backend.Highscore;

import flixel.FlxSubState;

class ControlsSubState extends MusicBeatSubstate
{
	var bg:FlxSprite;
    var control:FlxText;

	public function new()
	{

        bg = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		bg.scrollFactor.set();
		add(bg);
		FlxTween.tween(bg, {alpha: 1}, 1, {ease: FlxEase.sineIn});
        
        control = new FlxText(0, 180, 
            "SCROLL WHEEL to navigate the menu\n
            HOVER and LEFT CLICK on a song to enter that song\n
            HOVER and PRESS THE V KEY to view that song's information", true);
		control.setFormat(Paths.font("Comic Sans MS.ttf"), 64, FlxColor.WHITE, CENTER);
        control.screenCenter();
		control.alpha = 0;
        add(control);
		FlxTween.tween(control, {alpha: 1}, 1, {ease: FlxEase.sineIn});

		super();
	}

	override function update(elapsed:Float)
	{
		if(controls.BACK) {
			FlxG.sound.play(Paths.sound('cancelMenu'), 1);
			close();
		}
		super.update(elapsed);
    }
}