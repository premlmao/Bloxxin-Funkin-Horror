package states;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.addons.display.FlxBackdrop;
import flixel.addons.display.FlxGridOverlay;
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

class BloxxinFreeplayState extends MusicBeatState
{

    var songs:Array<CustomSongMetadata> = [];

    public static var curSelected:Int = 0;
  
    var overlay:FlxSprite;
    var portraits:FlxTypedGroup<FlxSprite>;
    
    override function create()
    {
        var bg:FlxSprite = new FlxSprite(-80).loadGraphic(Paths.image('menuBG'));
        bg.antialiasing = ClientPrefs.data.antialiasing;
        bg.setGraphicSize(Std.int(bg.width * 1));
        bg.updateHitbox();
        bg.screenCenter();  
        add(bg);

        portraits = new FlxTypedGroup<FlxSprite>();
        add(portraits);
        var j:Int = 0;

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
                var portrait:FlxSprite = new FlxSprite((j * 140) + offset).loadGraphic(Paths.image('freeplay/portrait_' + song[0]));
                portrait.antialiasing = ClientPrefs.data.antialiasing;
                portrait.updateHitbox();
                portrait.scale.set(0.2, 0.2);
                portrait.y = j >= 3 ? 100 : -200;
                
	
				addSong(song[0], i, song[1], FlxColor.fromRGB(colors[0], colors[1], colors[2]));
                j++;
                trace(song[0]);

                if (!Assets.exists('assets/shared/images/freeplay/portrait_' + songs[curSelected].songName.toLowerCase() + '.png'))
                {
                    portrait.loadGraphic(Paths.image('freeplay/portrait_Placeholder'));
                }
                portraits.add(portrait);
			}
		}
    }

    var selectedSomethin:Bool = false;

    override function update(elapsed:Float)
    {
        if (!selectedSomethin)
        {
            if (controls.UI_LEFT_P)
                changeSelection(-1);
            
            if (controls.UI_RIGHT_P)
                changeSelection(1);
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