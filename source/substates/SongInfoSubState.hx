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

        nameText = new FlxText(0, -500, name, true);
        nameText.setFormat(Paths.font("vcr.ttf"), 64, FlxColor.WHITE, CENTER);
        nameText.alignment = "center";
        add(nameText);

        descText = new FlxText(800, 300, "[no desc yet]", true);
        descText.setFormat(Paths.font("vcr.ttf"), 18, FlxColor.WHITE, CENTER);
        descText.alpha = 0;
        descText.alignment = "center";
        add(descText);

        FlxTween.tween(bg, {alpha: 0.8}, 1, {ease: FlxEase.cubeInOut});
        FlxTween.tween(portrait, {x: -95}, 1, {ease: FlxEase.circOut});
        FlxTween.tween(descBar, {y: 0}, 1, {ease: FlxEase.circOut});
        FlxTween.tween(nameText, {y: 75}, 1, {ease: FlxEase.circOut});
        FlxTween.tween(descText, {alpha: 1}, 1, {ease: FlxEase.cubeInOut});

        switch (name)
		{
            case 'ProveIt':
                nameText.x = 850;
                descText.text =
                '           Guest666 is an old roblox hoax
                involving a Guest having destructive powers on any game they joined.
                The game where this song takes place is "Prove it",
                which many acclaim is the spot where various hackers got their fame.';
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 300;
                descText.alignment = "center";
			case 'Deadline':
				portrait.y = 75;
                nameText.x = 840;
                descText.text = 
                'John Doe is an account made by\n
                the Roblox staff back in the websites early stages.\n
                One day however, someone got into the account and\ngave John Doe various odd badges.\n
                Since then, numerous creepypastas and hoaxes have sprung up regarding the account.';
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'Powering':
                nameText.x = 840;
			case 'Copied':
				portrait.y = 100;
            case 'CorrodedMetal':

            case 'Wipeout':

            case 'GloryDay':

            case 'BrickBattle':

            case 'NeedYouHere':

            case 'RabbitHole':

            case 'Kenophobia':

            case 'Stalked':

            case 'Abandoned':

            case 'Fools':

            case 'FloatingPoint':

            case 'Landmine':

            case 'Blood':

            case 'Succed':

            case 'RealMurderRap':

            case 'Deformed':
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