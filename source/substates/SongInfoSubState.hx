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
    var portrait:FlxSprite;
    var descBar:FlxSprite;
    var nameText:FlxText;
    var descText:FlxText;
    var song:String;
	var difficulty:Int;

    public static var a:Int = 1;
    public static var b:String = "";

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

        portrait = new FlxSprite().loadGraphic(Paths.image('pauseShit/portrait_' + name));
		portrait.antialiasing = ClientPrefs.data.antialiasing;
		portrait.scale.set(1.1, 1.1);
		portrait.updateHitbox();
		portrait.x = -700;
		portrait.y = 50;
        add(portrait);

        descBar = new FlxSprite().loadGraphic(Paths.image('freeplay/descBar'));
		descBar.antialiasing = ClientPrefs.data.antialiasing;
        descBar.scale.set(1.1, 1.1);
		descBar.updateHitbox();
        descBar.y = -1200;
        add(descBar);

        var desctxt:String;
        if (a > 1)
        {
            desctxt = Paths.txt(name + '/desc' + b);
        }
        else
        {
            desctxt = Paths.txt(name + '/desc');
        }
        trace(desctxt);

        var text:Array<String> = ['what'];
        text = CoolUtil.coolTextFile(desctxt);

        nameText = new FlxText(20, -70, 0, name, 32);
        nameText.setFormat(Paths.font("vcr.ttf"), 64);
        nameText.updateHitbox();
        nameText.x = FlxG.width - (nameText.width + 175);
        add(nameText);

        descText = new FlxText(0, 300, "", 12);
        descText.setFormat(Paths.font("vcr.ttf"), 18);
        descText.alpha = 0;
        descText.text = text[0];
        descText.x = FlxG.width - (descText.width);
        add(descText);

        FlxTween.tween(bg, {alpha: 0.8}, 1, {ease: FlxEase.quartOut});
        FlxTween.tween(portrait, {x: -95}, 1, {ease: FlxEase.quartOut});
        FlxTween.tween(descBar, {y: 0}, 1, {ease: FlxEase.quartOut});
        FlxTween.tween(nameText, {y: 75}, 1, {ease: FlxEase.quartOut});
        FlxTween.tween(descText, {alpha: 1}, 1, {ease: FlxEase.quartInOut, startDelay: 0.2});

        trace("viewing: " + name);
        trace("");
        trace("name x and y: " + nameText.x + ", " + nameText.y);
        trace("");
        trace("desc x and y: " + descText.x + ", " + descText.y);

        switch(name)
        {
            case 'CorrodedMetal' | 'FloatingPoint' | 'ContentDeleted':
                nameText.x = FlxG.width - (nameText.width + 25);
            case 'RealMurderRap' | 'ReportOrAbort':
                nameText.x = FlxG.width - (nameText.width + 30);
            case 'BrickBattle' | 'NeedYouHere':
                nameText.x = FlxG.width - (nameText.width + 70);
            case 'DeformedOld' | 'GloryDayOld':
                nameText.x = FlxG.width - (nameText.width + 80);
            case 'Kenophobia' | 'RabbitHole':
                nameText.x = FlxG.width - (nameText.width + 95);
            case 'Abandoned':
                nameText.x = FlxG.width - (nameText.width + 100);
            case 'Deadline' | 'Powering' | 'Landmine' | 'FoolsOld':
                nameText.x = FlxG.width - (nameText.width + 125);
            case 'ProveIt' | 'Wipeout' | 'GloryDay' | 'Stalked' | 'Deformed':
                nameText.x = FlxG.width - (nameText.width + 140);
            case 'Succed' | 'Breach':
                nameText.x = FlxG.width - (nameText.width + 165);
            case 'Fools' | 'Blood' | 'Decay':
                nameText.x = FlxG.width - (nameText.width + 185);
        }
    }

    override function update(elapsed:Float)
    {
        if(controls.BACK)
        {
            FlxG.sound.play(Paths.sound('scrollMenu'));
            FlxTween.tween(bg, {alpha: 0}, 1, {ease: FlxEase.quartIn});
            FlxTween.tween(portrait, {x: -700}, 1, {ease: FlxEase.quartIn});
            FlxTween.tween(descBar, {y: -1200}, 1, {ease: FlxEase.quartIn});
            FlxTween.tween(nameText, {y: -70}, 1, {ease: FlxEase.quartIn});
            FlxTween.tween(descText, {alpha: 0}, 0.2, {ease: FlxEase.quartIn});
            new FlxTimer().start(1, function(timer:FlxTimer)
            {
                close();
            });
            trace("stopped viewing");
        }
        super.update(elapsed);
    }
}