package states;

import shaders.BlurShader;

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

import flixel.FlxSubState;

import backend.WeekData;
import backend.Highscore;
import backend.Song;
import haxe.Json;

import openfl.Lib;
import openfl.filters.ShaderFilter;

import sys.io.File;
 
import substates.GameplayChangersSubstate;
import substates.ResetScoreSubState;
import substates.SongInfoSubState;
import substates.ControlsSubState;
import states.editors.MasterEditorMenu;

class BloxxinFreeplayState extends MusicBeatState
{
    var songs:Array<CustomSongMetadata> = [];

    public var blur:BlurShader;
    private static var SelectedObject:FlxSprite;
    public static var curSelected:Int = 0;
    var lerpSelected:Float = 0;
    public static var firstStart:Bool = true;
    var curDifficulty:Int = 0;

    var j:Int = 0;
    var p:Int = 0;
    var q:Int = 0;
    var baseddd:Int = 0;
    var l:Int = 0;
    var curYforPortraitSpawn:Float = 125;

    var inventoryI:Int = 0;
    var inventoryB:Int = 0;

    var stageGrp:FlxTypedGroup<FlxSprite>;
    var stage:FlxSprite = new FlxSprite();
    var box:FlxSprite;
    var line:FlxSprite;
    var story:FlxSprite;
    var extra:FlxSprite;
    var selectedPortrait:FlxSprite;
    var portraits:FlxTypedGroup<FlxSprite>;
    var portraitsOLD:FlxTypedGroup<FlxSprite>;
    var portrait:FlxSprite;
    var vignette:FlxSprite;
    var disconnected:FlxSprite;
    var disconnectedbutton:FlxSprite;
    var disconnectedtext:FlxText;
    var beatstorymodelilbro:FlxText;
    var ok:FlxText;

    var pbText:FlxText;
    var lerpScore:Int = 0;
    var lerpRating:Float = 0;
	var intendedScore:Int = 0;
	var intendedRating:Float = 0;

    var AllUnlocked:Bool = true;
    var storyBeaten:Int = 0;
    var heyyousucksogokillyourself:Bool = false;
    var Deformation:FlxSprite = new FlxSprite(0, 0);
    var currentTab:Int;

    var isLocked:Bool = false;
    var OldSongsOpened:Bool = false;
    var ControlsOpened:Bool = false;
    var selectedSomethin:Bool = false;
    var PopupMessage:Bool = false;
    var buttonOldSong:FlxSprite;
    var mouse:FlxSprite;
    var oldInventory:FlxSprite;

    var camGame:FlxCamera;
    var camFreeplay:FlxCamera;

    override function create()
    {     
        camGame = initPsychCamera();

        camFreeplay = new FlxCamera();
        camFreeplay.bgColor.alpha = 0;
        FlxG.cameras.add(camFreeplay, false);

        if (currentTab == 0)
            {
                currentTab = 1;
            }

        if (!FlxG.mouse.visible)
            FlxG.mouse.visible = true;
		persistentUpdate = persistentDraw = true;

        PlayState.isStoryMode = false;

        stageGrp = new FlxTypedGroup<FlxSprite>();
        add(stageGrp);

        stage.loadGraphic(Paths.image('freeplay/bg/ProveIt'));
        stage.antialiasing = ClientPrefs.data.antialiasing;
        stage.scale.set(1, 1);
        stage.alpha = 1;
        stage.updateHitbox();
        stage.screenCenter();
        stageGrp.add(stage);

        Deformation.frames = Paths.getSparrowAtlas('freeplay/Deformation');
        Deformation.animation.addByPrefix('anim', 'deform', 4, true);
        Deformation.scale.y = 1.8;
        Deformation.updateHitbox();
        Deformation.screenCenter();

        box = new FlxSprite().loadGraphic(Paths.image('freeplay/freeplayBox'));
        box.antialiasing = ClientPrefs.data.antialiasing;
        box.scale.set(1, 1.5);
        box.updateHitbox();
        box.screenCenter();
        box.alpha = 0.5;
        add(box);

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

        vignette = new FlxSprite().loadGraphic(Paths.image('vignette'));
        vignette.antialiasing = ClientPrefs.data.antialiasing;
        vignette.updateHitbox();
        vignette.screenCenter();
        vignette.scale.set(1.1, 1.1);
        vignette.alpha = 0;
        add(vignette);

        portraits = new FlxTypedGroup<FlxSprite>();
        portraitsOLD = new FlxTypedGroup<FlxSprite>();
    
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
                {/*
                    portrait = new FlxSprite().loadGraphic(Paths.image('freeplay/portrait_Loced'));
                    portrait.frames = Paths.getSparrowAtlas('freeplay/portrait_Loced');
                    portrait.animation.addByPrefix('idle', 'portrait_Loced idle', 24, true);
                    portrait.animation.addByPrefix('hover', 'portrait_Loced hover', 24, true);
                    portrait.updateHitbox();
                    portrait.animation.play('idle', false, false);*/
                    if (WeekData.weeksList[i] != "weekold")
                    {
                        AllUnlocked = false;
                    }
                }
                /*else*/ if (!Assets.exists('assets/shared/images/freeplay/portrait_' + song[0] + '.png'))
                {
                    portrait = new FlxSprite().loadGraphic(Paths.image('freeplay/portrait_Placeholder'));
                }else{
                    portrait = new FlxSprite().loadGraphic(Paths.image('freeplay/portrait_' + song[0]));
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

                if (j < 3 && Highscore.getScore(song[0], curDifficulty) != 0 && storyBeaten == 0)
                {
                    storyBeaten += 1;
                }
                if(storyBeaten == 1)
                {
                    trace('wow you did it congra');
                }

                

                addSong(song[0], i, song[1], FlxColor.fromRGB(colors[0], colors[1], colors[2]));
                
                
                j++;
                if (WeekData.weeksList[i] != "weekold")
                {
                    baseddd = j;
                    portraits.add(portrait);
                }else{
                    portrait.scale.set(0.1, 0.1);
                    portrait.updateHitbox();
                    portrait.x = 220 + (110 * (inventoryI + 1));
                    portrait.y = 265 + (110 * (inventoryB + 1));

                    inventoryI += 1;
                    if (inventoryI > 4)
                    {
                        inventoryI = 0;
                        inventoryB += 1;
                    }


                    portraitsOLD.add(portrait);
                }
                
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

        for (port in portraitsOLD)
        {
            port.visible = false;
        }

        pbText = new FlxText(FlxG.width * 2, 2, 0, "", 32);
		pbText.setFormat(Paths.font("Comic Sans MS.ttf"), 24, FlxColor.WHITE, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
        pbText.borderSize = 1.75;
        pbText.y = 625;
        add(pbText);

        buttonOldSong = new FlxSprite(0, 0).loadGraphic(Paths.image('freeplay/InventoryButton'), true, 108, 108);
		buttonOldSong.animation.add('idle', [0], 0, false);
		buttonOldSong.animation.add('selected', [1], 0, false);
		buttonOldSong.scale.set(1, 1);
		buttonOldSong.updateHitbox();
		buttonOldSong.animation.play('idle');
		add(buttonOldSong);
		buttonOldSong.x = 20;
		buttonOldSong.y = 590;

        mouse = new FlxSprite(0, 0).loadGraphic(Paths.image('freeplay/mouse'), true, 108, 108);
        mouse.animation.add('idle', [0], 0, false);
        mouse.animation.add('selected', [1], 0, false);
		mouse.scale.set(1, 1);
		mouse.updateHitbox();
		mouse.animation.play('idle');
		add(mouse);
		mouse.x = 20;
		mouse.y = 450;

        oldInventory = new FlxSprite().loadGraphic(Paths.image('freeplay/Inventory'));
        oldInventory.antialiasing = ClientPrefs.data.antialiasing;
        oldInventory.scale.set(1, 1);
        oldInventory.updateHitbox();
        oldInventory.screenCenter();
        oldInventory.y = 280;
        oldInventory.visible = false;
        add(oldInventory);
        
        add(portraitsOLD);

        if(curSelected >= songs.length) curSelected = 0;
        
		lerpSelected = curSelected;
        
        blur = new BlurShader();
        FlxG.camera.setFilters([]);
        
        disconnected = new FlxSprite().loadGraphic(Paths.image('freeplay/disconnectedbecausefuckyou'));
        disconnected.antialiasing = ClientPrefs.data.antialiasing;
        disconnected.screenCenter();
        disconnected.updateHitbox();
        disconnected.scale.set(0.1, 0.1);
        disconnected.visible = false;
        disconnected.camera = camFreeplay;
        add(disconnected);
        
        disconnectedbutton = new FlxSprite().loadGraphic(Paths.image('freeplay/disconnectedbecausefuckyoubutton'));
        disconnectedbutton.antialiasing = ClientPrefs.data.antialiasing;
        disconnectedbutton.screenCenter();
        disconnectedbutton.updateHitbox();
        disconnectedbutton.scale.set(0.1, 0.1);
        disconnectedbutton.visible = false;
        disconnectedbutton.camera = camFreeplay;
        add(disconnectedbutton);

        disconnectedtext = new FlxText(FlxG.width * 2, 2, 0, "Disconnected", 32);
        disconnectedtext.setFormat(Paths.font("Arial Regular.ttf"), 24, FlxColor.WHITE);
        disconnectedtext.scale.set(0.1, 0.1);
        disconnectedtext.alignment = "center";
        disconnectedtext.screenCenter();
        disconnectedtext.y -= 75;
        disconnectedtext.visible = false;
        disconnectedtext.camera = camFreeplay;
        add(disconnectedtext);

        beatstorymodelilbro = new FlxText(FlxG.width * 2, 2, 0, "beat story mode lil bro\n(Error Code: 267)", 32);
        beatstorymodelilbro.setFormat(Paths.font("Arial Regular.ttf"), 18, 0xFFACACAC);
        beatstorymodelilbro.scale.set(0.1, 0.1);
        beatstorymodelilbro.alignment = "center";
        beatstorymodelilbro.screenCenter();
        beatstorymodelilbro.visible = false;
        beatstorymodelilbro.camera = camFreeplay;
        add(beatstorymodelilbro);
        
        ok = new FlxText(FlxG.width * 2, 2, 0, "OK", 32);
        ok.setFormat(Paths.font("Arial Regular.ttf"), 22, 0xFF000000);
        ok.scale.set(0.1, 0.1);
        ok.alignment = "center";
        ok.screenCenter();
        ok.y += 55;
        ok.visible = false;
        ok.camera = camFreeplay;
        add(ok);

        if(storyBeaten != 1)
        {
            heyyousucksogokillyourself = true;
            DisconnectAHFHAGFeuagheuoa();
            trace('you got disconnected dumbass');
        }

        
        super.create();
    }

    var accepted:Bool = true;
    var timesPressed:Int = 0;
    var transitioningBetweenPages:Bool = false;

    override function update(elapsed:Float)
    {
        var shiftMult:Int = 1; //too lazy to code this in sorry

        camera.scroll.x = FlxMath.lerp(camera.scroll.x, (FlxG.mouse.x / FlxG.width) * 15, Math.exp(-elapsed * 5));
        camera.scroll.y = FlxMath.lerp(camera.scroll.y, (FlxG.mouse.y / FlxG.height) * 10, Math.exp(-elapsed * 5));
        
        lerpScore = Math.floor(FlxMath.lerp(intendedScore, lerpScore, Math.exp(-elapsed * 24)));
		lerpRating = FlxMath.lerp(intendedRating, lerpRating, Math.exp(-elapsed * 12));

		if (Math.abs(lerpScore - intendedScore) <= 10)
			lerpScore = intendedScore;
		if (Math.abs(lerpRating - intendedRating) <= 0.01)
			lerpRating = intendedRating;

        var ratingSplit:Array<String> = Std.string(CoolUtil.floorDecimal(lerpRating * 100, 2)).split('.');
		if(ratingSplit.length < 2) { //No decimals, add an empty space
			ratingSplit.push('');
		}
		
		while(ratingSplit[1].length < 2) { //Less than 2 decimals in it, add decimals then
			ratingSplit[1] += '0';
		}

        pbText.text = 'SCORE: ' + lerpScore + ' \nACC: ' + ratingSplit.join('.') + '%';
        pbText.x = FlxG.width - pbText.width - 6;


                if (FlxG.mouse.wheel < 0 && currentTab < Math.floor((baseddd) / 3) + 4  && !transitioningBetweenPages && !OldSongsOpened && !ControlsOpened && !heyyousucksogokillyourself) //
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
                    FlxTween.tween(selectedPortrait, {y: selectedPortrait.y - 280}, 0.3, {ease: FlxEase.cubeOut});
                    new FlxTimer().start(0.3, function(timer:FlxTimer)
                        {
                            transitioningBetweenPages = false;
                        });
                    if (currentTab == Math.floor((baseddd) / 3) + 3)
                    {
                        FlxG.sound.music.fadeOut(1, 0);
                    }
                }
                if (FlxG.mouse.wheel > 0 && currentTab > 1 && !transitioningBetweenPages && !OldSongsOpened && !ControlsOpened && !heyyousucksogokillyourself)
                {
                    if (currentTab == Math.floor((baseddd) / 3) + 3)
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
                    FlxTween.tween(selectedPortrait, {y: selectedPortrait.y + 280}, 0.3, {ease: FlxEase.cubeOut});
                    new FlxTimer().start(0.3, function(timer:FlxTimer)
                        {
                            transitioningBetweenPages = false;
                        });
                    
                } //oh brother


        if (!selectedSomethin)
        {
            if (FlxG.mouse.overlaps(buttonOldSong) && FlxG.mouse.justPressed)
                {
                    if (!OldSongsOpened)
                    {
                        OldSongsOpened = true;
                        buttonOldSong.animation.play('selected');
                        oldInventory.visible = true;
                        selectedPortrait.visible = true;
                        for (port in portraitsOLD)
                            {
                                port.visible = true;
                            }
                    }else{
                        OldSongsOpened = false;
                        buttonOldSong.animation.play('idle');
                        oldInventory.visible = false;
                        selectedPortrait.visible = false;
                        for (port in portraitsOLD)
                            {
                                port.visible = false;
                            }
                    }
                }
                if (FlxG.mouse.overlaps(mouse))
                    {
                        if (!ControlsOpened && FlxG.mouse.justPressed)
                        {
                            persistentUpdate = false;
                            ControlsOpened = true;
                            mouse.animation.play('selected');
                            openSubState(new ControlsSubState());
                            FlxG.sound.play(Paths.sound('scrollMenu'));
                        }
                        else
                        {
                                subStateClosed.add((subState:FlxSubState) -> {
                                if (Std.isOfType(subState, ControlsSubState))
                                    persistentUpdate = true;
                                    ControlsOpened = false;
                                    mouse.animation.play('idle');
                              });
                        }
                    }
                for (port in portraitsOLD)
                    {
                            if (FlxG.mouse.overlaps(port)) 
                                { 
                                    if (curSelected != port.ID && OldSongsOpened)
                                    {
                                        curSelected = port.ID;
                                        SelectedObject = port;
                                        selectedPortrait.scale.set(0.1, 0.1);
                                        FlxTween.tween(selectedPortrait, {x: port.x - 60, y: port.y - 75, alpha: 1}, 0.1, {ease: FlxEase.sineInOut});
                                        FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);
            
                                        intendedScore = Highscore.getScore(songs[curSelected].songName, curDifficulty);
                                        intendedRating = Highscore.getRating(songs[curSelected].songName, curDifficulty);
                                    }
                                    if (FlxG.mouse.justPressed && !selectedSomethin && OldSongsOpened)
                                        {
                                            SelectedSong();
                                        }
                                }
                    }  
            for (port in portraits)
                {
                    if (!transitioningBetweenPages)
                    {
                        if (FlxG.mouse.overlaps(port) && !heyyousucksogokillyourself) 
                            {
                                if (curSelected != port.ID && !OldSongsOpened && !ControlsOpened)
                                {
                                    curSelected = port.ID;
                                    SelectedObject = port;
                                    FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);
                                    FlxTween.tween(selectedPortrait, {x: port.x - 10, y: port.y - 10, alpha: 1}, 0.1, {ease: FlxEase.sineInOut});
                                    selectedPortrait.scale.set(0.2, 0.2);
        
                                    intendedScore = Highscore.getScore(songs[curSelected].songName, curDifficulty);
                                    intendedRating = Highscore.getRating(songs[curSelected].songName, curDifficulty);

                                    if (!Assets.exists('assets/shared/images/freeplay/bg/' + songs[curSelected].songName + '.png'))
                                    {
                                        stage.loadGraphic(Paths.image('menuDesat'));
                                        stage.antialiasing = ClientPrefs.data.antialiasing;
                                        stage.scale.set(1, 1);
                                        stage.alpha = 1;
                                        stage.updateHitbox();
                                        stage.screenCenter();
                                    }else{
                                        stage.loadGraphic(Paths.image('freeplay/bg/' + songs[curSelected].songName));
                                        stage.antialiasing = ClientPrefs.data.antialiasing;
                                        stage.scale.set(1, 1);
                                        stage.alpha = 1;
                                        stage.updateHitbox();
                                        stage.screenCenter();
                                    }
                                        
                                }else if(!OldSongsOpened && !ControlsOpened){
                                    FlxTween.tween(selectedPortrait, {x: port.x - 10, y: port.y - 10, alpha: 1}, 0.1, {ease: FlxEase.sineInOut});
                                }
                                if (FlxG.mouse.justPressed && !selectedSomethin && !OldSongsOpened && !ControlsOpened) 
                                    {
                                        if (songs[curSelected].songName == "Deformed" && !AllUnlocked)
                                        {

                                        }else if(songs[curSelected].songName == "Deformed")
                                        {
                                            SelectedSong();
                                            FlxG.sound.play(Paths.sound('deformedSelect'));
                                        }else{
                                            SelectedSong();
                                        }
                                    }
                            }

                    }
                }
                
                if(heyyousucksogokillyourself)
                {
                    if (FlxG.mouse.overlaps(disconnectedbutton) && FlxG.mouse.justPressed)
                    {
                        selectedSomethin = true;
                        FlxG.sound.play(Paths.sound('cancelMenu'));
                        persistentUpdate = false;
                        MusicBeatState.switchState(new BloxxinMainMenuState());
                        FlxG.mouse.visible = false;

                        disconnected.visible = false;
                        disconnectedbutton.visible = false;
                        disconnectedtext.visible = false;
                        beatstorymodelilbro.visible = false;
                        ok.visible = false;
                    }
                }

                if (FlxG.mouse.overlaps(Deformation))
                {
                    FlxTween.tween(vignette, {alpha: 1}, 1, {ease: FlxEase.cubeInOut});
                    var targetsArray:Array<FlxCamera> = FlxG.cameras.list;
                    for (i in 0...targetsArray.length) 
                    {
                        targetsArray[i].shake(0.001, 0.1);
                    }
                }
                else
                {
                    FlxTween.tween(vignette, {alpha: 0}, 1, {ease: FlxEase.cubeInOut});
                }
                
                    if (controls.BACK)
                        {
                            selectedSomethin = true;
                            FlxG.sound.play(Paths.sound('cancelMenu'));
                            persistentUpdate = false;
                            MusicBeatState.switchState(new BloxxinMainMenuState());
                            FlxG.mouse.visible = false;
                        }

                    if(controls.RESET)
                        {
                            persistentUpdate = false;
                            openSubState(new ResetScoreSubState(songs[curSelected].songName, curDifficulty, songs[curSelected].songCharacter));
                            FlxG.sound.play(Paths.sound('scrollMenu'));
                        }

                    if(FlxG.mouse.pressedRight)
                    {
                        if (!isLocked)
                            {
                                persistentUpdate = false;
                                openSubState(new SongInfoSubState(songs[curSelected].songName, curDifficulty));
                                FlxG.sound.play(Paths.sound('scrollMenu'));
                                isLocked = false;
                            }
                            else
                            {
                                var targetsArray:Array<FlxCamera> = FlxG.cameras.list;
                                for (i in 0...targetsArray.length) 
                                {
                                    targetsArray[i].shake(0.001, 0.1);
                                }
                                isLocked = true;
                            }
                    }
                    #if desktop
                    if (controls.justPressed('debug_1'))
                    {
                        selectedSomethin = true;
                        MusicBeatState.switchState(new MasterEditorMenu());
                    }
                    #end

                    super.update(elapsed);
        }
    }

    function SelectedSong()
    {
        if (!heyyousucksogokillyourself)
        {
            selectedSomethin = true;
            LoadingState.loadAndSwitchState(new PlayState());
            FlxG.sound.play(Paths.sound('confirmMenu'));
            PlayState.SONG = Song.loadFromJson(songs[curSelected].songName, songs[curSelected].songName);
            FlxG.mouse.visible = false;
            trace("loaded song successfully: " + songs[curSelected].songName);
        }
    }

    public function addSong(songName:String, weekNum:Int, songCharacter:String, color:Int)
        {
            songs.push(new CustomSongMetadata(songName, weekNum, songCharacter, color));
        }

    function weekIsLocked(name:String):Bool {
         var leWeek:WeekData = WeekData.weeksLoaded.get(name);
         return (!leWeek.startUnlocked && leWeek.weekBefore.length > 0 && (!StoryMenuState.weekCompleted.exists(leWeek.weekBefore) || !StoryMenuState.weekCompleted.get(leWeek.weekBefore)));
     }
    private function DisconnectAHFHAGFeuagheuoa()
    {
        new FlxTimer().start(1, function(timer:FlxTimer)
            {
                FlxTween.tween(disconnected.scale, {x: 1, y: 1}, 0.05, {ease: FlxEase.linear});
                FlxTween.tween(disconnectedbutton.scale, {x: 1, y: 1}, 0.05, {ease: FlxEase.linear});
                FlxTween.tween(disconnectedtext.scale, {x: 1, y: 1}, 0.05, {ease: FlxEase.linear});
                FlxTween.tween(beatstorymodelilbro.scale, {x: 1, y: 1}, 0.05, {ease: FlxEase.linear});
                FlxTween.tween(ok.scale, {x: 1, y: 1}, 0.05, {ease: FlxEase.linear});
                FlxG.camera.setFilters([new ShaderFilter(blur)]);
                disconnected.visible = true;
                disconnectedbutton.visible = true;
                disconnectedtext.visible = true;
                beatstorymodelilbro.visible = true;
                ok.visible = true;
            });
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