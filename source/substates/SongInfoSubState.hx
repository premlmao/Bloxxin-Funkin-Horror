package substates;

import backend.WeekData;
import backend.Highscore;

import flixel.FlxSubState;

class SongInfoSubState extends MusicBeatSubstate

{
    var bg:FlxSprite;

    var song:String;
	var difficulty:Int;
	var week:Int;

    public function new(song:String, difficulty:Int, character:String, week:Int = -1, x:Float, y:Float)
	{
        this.song = song;
        this.difficulty = difficulty;
        this.week = week;

        super();

        bg = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
        bg.alpha = 0;
        bg.scrollFactor.set();
        add(bg);
    }

    override function update(elapsed:Float)
    {
        bg.alpha += elapsed * 1.5;
        if(bg.alpha > 0.8) bg.alpha = 0.8;

        if(controls.BACK)
        {
            FlxG.sound.play(Paths.sound('cancelMenu'), 1);
            close();
        }
        super.update(elapsed);
    }
}
