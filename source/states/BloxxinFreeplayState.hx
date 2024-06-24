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
    var portraitArray:Array<String> = [
        'Proveit',
        'Deadline',
        'Placeholder',
        'Copied',
        'Wipeout',
        'NeedYouHere',
        'Fools',
        'Floatingpoint',
        'Deformed',
        'Gloryday',
        'Humanoid',
        'Kenophobia',
        'RealMurderRap',
        'Succed',
        'Loced',
    ];
  
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

        for (i in 0...portraitArray.length)
        {
            var offset:Float = 108;
            var portrait:FlxSprite = new FlxSprite(i < 3 ? (i * 140) + offset : (i - 3 * 140) + offset, i >= 3 ? 0 : -100).loadGraphic(Paths.image('freeplay/portrait_' + portraitArray[i]));
            portrait.antialiasing = ClientPrefs.data.antialiasing;
            portrait.updateHitbox();
            portrait.setGraphicSize(Std.int(portrait.width * 0.2));
            portraits.add(portrait);
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