package substates;

import flixel.FlxSubState;

class ControlsSubState extends MusicBeatSubstate
{
	public function new()
	{
		super();

        var backg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		backg.scrollFactor.set();
		backg.alpha = 0;
		add(backg);
		FlxTween.tween(backg, {alpha: 0.9}, 1, {ease: FlxEase.cubeInOut});
        
        var control:FlxText = new FlxText(0, 180, 0,
            "SCROLL WHEEL to navigate the menu\n
            HOVER and LEFT CLICK on a song to enter that song", 32);
		control.setFormat(Paths.font("Comic Sans MS.ttf"), 32, FlxColor.WHITE, CENTER);
		control.alignment = "center";
        control.screenCenter();
		control.alpha = 0;
        add(control);
		FlxTween.tween(control, {alpha: 1}, 1, {ease: FlxEase.cubeInOut});
	}

	override function update(elapsed:Float)
	{
		if(controls.BACK) {
			close();
		}
		super.update(elapsed);
    }
}