package states;

import flixel.FlxSubState;

import flixel.effects.FlxFlicker;
import lime.app.Application;
import flixel.addons.transition.FlxTransitionableState;

class FlashingState extends MusicBeatState
{
	public static var leftState:Bool = false;

	var bg:FlxSprite;
	var warnText:FlxText;
	override function create()
	{
		super.create();

		bg = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);

		warnText = new FlxText(0, 0, FlxG.width,
			"Hey,\n
			   This mod contains some flashing lights!\n
			    So uh go to the options menu to disable them.\n
			    \n
			  You can press enter to skip this message.\n
			  we hope you have a pleasant experience with this mod.\n
			  Thank you. :)",
			32);
		warnText.setFormat("Gotham Black Regular.ttf", 32, FlxColor.WHITE, CENTER);
		warnText.screenCenter(Y);
		warnText.y += -1000;
		add(warnText);
		FlxTween.tween(warnText, {y: 82}, 2, {ease: FlxEase.quintOut, type: FlxTweenType.ONESHOT});
	}

	override function update(elapsed:Float)
	{
		if(!leftState) {
			var accepted:Bool = controls.ACCEPT;
			if (accepted) {
				leftState = true;
				FlxTransitionableState.skipNextTransIn = true;
				FlxTransitionableState.skipNextTransOut = true;
				ClientPrefs.data.flashing = true;
				ClientPrefs.saveSettings();
				FlxG.sound.play(Paths.sound('confirmMenu'));
				FlxTween.tween(warnText, {y: -917}, 1.5, {ease: FlxEase.cubeIn, type: FlxTweenType.ONESHOT});
				FlxTween.tween(warnText, {alpha: 0}, 1, {
					onComplete: function (twn:FlxTween) {
						MusicBeatState.switchState(new TitleState());
					}
				});
			}
		}
		super.update(elapsed);
	}
}
