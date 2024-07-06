package states;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.addons.display.FlxBackdrop;
import flixel.addons.display.FlxGridOverlay;
import flixel.addons.transition.FlxTransitionableState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.tweens.misc.NumTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import lime.utils.Assets;

import backend.WeekData;
import backend.Highscore;
import backend.Song;
import haxe.Json;

class BloxxinFreeplayState extends MusicBeatState
{
    var songs:Array<CustomSongMetadata> = [];

    public static var curSelected:Int = 0;
    var curDifficulty:Int = 0;
    var j:Int = 0;
    var colorTween:FlxTween;
  
    var selectedPortrait:FlxSprite;
    var portraits:FlxTypedGroup<FlxSprite>;
    var portrait:FlxSprite;
    
    override function create()
    {
        if (!FlxG.mouse.visible)
            FlxG.mouse.visible = true;

        Difficulty.list = ['Normal'];

        transIn = FlxTransitionableState.defaultTransIn;
		transOut = FlxTransitionableState.defaultTransOut;

		persistentUpdate = persistentDraw = true;
        
        var bg:FlxSprite = new FlxSprite(-80).loadGraphic(Paths.image('menuBG'));
        bg.antialiasing = ClientPrefs.data.antialiasing;
        bg.setGraphicSize(Std.int(bg.width * 1));
        bg.updateHitbox();
        bg.screenCenter();  
        add(bg);

        var freeplayBox:FlxSprite = new FlxSprite().loadGraphic(Paths.image('freeplay/freeplayBox'));
        freeplayBox.antialiasing = ClientPrefs.data.antialiasing;
        freeplayBox.setGraphicSize(Std.int(freeplayBox.width * 0.75));
        freeplayBox.updateHitbox();
        freeplayBox.x = 950;
        add(freeplayBox);

        selectedPortrait = new FlxSprite().loadGraphic(Paths.image('freeplay/selectedOverlay'));
        selectedPortrait.antialiasing = ClientPrefs.data.antialiasing;
        selectedPortrait.scale.set(0.2, 0.2);
        selectedPortrait.x = 115;
        selectedPortrait.y = 110;
        selectedPortrait.alpha = 0;
        selectedPortrait.updateHitbox();
        add(selectedPortrait);

        portraits = new FlxTypedGroup<FlxSprite>();
        add(portraits);

        WeekData.reloadWeekFiles(false);

        for (i in 0...WeekData.weeksList.length) {
			if(weekIsLocked(WeekData.weeksList[i])) continue;

			var leWeek:WeekData = WeekData.weeksLoaded.get(WeekData.weeksList[i]);
			var leSongs:Array<String> = [];
			var leChars:Array<String> = [];

			for (j in 0...leWeek.songs.length)
				{
					leSongs.push(leWeek.songs[j][0]);
					leChars.push(leWeek.songs[j][1]);
				}
				

			WeekData.setDirectoryFromWeek(leWeek);
			for (song in leWeek.songs)
			{
				var colors:Array<Int> = song[2];
				if(colors == null || colors.length < 3)
				{
					colors = [146, 113, 253];
				}

                var offset:Float = 108;
                portrait = new FlxSprite((j * 100) + offset).loadGraphic(Paths.image('freeplay/portrait_' + song[0]));
                portrait.antialiasing = ClientPrefs.data.antialiasing;
                portrait.scale.set(0.2, 0.2);
                portrait.updateHitbox();
                portrait.y = j >= 3 ? 100 : -200;

                portrait.ID = j;
                switch(j)
                {
                    case 0: portrait.x = 125;
                    case 1: portrait.x = 350;
                    case 2: portrait.x = 575;
                    case 3: portrait.x = 125;
                    case 4: portrait.x = 350;
                    case 5: portrait.x = 575;
                    case 6: portrait.x = 125;
                    case 7: portrait.x = 350;
                }	
    
                switch(j)
                {
                    case 0: portrait.y = 120;
                    case 1: portrait.y = 120;
                    case 2: portrait.y = 120;
                    case 3: portrait.y = 400;
                    case 4: portrait.y = 400; 
                    case 5: portrait.y = 400;
                    case 6: portrait.y = 680;
                    case 7: portrait.y = 680;
                }
				addSong(song[0], i, song[1], FlxColor.fromRGB(colors[0], colors[1], colors[2]));
                j++;
                trace(song[0]);

                if (!Assets.exists('assets/shared/images/freeplay/portrait_' + song[0] + '.png'))
                {
                    portrait.loadGraphic(Paths.image('freeplay/portrait_Placeholder'));
                }
                portraits.add(portrait);
			}
		}
    }

    var selectedSomethin:Bool = false;
    var accepted:Bool = true;

    override function update(elapsed:Float)
    {
        if (!selectedSomethin)
        {
            for (port in portraits)
                {
                    if (FlxG.mouse.overlaps(port)) 
                    {
                        if (curSelected != port.ID)
                        {
                            curSelected = port.ID;

                            switch(curSelected)
                        {
                            case 0: FlxTween.tween(selectedPortrait, {x: 115, y: 110, alpha: 1}, 0.1, {ease: FlxEase.linear});
                            case 1: FlxTween.tween(selectedPortrait, {x: 340, y: 110, alpha: 1}, 0.1, {ease: FlxEase.linear});
                            case 2: FlxTween.tween(selectedPortrait, {x: 565, y: 110, alpha: 1}, 0.1, {ease: FlxEase.linear});
                            case 3: FlxTween.tween(selectedPortrait, {x: 115, y: 390, alpha: 1}, 0.1, {ease: FlxEase.linear});
                            case 4: FlxTween.tween(selectedPortrait, {x: 340, y: 390, alpha: 1}, 0.1, {ease: FlxEase.linear});
                            case 5: FlxTween.tween(selectedPortrait, {x: 565, y: 390, alpha: 1}, 0.1, {ease: FlxEase.linear});
                            case 6: FlxTween.tween(selectedPortrait, {x: 115, y: 670, alpha: 1}, 0.1, {ease: FlxEase.linear});
                            case 7: FlxTween.tween(selectedPortrait, {x: 340, y: 670, alpha: 1}, 0.1, {ease: FlxEase.linear});
                        }
                        }
                        if (FlxG.mouse.justPressed) 
                        {
                            trace(port.ID);
                            LoadingState.loadAndSwitchState(new PlayState());
                            FlxG.sound.play(Paths.sound('confirmMenu'));
                            var songLowercase:String = Paths.formatToSongPath(songs[curSelected].songName);
                            var poop:String = Highscore.formatSong(songLowercase, curDifficulty);
                            PlayState.SONG = Song.loadFromJson(poop, songLowercase);
                            PlayState.storyDifficulty = curDifficulty;
                            FlxG.mouse.visible = false;
                        }
                    }
                }
                        
                    if (controls.BACK)
                        {
                            selectedSomethin = true;
                            FlxG.sound.play(Paths.sound('cancelMenu'));
                            MusicBeatState.switchState(new MainMenuState());
                            FlxG.mouse.visible = false;
                        }
                }
        }

    function changeSelection(change:Int = 0, playSound:Bool = true)
    {
        if(playSound) FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);

        var lastList:Array<String> = Difficulty.list;
        curSelected += change;

        if (curSelected < 0)
            curSelected = songs.length - 1;
        if (curSelected >= songs.length)
            curSelected = 0;
    }

    public function addSong(songName:String, weekNum:Int, songCharacter:String, color:Int)
        {
            songs.push(new CustomSongMetadata(songName, weekNum, songCharacter, color));
        }

    function weekIsLocked(name:String):Bool {
         var leWeek:WeekData = WeekData.weeksLoaded.get(name);
         return (!leWeek.startUnlocked && leWeek.weekBefore.length > 0 && (!StoryMenuState.weekCompleted.exists(leWeek.weekBefore) || !StoryMenuState.weekCompleted.get(leWeek.weekBefore)));
     }
}

class CustomSongMetadata
{
	public var songName:String = "";
	public var week:Int = 0;
	public var songCharacter:String = "";
	public var color:Int = -7179779;
	public var folder:String = "";
	public var lastDifficulty:String = null;

	public function new(song:String, week:Int, songCharacter:String, color:Int)
	{
		this.songName = song;
		this.week = week;
		this.songCharacter = songCharacter;
		this.color = color;
		this.folder = Mods.currentModDirectory;
		if(this.folder == null) this.folder = '';
	}
}