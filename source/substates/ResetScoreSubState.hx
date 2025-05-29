package substates;

import backend.WeekData;
import backend.Highscore;

import flixel.FlxSubState;

class ResetScoreSubState extends MusicBeatSubstate
{
	var bg:FlxSprite;
	var FlxTextArray:Array<FlxText> = [];
	var onYes:Bool = false;
	var yesText:FlxText;
	var noText:FlxText;

	var song:String;
	var difficulty:Int;
	var week:Int;

	// Week -1 = Freeplay
	public function new(song:String, difficulty:Int, character:String, week:Int = -1)
	{
		this.song = song;
		this.difficulty = difficulty;
		this.week = week;

		super();

		var name:String = song;
		if(week > -1) {
			name = WeekData.weeksLoaded.get(WeekData.weeksList[week]).weekName;
		}

		bg = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		bg.alpha = 0;
		bg.scrollFactor.set();
		add(bg);

		var tooLong:Float = (name.length > 18) ? 0.8 : 1; //Fucking Winter Horrorland
		var text:FlxText = new FlxText(0, 180, "Reset the score of", true);
		text.x = 360;
		text.setFormat(Paths.font("Comic Sans MS.ttf"), 64, FlxColor.WHITE);
		FlxTextArray.push(text);
		text.alpha = 0;
		add(text);
		var text:FlxText = new FlxText(0, text.y + 90, name, true);
		text.setFormat(Paths.font("Comic Sans MS.ttf"), 64, FlxColor.WHITE);
		text.scale.x = tooLong;
		text.screenCenter(X);
		text.x = 295;
		if(week == -1) text.x += 60 * tooLong;
		FlxTextArray.push(text);
		text.alpha = 0;
		add(text);

		yesText = new FlxText(0, text.y + 150, 'Yes', true);
		yesText.setFormat(Paths.font("Comic Sans MS.ttf"), 64, FlxColor.WHITE);
		yesText.screenCenter(X);
		yesText.x -= 200;
		add(yesText);
		noText = new FlxText(0, text.y + 150, 'No', true);
		noText.setFormat(Paths.font("Comic Sans MS.ttf"), 64, FlxColor.WHITE);
		noText.screenCenter(X);
		noText.x += 200;
		add(noText);
		updateOptions();
	}

	override function update(elapsed:Float)
	{
		bg.alpha += elapsed * 1.5;
		if(bg.alpha > 0.8) bg.alpha = 0.8;

		for (i in 0...FlxTextArray.length) {
			var spr = FlxTextArray[i];
			spr.alpha += elapsed * 2.5;
		}

		if(controls.UI_LEFT_P || controls.UI_RIGHT_P) {
			FlxG.sound.play(Paths.sound('scrollMenu'), 1);
			onYes = !onYes;
			updateOptions();
		}
		if(controls.BACK) {
			FlxG.sound.play(Paths.sound('cancelMenu'), 1);
			close();
		} else if(controls.ACCEPT) {
			if(onYes) {
				if(week == -1) {
					Highscore.resetSong(song, difficulty);
				} else {
					Highscore.resetWeek(WeekData.weeksList[week], difficulty);
				}
			}
			FlxG.sound.play(Paths.sound('cancelMenu'), 1);
			close();
		}
		super.update(elapsed);
	}

	function updateOptions() {
		var scales:Array<Float> = [0.75, 1];
		var alphas:Array<Float> = [0.6, 1.25];
		var confirmInt:Int = onYes ? 1 : 0;

		yesText.alpha = alphas[confirmInt];
		yesText.scale.set(scales[confirmInt], scales[confirmInt]);
		noText.alpha = alphas[1 - confirmInt];
		noText.scale.set(scales[1 - confirmInt], scales[1 - confirmInt]);
	}
}