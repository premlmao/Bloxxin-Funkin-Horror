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
                "Guest666 is an old roblox hoax
                involving a Guest having destructive powers on any game they joined.
                The game where this song takes place is Prove it,
                which many acclaim is the spot where various hackers got their fame.";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 300;
                descText.alignment = "center";
			case 'Deadline':
				portrait.y = 75;
                nameText.x = 840;
                descText.text = 
                "John Doe is an account made by\n
                the Roblox staff back in the websites early stages.\n
                One day however, someone got into the account and\ngave John Doe various odd badges.\n
                Since then, numerous creepypastas and hoaxes have\nsprung up regarding the account.";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'Powering':
                nameText.x = 840;
                descText.text = 
                "The hacker who caused everything,\n
                TheC0mmunity has been pulling John Doe's strings this entire time.\n
                Don't let him hack you!";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
			case 'Copied':
				portrait.y = 100;
                nameText.x = 840;
                descText.text = 
                "1x1x1x1 was theorized to a hacker of some sorts,\n
                causing concern and fear throughout the Roblox community.\n
                This was started by Shedletsky claiming that 1x1x1x1 was quite evil.\n
                That combined with an exploiter named Zuka.\n
                explaining 1x1x1x1s misdeeds created a\nvast negative aura around the account.";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'CorrodedMetal':
                nameText.x = 840;
                descText.text = 
                "RUST_010 was a very interesting account,\n
                hosting a truckload of games meant to spark confusion and dread.";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'Wipeout':
                nameText.x = 840;
                descText.text = 
                "Perhaps the first Roblox myth,\nSpirit was an account meant to scare players that saw it.\n
                This sparked a war on the forums which also created the Torture Chamber,\n
                the place where this song takes place.";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'GloryDay':
                nameText.x = 840;
                descText.text = 
                "Cronostal is an amalgamation\nof the Roblox community's nostalgia.\n
                After somehow joining the game where they reside,\n
                BF's updated appearance causes Cronostal to change...\n
                Cronostal by Unfunny2!";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'BrickBattle':
                nameText.x = 840;
                descText.text = 
                "The Conqueror is an alien exiled from their home,\n
                who then inserted themselves into the world of Roblox.\n
                They reside in fighting games, always challenging anyone to a duel.\n
                Conqueror by cheezydynamite and shaggyiscool!";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'NeedYouHere':
                nameText.x = 840;
                descText.text = 
                "After getting a message by someone you don't know\nasking you to play their game,\n
                you join in and you're met with Smile.";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'RabbitHole':
                nameText.x = 840;
                descText.text = 
                "Party.exe is a very peculiar game,\nfeaturing multiple endings to get.\n
                Not much is known about the opponent Subject_0,\n
                other than they make several appearances\nthroughout most of the endings.";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'Kenophobia':
                nameText.x = 840;
                descText.text = 
                "As the darkness glooms through the endless rooms\ntime passes without end,\n
                please remember that whatever you do, don't let them catch you.\n
                Based on 'rooms' By nicorocks5555.";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'Stalked':
                nameText.x = 840;
                descText.text = 
                "There is someone inside my home.\nKeep quiet and stay calm it said.\n
                Based on Jim's Computer.";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'Abandoned':
                nameText.x = 840;
                descText.text = 
                "You wouldn't expect a light hearted game\nlike A Normal Elevator\n
                to have a disturbing story underneath its surface.\n
                Gavin's Story is a secret sub place you could access by\n
                putting in a code next to a door in the main lobby.";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'Fools':
                nameText.x = 840;
                descText.text = 
                "On April Fools 2012,\na few people gained access to the Roblox admin panel\n
                and caused widespread mayhem and chaos across the site.\n
                They did many acts, but one of the most famous things they caused\n
                was the C: face being uploaded onto the catalog.";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'FloatingPoint':
                nameText.x = 840;
                descText.text = 
                "The Floating Point/Null Zone glitch occurs when\n
                you go too far in any direction in a Roblox game.\n
                The rendering of everything begins to corrupt\nshowing polygons rapidly shaking.\n
                The further you go, the worse it gets.";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'Landmine':
                nameText.x = 840;
                descText.text = 
                "Plates of Fate: Mayhem was once a Game on Roblox\ninvolving staying on your plate\n
                while surviving an onslaught of events.\n
                However, exploiters began flooding the servers,\n
                breaking the round system and spawning\nnear infinite landmines across the entire map.";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'Blood':
                nameText.x = 840;
                descText.text = 
                "Survival the Jeff the Killer is a copy and paste killer game\nsurrounding Jeff the Killer,\n
                a popular internet creepypasta. The game was brought attention.\n
                to by popular Youtubers, which cemented it in Roblox history.";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'Succed':
                nameText.x = 840;
                descText.text = 
                "Today we are going to be playing, Obby for... Succ.\n
                Based on MichealP's Infamous Obby For Succ Youtube video.";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'RealMurderRap':
                nameText.x = 840;
                descText.text = 
                "Smashbits created the best series on the internet ever,\n
                the If Roblox Was Realistic series!";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'Deformed':
                nameText.x = 840;
                descText.text = 
                "The realm which god failed to control.\n
                That thing doesn't behave kindly to visitors.\n
                OOF.EXE comes from a Youtube video of the same name,\n
                where multiple bigheads get deformed with\ndistorted sounds playing throughout.";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'ContentDeleted':
                nameText.x = 840;
                descText.text = 
                "A remix of Content Deleted by Penove!";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'ReportOrAbort':
                nameText.x = 840;
                descText.text = 
                "A Forsaken cover of Fight or Flight Halloween mix by Honkish!";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'GloryDayOld':
                nameText.x = 840;
                descText.text = 
                "old and mid";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'DeformedOld':
                nameText.x = 840;
                descText.text = 
                "old and mid";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'FoolsOld':
                nameText.x = 840;
                descText.text = 
                "old and mid";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'Breach':
                nameText.x = 840;
                descText.text = 
                "old and mid";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
            case 'Decay':
                nameText.x = 840;
                descText.text = 
                "R U Still There?";
                descText.setFormat(Paths.font("vcr.ttf"), 14, FlxColor.WHITE, CENTER);
                descText.screenCenter(X);
                descText.x += 305;
                descText.alignment = "center";
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