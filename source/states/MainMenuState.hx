package states;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.display.FlxBackdrop;
import flixel.addons.display.FlxGridOverlay;
import flixel.effects.FlxFlicker;
import lime.app.Application;
import states.editors.MasterEditorMenu;
import options.OptionsState;

import states.PlayState;
import states.LoadingState;

import backend.WeekData;
import backend.Highscore;
import backend.Song;

class MainMenuState extends MusicBeatState
{
	public static var psychEngineVersion:String = '0.7.2h'; // This is also used for Discord RPC
	public static var firstStart:Bool = true;
	public static var finishedFunnyMove:Bool = false;
	public static var curSelected:Int = 0;

	var menuItems:FlxTypedGroup<FlxSprite>;

	var optionShit:Array<String> = [
		'story_mode',
		'freeplay',
		'options',
		'credits',
		'awards',
	];

	var camFollow:FlxObject;
	var bg:FlxSprite;
	var magenta:FlxSprite;
	var robloxBackdrop:FlxBackdrop;
	var selector:FlxSprite;
	var trussAndStuds:FlxBackdrop;
	var menuBox:FlxSprite;
	var menuText:FlxSprite;
	var menuItem:FlxSprite;

	override function create()
	{
		#if MODS_ALLOWED
		Mods.pushGlobalMods();
		#end
		Mods.loadTopMod();

		#if desktop
		// Updating Discord Rich Presence
		DiscordClient.changePresence("In the Menus", null);
		#end

		if (!FlxG.mouse.visible)
            FlxG.mouse.visible = true;

		transIn = FlxTransitionableState.defaultTransIn;
		transOut = FlxTransitionableState.defaultTransOut;

		persistentUpdate = persistentDraw = true;

		var yScroll:Float = Math.max(0.25 - (0.05 * (optionShit.length - 4)), 0.1);
		bg = new FlxSprite(-80).loadGraphic(Paths.image('menuBG'));
		bg.antialiasing = ClientPrefs.data.antialiasing;
		bg.scrollFactor.set(0, yScroll);
		bg.setGraphicSize(Std.int(bg.width * 1.1));
		bg.updateHitbox();
		bg.screenCenter();
		add(bg);

		magenta = new FlxSprite(-80).loadGraphic(Paths.image('menuDesat'));
		magenta.antialiasing = ClientPrefs.data.antialiasing;
		magenta.scrollFactor.set(0, yScroll);
		magenta.setGraphicSize(Std.int(magenta.width * 1));
		magenta.updateHitbox();
		magenta.screenCenter();
		magenta.visible = false;
		magenta.color = 0xFFfd719b;
		add(magenta);

		robloxBackdrop = new FlxBackdrop(Paths.image('mainmenuUI/robloxBackdrop'), XY);
		robloxBackdrop.velocity.set(100, 100);
		robloxBackdrop.scale.set(0.75, 0.75);
		robloxBackdrop.alpha = 0.4;
		add(robloxBackdrop);
		if (firstStart)
			FlxTween.tween(robloxBackdrop, {angle: 180}, 5, {ease: FlxEase.linear, type: FlxTweenType.LOOPING});

		trussAndStuds = new FlxBackdrop(Paths.image('mainmenuUI/trussAndStuds'), XY);
		trussAndStuds.velocity.set(200, 0);
		trussAndStuds.alpha = 0;
		add(trussAndStuds);

		menuBox = new FlxSprite(-80).loadGraphic(Paths.image('mainmenuUI/menuBox'));
		menuBox.antialiasing = ClientPrefs.data.antialiasing;
		menuBox.setGraphicSize(Std.int(menuBox.width * 1.2));
		menuBox.updateHitbox();
		menuBox.x = -500;
		add(menuBox);

		menuText = new FlxSprite(-80).loadGraphic(Paths.image('mainmenuUI/menuText'));
		menuText.antialiasing = ClientPrefs.data.antialiasing;
		menuText.setGraphicSize(Std.int(menuText.width * 1));
		menuText.updateHitbox();
		menuText.x = 30;
		menuText.y = -200;
		add(menuText);

		selector = new FlxSprite(-80).loadGraphic(Paths.image('mainmenuUI/selector'));
		selector.antialiasing = ClientPrefs.data.antialiasing;
		selector.setGraphicSize(Std.int(selector.width * 1.25));
		selector.updateHitbox();
		// selector.screenCenter();
		selector.x = 365;
		selector.y = 160;
		selector.alpha = 0;
		add(selector);
		if (firstStart)
			FlxTween.tween(selector, {x: 425}, 0.5, {ease: FlxEase.sineInOut, type: PINGPONG});

		menuItems = new FlxTypedGroup<FlxSprite>();
		add(menuItems);

		for (i in 0...optionShit.length)
		{
			var offset:Float = 108 - (Math.max(optionShit.length, 4) - 4) * 80;
			menuItem = new FlxSprite(0, (i * 140) + offset);
			menuItem.antialiasing = ClientPrefs.data.antialiasing;
			menuItem.frames = Paths.getSparrowAtlas('mainmenu/menu_' + optionShit[i]);
			menuItem.animation.addByPrefix('idle', optionShit[i] + " basic", 24);
			menuItem.animation.addByPrefix('selected', optionShit[i] + " white", 24);
			menuItem.animation.play('idle');
			menuItems.add(menuItem);
			var scr:Float = (optionShit.length - 4) * 0.135;
			if (optionShit.length < 6)
				scr = 0;
			menuItem.scrollFactor.set(0, scr);
			menuItem.updateHitbox();
			menuItem.setGraphicSize(Std.int(menuItem.width * 1));
			switch(i){
				case 0: menuItem.x = -1000;
				case 1: menuItem.x = -1000;
				case 2: menuItem.x = -1000;
				case 3: menuItem.x = -1000;
				case 4: menuItem.x = -1000;
			}	

			switch(i){
				case 0: menuItem.y = -60;
				case 1: menuItem.y = -60;
				case 2: menuItem.y = -60;
				case 3: menuItem.y = -60;
				case 4: menuItem.y = -60;
			}
			if (firstStart)
				FlxTween.tween(menuBox, {x: -5}, 0.75, {ease: FlxEase.sineInOut});
				FlxTween.tween(trussAndStuds, {alpha: 1}, 0.75, {ease: FlxEase.linear});
				FlxTween.tween(menuText, {y: 35}, 1.2, {ease: FlxEase.backInOut, startDelay: 0.2});
				FlxTween.tween(menuItem, {x: -285}, 1 + (i * 0.3), {ease: FlxEase.backInOut, startDelay: 0.45, onComplete: function(FlxTween:FlxTween)
				{
					finishedFunnyMove = true;
				}});
				FlxTween.tween(selector, {alpha: 1}, 0.75, {ease: FlxEase.sineInOut, startDelay: 0.6});
		}

		var fnfVer:FlxText = new FlxText(12, FlxG.height - 24, 0, "Bloxxin Funkin Horror' v2.0", 12);
		fnfVer.scrollFactor.set();
		fnfVer.setFormat("Gotham Black Regular.ttf", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(fnfVer);
		changeItem();

		super.create();
	}

	var selectedSomethin:Bool = false;

	override function update(elapsed:Float)
	{
		if (FlxG.sound.music.volume < 0.8)
		{
			FlxG.sound.music.volume += 0.5 * elapsed;
			if (FreeplayState.vocals != null)
				FreeplayState.vocals.volume += 0.5 * elapsed;
		}

		if (!selectedSomethin)
		{
			for (menuSpr in menuItems)
			{
				if (FlxG.mouse.overlaps(menuSpr))
				{
					if(FlxG.mouse.justPressed)
					{
						FlxG.sound.play(Paths.sound('confirmMenu'));
						if (optionShit[curSelected] == 'donate')
						{
							CoolUtil.browserLoad('https://ninja-muffin24.itch.io/funkin');
						}
						else
						{
							selectedSomethin = true;

							if (FlxG.mouse.visible == true)
								FlxG.mouse.visible = false;

							if (ClientPrefs.data.flashing)
								FlxFlicker.flicker(magenta, 1.1, 0.15, false);

							FlxTween.tween(FlxG.camera, {zoom: 2.5}, 0.5, {ease: FlxEase.circIn});
							FlxTween.tween(menuBox, {alpha: 0}, 0.5, {ease: FlxEase.linear});
							FlxTween.tween(menuText, {alpha: 0}, 0.5, {ease: FlxEase.linear});
							FlxTween.tween(menuItem, {alpha: 0}, 0.5, {ease: FlxEase.linear});
							FlxTween.tween(selector, {alpha: 0}, 0.5, {ease: FlxEase.linear});
							FlxTween.tween(robloxBackdrop, {alpha: 0}, 0.5, {ease: FlxEase.linear});
							{
								switch (optionShit[curSelected])
								{
									case 'story_mode':
										WeekData.reloadWeekFiles(true);
										PlayState.SONG = Song.loadFromJson('ProveIt', 'ProveIt');
										PlayState.storyPlaylist = ['ProveIt', 'Deadline', 'powering'];
										PlayState.isStoryMode = true;
										Difficulty.list = ['normal'];
										PlayState.campaignScore = 0;
										PlayState.campaignMisses = 0;
										PlayState.storyWeek = WeekData.weeksList.indexOf('week1');
										LoadingState.loadAndSwitchState(new PlayState(), true);
									case 'freeplay':
										MusicBeatState.switchState(new BloxxinFreeplayState());
										case 'options':
											MusicBeatState.switchState(new OptionsState());
											OptionsState.onPlayState = false;
											if (PlayState.SONG != null)
											{
												PlayState.SONG.arrowSkin = null;
												PlayState.SONG.splashSkin = null;
												PlayState.stageUI = 'normal';
											}
									case 'credits':
										MusicBeatState.switchState(new CreditsState());
									case 'awards':
										MusicBeatState.switchState(new AchievementsMenuState());
								}
							};

							FlxFlicker.flicker(menuItems.members[curSelected], 1, 0.06, false, false, function(flick:FlxFlicker)
							{
								switch (optionShit[curSelected])
								{
									case 'story_mode':
										WeekData.reloadWeekFiles(true);
										PlayState.SONG = Song.loadFromJson('ProveIt', 'ProveIt');
										PlayState.storyPlaylist = ['ProveIt', 'Deadline', 'powering'];
										PlayState.isStoryMode = true;
										Difficulty.list = ['Normal'];
										PlayState.campaignScore = 0;
										PlayState.campaignMisses = 0;
										PlayState.storyWeek = WeekData.weeksList.indexOf('week1');
										LoadingState.loadAndSwitchState(new PlayState(), true);
									case 'freeplay':
										MusicBeatState.switchState(new FreeplayState());
										case 'options':
											MusicBeatState.switchState(new OptionsState());
											OptionsState.onPlayState = false;
											if (PlayState.SONG != null)
											{
												PlayState.SONG.arrowSkin = null;
												PlayState.SONG.splashSkin = null;
												PlayState.stageUI = 'normal';
											}
									case 'credits':
										MusicBeatState.switchState(new CreditsState());
										#if ACHIEVEMENTS_ALLOWED
									case 'awards':
										MusicBeatState.switchState(new AchievementsMenuState());
									#end
								}
							});

							for (i in 0...menuItems.members.length)
							{
								if (i == curSelected)
									continue;
								FlxTween.tween(menuItems.members[i], {alpha: 0}, 0.4, {
									ease: FlxEase.quadOut,
									onComplete: function(twn:FlxTween)
									{
										menuItems.members[i].kill();
									}
								});
							}
						}
					}
				}
			}
			if (FlxG.mouse.wheel != 0) 
			{
				changeItem(-FlxG.mouse.wheel);
			}

			if (controls.UI_UP_P)
				changeItem(-1);

			if (controls.UI_DOWN_P)
				changeItem(1);

			if (controls.ACCEPT)
				{
					FlxG.sound.play(Paths.sound('confirmMenu'));
					if (optionShit[curSelected] == 'donate')
					{
						CoolUtil.browserLoad('https://ninja-muffin24.itch.io/funkin');
					}
					else
					{
						selectedSomethin = true;
						
						if (FlxG.mouse.visible == true)
							FlxG.mouse.visible = false;
	
						if (ClientPrefs.data.flashing)
							FlxFlicker.flicker(magenta, 1.1, 0.15, false);
	
						FlxTween.tween(FlxG.camera, {zoom: 2.5}, 0.5, {ease: FlxEase.circIn});
						FlxTween.tween(menuBox, {alpha: 0}, 0.5, {ease: FlxEase.linear});
						FlxTween.tween(menuText, {alpha: 0}, 0.5, {ease: FlxEase.linear});
						FlxTween.tween(menuItem, {alpha: 0}, 0.5, {ease: FlxEase.linear});
						FlxTween.tween(selector, {alpha: 0}, 0.5, {ease: FlxEase.linear});
						FlxTween.tween(robloxBackdrop, {alpha: 0}, 0.5, {ease: FlxEase.linear});
						{
							switch (optionShit[curSelected])
							{
								case 'story_mode':
									PlayState.storyPlaylist = ['ProveIt', 'Deadline', 'Powering'];
									PlayState.isStoryMode = true;
									WeekData.reloadWeekFiles(true);
									PlayState.SONG = Song.loadFromJson(PlayState.storyPlaylist[0].toLowerCase(), PlayState.storyPlaylist[0].toLowerCase());
									PlayState.campaignScore = 0;
									PlayState.campaignMisses = 0;
									LoadingState.loadAndSwitchState(new PlayState(), true);
									FreeplayState.destroyFreeplayVocals();
								case 'freeplay':
									MusicBeatState.switchState(new BloxxinFreeplayState());
									case 'options':
										MusicBeatState.switchState(new OptionsState());
										OptionsState.onPlayState = false;
										if (PlayState.SONG != null)
										{
											PlayState.SONG.arrowSkin = null;
											PlayState.SONG.splashSkin = null;
											PlayState.stageUI = 'normal';
										}
								case 'credits':
									MusicBeatState.switchState(new CreditsState());
								case 'awards':
									MusicBeatState.switchState(new AchievementsMenuState());
							}
						};
	
						FlxFlicker.flicker(menuItems.members[curSelected], 1, 0.06, false, false, function(flick:FlxFlicker)
						{
							switch (optionShit[curSelected])
							{
								case 'story_mode':
									PlayState.storyPlaylist = ['ProveIt', 'Deadline', 'Powering'];
									PlayState.isStoryMode = true;
									WeekData.reloadWeekFiles(true);
									PlayState.SONG = Song.loadFromJson(PlayState.storyPlaylist[0].toLowerCase(), PlayState.storyPlaylist[0].toLowerCase());
									PlayState.campaignScore = 0;
									PlayState.campaignMisses = 0;
									LoadingState.loadAndSwitchState(new PlayState(), true);
									FreeplayState.destroyFreeplayVocals();
								case 'freeplay':
									MusicBeatState.switchState(new FreeplayState());
								case 'options':
									MusicBeatState.switchState(new OptionsState());
									OptionsState.onPlayState = false;
									if (PlayState.SONG != null)
									{
										PlayState.SONG.arrowSkin = null;
										PlayState.SONG.splashSkin = null;
										PlayState.stageUI = 'normal';
									}
								case 'credits':
									MusicBeatState.switchState(new CreditsState());
									#if ACHIEVEMENTS_ALLOWED
								case 'awards':
									MusicBeatState.switchState(new AchievementsMenuState());
								#end
							}
						});
	
						for (i in 0...menuItems.members.length)
						{
							if (i == curSelected)
								continue;
							FlxTween.tween(menuItems.members[i], {alpha: 0}, 0.4, {
								ease: FlxEase.quadOut,
								onComplete: function(twn:FlxTween)
								{
									menuItems.members[i].kill();
								}
							});
						}
					}
				}

			if (controls.BACK)
			{
				selectedSomethin = true;
				FlxG.sound.play(Paths.sound('cancelMenu'));
				MusicBeatState.switchState(new TitleState());
			}
			#if desktop
			if (controls.justPressed('debug_1'))
			{
				selectedSomethin = true;
				MusicBeatState.switchState(new MasterEditorMenu());
			}
			#end
		}

		super.update(elapsed);
	}

	function changeItem(huh:Int = 0)
	{
		FlxG.sound.play(Paths.sound('scrollMenu'));
		menuItems.members[curSelected].animation.play('idle');
		menuItems.members[curSelected].updateHitbox();

		curSelected += huh;

		if (curSelected >= menuItems.length)
			curSelected = 0;
		if (curSelected < 0)
			curSelected = menuItems.length - 1;

		switch (curSelected) {
			case 0: FlxTween.tween(selector, {y: 175}, 0.15, {ease: FlxEase.sineInOut});
            case 1: FlxTween.tween(selector, {y: 275}, 0.15, {ease: FlxEase.sineInOut});
            case 2: FlxTween.tween(selector, {y: 375}, 0.15, {ease: FlxEase.sineInOut});
            case 3: FlxTween.tween(selector, {y: 475}, 0.15, {ease: FlxEase.sineInOut});
			case 4: FlxTween.tween(selector, {y: 575}, 0.15, {ease: FlxEase.sineInOut});
		}

		menuItems.members[curSelected].animation.play('selected');
		menuItems.members[curSelected].updateHitbox();

			menuItems.members[curSelected].getGraphicMidpoint().y - (menuItems.length > 4 ? menuItems.length * 8 : 0);
	}
}