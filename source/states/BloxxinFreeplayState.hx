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

import substates.GameplayChangersSubstate;
import substates.ResetScoreSubState;

class BloxxinFreeplayState extends MusicBeatState
{
    var songs:Array<CustomSongMetadata> = [];

    private static var SelectedObject:FlxSprite;
    public static var curSelected:Int = 0;
    var lerpSelected:Float = 0;
    public static var firstStart:Bool = true;
    var curDifficulty:Int = 0;

    var j:Int = 0;
    var l:Int = 0;
    var curYforPortraitSpawn:Float = 125;
    
    var bg:FlxBackdrop;
    var intendedColor:Int;
    var colorTween:FlxTween;
  
    var sky:FlxSprite;
    var line:FlxSprite;
    var story:FlxSprite;
    var extra:FlxSprite;
    var selectedPortrait:FlxSprite;
    var portraits:FlxTypedGroup<FlxSprite>;
    var portrait:FlxSprite;

    var scoreText:FlxText;
    var lerpScore:Int = 0;
    var lerpRating:Float = 0;
	var intendedScore:Int = 0;
	var intendedRating:Float = 0;

    var AllUnlocked:Bool = true;
    var Deformation:FlxSprite = new FlxSprite(0, 0);
    var currentTab:Int;

    override function create()
    {
        if (currentTab == 0)
            {
                currentTab = 1;
            } 
            
        transIn = FlxTransitionableState.defaultTransIn;
		transOut = FlxTransitionableState.defaultTransOut;

        if (!FlxG.mouse.visible)
            FlxG.mouse.visible = true;

        Difficulty.list = ['Normal'];

		persistentUpdate = persistentDraw = true;

        PlayState.isStoryMode = false;
        
        bg = new FlxBackdrop(Paths.image('codeLeakLOL'), XY); //Thats crazy! -nil
		bg.velocity.set(0, -250);
        bg.scale.set(2, 2);
        bg.x = -1000;
		add(bg);


        Deformation.frames = Paths.getSparrowAtlas('freeplay/Deformation');
        Deformation.animation.addByPrefix('anim', 'deform', 4, true);
        Deformation.scale.y = 1.6;
        Deformation.updateHitbox();
        Deformation.screenCenter();

        sky = new FlxSprite().loadGraphic(Paths.image('freeplay/Skybox'));
        sky.antialiasing = ClientPrefs.data.antialiasing;
        sky.scale.set(1, 1);
        sky.updateHitbox();
        sky.screenCenter();
        add(sky);

        line = new FlxSprite().loadGraphic(Paths.image('freeplay/line'));
        line.antialiasing = ClientPrefs.data.antialiasing;
        line.setGraphicSize(Std.int(line.width * 0.95));
        line.updateHitbox();
        line.x = 295;
        line.y = 187;
        add(line);

        story = new FlxSprite().loadGraphic(Paths.image('freeplay/story'));
        story.antialiasing = ClientPrefs.data.antialiasing;
        story.setGraphicSize(Std.int(story.width * 0.75));
        story.updateHitbox();
        story.x = 292;
        story.y = 57;
        add(story);

        extra = new FlxSprite().loadGraphic(Paths.image('freeplay/extra'));
        extra.antialiasing = ClientPrefs.data.antialiasing;
        extra.setGraphicSize(Std.int(extra.width * 0.75));
        extra.updateHitbox();
        extra.x = 292;
        extra.y = 340;
        add(extra);



        portraits = new FlxTypedGroup<FlxSprite>();
    
        WeekData.reloadWeekFiles(false);

        for (i in 0...WeekData.weeksList.length) {
			if(weekIsLocked(WeekData.weeksList[i])) 
                continue;

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
                if (song[0] == "Tutorial")
                    continue;

				var colors:Array<Int> = song[2];
				if(colors == null || colors.length < 3)
				{
					colors = [146, 113, 253];
				}

                if (Highscore.getScore(song[0], curDifficulty) == 0 && song[0] != "Deformed")
                {
                    portrait = new FlxSprite().loadGraphic(Paths.image('freeplay/portrait_Loced'));
                    AllUnlocked = false;
                }
                else if (!Assets.exists('assets/shared/images/freeplay/portrait_' + song[0] + '.png'))
                {
                    portrait = new FlxSprite().loadGraphic(Paths.image('freeplay/portrait_Placeholder'));
                }else{
                    portrait = new FlxSprite().loadGraphic(Paths.image('freeplay/portrait_' + song[0]));
                }

                if (song[0] == "ContentDeleted")
                    {
                        l = 1;
                    }
                portrait.antialiasing = ClientPrefs.data.antialiasing;
                portrait.scale.set(0.2, 0.2);
                portrait.updateHitbox();
                portrait.y = curYforPortraitSpawn;

                if (song[0] == "Deformed")
                {
                    Deformation.y = curYforPortraitSpawn + 290;
                    add(Deformation);
                    Deformation.animation.play('anim', false, false); 
                    if (!AllUnlocked)
                    {
                        portrait = new FlxSprite().loadGraphic(Paths.image('freeplay/portrait_LocedDeform'));
                        portrait.antialiasing = ClientPrefs.data.antialiasing;
                        portrait.scale.set(0.2, 0.2);
                        portrait.updateHitbox();
                    }else if (AllUnlocked && Highscore.getScore(song[0], curDifficulty) == 0)
                    {
                        portrait = new FlxSprite().loadGraphic(Paths.image('freeplay/portrait_LocedDeformClickable'));
                        portrait.antialiasing = ClientPrefs.data.antialiasing;
                        portrait.scale.set(0.2, 0.2);
                        portrait.updateHitbox();
                    }
                    l = 1;
                    portrait.y = curYforPortraitSpawn + 1195;
                }

                portrait.x = ((l * 250)) + 293;



                portrait.ID = j;
                

                addSong(song[0], i, song[1], FlxColor.fromRGB(colors[0], colors[1], colors[2]));
                portraits.add(portrait);
                
                j++;
                
                if (l == 2)
                {
                    l = 0;
                    curYforPortraitSpawn += 280;
                }else{
                    l++;
                }
			}
		}
        selectedPortrait = new FlxSprite().loadGraphic(Paths.image('freeplay/selectedOverlay'));
        selectedPortrait.antialiasing = ClientPrefs.data.antialiasing;
        selectedPortrait.scale.set(0.2, 0.2);
        selectedPortrait.x = 115;
        selectedPortrait.y = 110;
        selectedPortrait.alpha = 0;
        selectedPortrait.updateHitbox();
        add(selectedPortrait);

        add(portraits);
        var controls:FlxText = new FlxText(12, FlxG.height - 44, 0, "LEFT CLICK while hovering a song to select it.", 12);
        controls.x = 895;
        controls.scrollFactor.set();
        controls.setFormat("Gotham Black Regular.ttf", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
        controls.borderSize = 1.75;
        add(controls);
        var controls2:FlxText = new FlxText(12, FlxG.height - 24, 0, "Use SCROLL WHEEL to shift through the pages.", 12);
        controls2.x = 885;
        controls2.scrollFactor.set();
        controls2.setFormat("Gotham Black Regular.ttf", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
        controls2.borderSize = 1.75;
        add(controls2);

        scoreText = new FlxText(FlxG.width * 2, 2, 0, "", 32);
		scoreText.setFormat(Paths.font("Gotham Black Regular.ttf"), 48, FlxColor.WHITE, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
        scoreText.borderSize = 1.75;
        scoreText.y = 625;
        add(scoreText);


        if(curSelected >= songs.length) curSelected = 0;
		bg.color = songs[curSelected].color;
		intendedColor = bg.color;
        
		lerpSelected = curSelected;
        
        super.create();
    }

    var selectedSomethin:Bool = false;
    var accepted:Bool = true;
    var timesPressed:Int = 0;
    var transitioningBetweenPages:Bool = false;

    override function update(elapsed:Float)
    {
        var shiftMult:Int = 1; //too lazy to code this in sorry

        lerpScore = Math.floor(FlxMath.lerp(intendedScore, lerpScore, Math.exp(-elapsed * 24)));
		lerpRating = FlxMath.lerp(intendedRating, lerpRating, Math.exp(-elapsed * 12));

		if (Math.abs(lerpScore - intendedScore) <= 10)
			lerpScore = intendedScore;
		if (Math.abs(lerpRating - intendedRating) <= 0.01)
			lerpRating = intendedRating;

        scoreText.text = 'SCORE: ' + lerpScore;
        positionHighscore();

                if (FlxG.mouse.wheel < 0 && currentTab < Math.floor((j) / 3) + 4  && !transitioningBetweenPages) //
                {
                    currentTab += 1;
                    for (i in 0...portraits.length)
                    {
                        var portrait:FlxSprite = portraits.members[i];
                        transitioningBetweenPages = true;
                        FlxTween.tween(portrait, {y: portrait.y - 280}, 0.3, {ease: FlxEase.cubeOut});
                    }
                    FlxTween.tween(line, {y: line.y - 240}, 0.3, {ease: FlxEase.cubeOut});
                    FlxTween.tween(story, {y: story.y - 280}, 0.3, {ease: FlxEase.cubeOut});
                    FlxTween.tween(extra, {y: extra.y - 280}, 0.3, {ease: FlxEase.cubeOut});
                    FlxTween.tween(Deformation, {y: Deformation.y - 280}, 0.3, {ease: FlxEase.cubeOut});

                    FlxTween.tween(selectedPortrait, {alpha: 0}, 0.1, {ease: FlxEase.linear});
                    new FlxTimer().start(0.3, function(timer:FlxTimer)
                        {
                            transitioningBetweenPages = false;
                        });
                    if (currentTab == Math.floor((j) / 3) + 3)
                    {
                        FlxG.sound.music.fadeOut(1, 0);
                    }
                }
                if (FlxG.mouse.wheel > 0 && currentTab > 1 && !transitioningBetweenPages)
                {
                    if (currentTab == Math.floor((j) / 3) + 3)
                    {
                        FlxG.sound.music.fadeIn(1, 0, 0.7);
                    }
                    currentTab -= 1;
                    for (i in 0...portraits.length)
                    {
                        var portrait:FlxSprite = portraits.members[i];
                        transitioningBetweenPages = true;
                        FlxTween.tween(portrait, {y: portrait.y + 280}, 0.3, {ease: FlxEase.cubeOut});
                    }
                    FlxTween.tween(line, {y: line.y + 240}, 0.3, {ease: FlxEase.cubeOut});
                    FlxTween.tween(story, {y: story.y + 280}, 0.3, {ease: FlxEase.cubeOut});
                    FlxTween.tween(extra, {y: extra.y + 280}, 0.3, {ease: FlxEase.cubeOut});
                    FlxTween.tween(Deformation, {y: Deformation.y + 280}, 0.3, {ease: FlxEase.cubeOut});

                    FlxTween.tween(selectedPortrait, {alpha: 0}, 0.1, {ease: FlxEase.linear});
                    new FlxTimer().start(0.3, function(timer:FlxTimer)
                        {
                            transitioningBetweenPages = false;
                        });
                    
                } //oh brother


        if (!selectedSomethin)
        {
            for (port in portraits)
                {
                    if (!transitioningBetweenPages)
                    {

                        if (FlxG.mouse.overlaps(port)) 
                            { 
                                if (curSelected != port.ID)
                                {
                                    curSelected = port.ID;
                                    SelectedObject = port;
                                    FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);
                                    FlxTween.tween(selectedPortrait, {x: port.x - 10, y: port.y - 10, alpha: 1}, 0.1, {ease: FlxEase.sineInOut});
        
                                    intendedScore = Highscore.getScore(songs[curSelected].songName, curDifficulty);
                                    intendedRating = Highscore.getRating(songs[curSelected].songName, curDifficulty);
                                    var newColor:Int = songs[curSelected].color;
        
                                    
                                    if(newColor != intendedColor) 
                                    {
                                        if(colorTween != null) {
                                            colorTween.cancel();
                                        }
                                        intendedColor = newColor;
                                        colorTween = FlxTween.color(bg, 0.25, bg.color, intendedColor, {
                                            onComplete: function(twn:FlxTween) {
                                                colorTween = null;
                                            }
                                        });
                                    }
                                }else{
                                    FlxTween.tween(selectedPortrait, {alpha: 1}, 0.1, {ease: FlxEase.linear});
                                }
                                if (FlxG.mouse.justPressed && !selectedSomethin) 
                                    {
                                        if (songs[curSelected].songName == "Deformed" && !AllUnlocked)
                                        {

                                        }else if(songs[curSelected].songName == "Deformed")
                                        {
                                            SelectedSong();
                                        }else{
                                            SelectedSong();
                                        }

                                    }
                            }
                    }
                }        
                
                    if (controls.BACK)
                        {
                            selectedSomethin = true;
                            FlxG.sound.play(Paths.sound('cancelMenu'));
                            persistentUpdate = false;
                            if(colorTween != null) {
                                colorTween.cancel();
                            }
                            MusicBeatState.switchState(new MainMenuState());
                            FlxG.mouse.visible = false;
                        }

                    if(controls.RESET)
                        {
                            persistentUpdate = false;
                            openSubState(new ResetScoreSubState(songs[curSelected].songName, curDifficulty, songs[curSelected].songCharacter));
                            FlxG.sound.play(Paths.sound('scrollMenu'));
                        }

                    super.update(elapsed);
        }
    }

    function SelectedSong()
    {
        selectedSomethin = true;
        LoadingState.loadAndSwitchState(new PlayState());
        FlxG.sound.play(Paths.sound('confirmMenu'));
        var songLowercase:String = Paths.formatToSongPath(songs[curSelected].songName);
        var poop:String = Highscore.formatSong(songLowercase, curDifficulty);
        PlayState.SONG = Song.loadFromJson(poop, songLowercase);
        PlayState.storyDifficulty = curDifficulty;
        FlxG.mouse.visible = false;
    }

    public function addSong(songName:String, weekNum:Int, songCharacter:String, color:Int)
        {
            songs.push(new CustomSongMetadata(songName, weekNum, songCharacter, color));
        }

    function weekIsLocked(name:String):Bool {
         var leWeek:WeekData = WeekData.weeksLoaded.get(name);
         return (!leWeek.startUnlocked && leWeek.weekBefore.length > 0 && (!StoryMenuState.weekCompleted.exists(leWeek.weekBefore) || !StoryMenuState.weekCompleted.get(leWeek.weekBefore)));
     }

     private function positionHighscore() {
		scoreText.x = FlxG.width - scoreText.width - 6;
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