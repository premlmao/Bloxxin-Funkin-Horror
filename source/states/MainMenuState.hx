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
		'week1',
		'freeplay',
		'options',
		'credits',
		'awards',
	];

	var camFollow:FlxObject;
	var bg:FlxSprite;
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
		bg = new FlxSprite(0, 0).loadGraphic(Paths.image('mainmenu/bg'));
		bg.antialiasing = ClientPrefs.data.antialiasing;
		bg.scrollFactor.set(0, yScroll);
		bg.updateHitbox();
		bg.screenCenter();
		add(bg);

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
			menuItem.ID = i;
			menuItem.scrollFactor.set();

			menuItem.x = -715;
			menuItem.y = -300;
			menuItem.updateHitbox();
			menuItems.add(menuItem);

			switch(i)
			{
				case 0:
					menuItem.scale.x = 0.35;
					menuItem.scale.y = 0.35;
					menuItem.screenCenter();
					menuItem.setPosition(-715, -300);
					case 1 | 2 | 3 | 4:
						menuItem.scale.x = 0.4;
						menuItem.scale.y = 0.4;
			}
		}

		var fnfVer:FlxText = new FlxText(12, FlxG.height - 24, 0, "Bloxxin Funkin Horror' v2.0", 12);
		fnfVer.scrollFactor.set();
		fnfVer.setFormat("Gotham Black Regular.ttf", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(fnfVer);
		changeItem(0);

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
			for (i in 0...optionShit.length)
			{
				var memb:FlxSprite = menuItems.members[i];
				if(FlxG.mouse.overlaps(memb))
				{
					curSelected = memb.ID;
					trace('hovering over:' + curSelected);
				}
			}

			if (FlxG.mouse.justPressed)
			{
				acceptedAThing();
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

	function acceptedAThing()
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

			FlxTween.tween(FlxG.camera, {zoom: 2.5}, 0.5, {ease: FlxEase.circIn});
			{
				switch (optionShit[curSelected])
				{
					case 'week1':
						PlayState.storyPlaylist = ['ProveIt', 'Deadline', 'Powering'];
						PlayState.isStoryMode = true;
						WeekData.reloadWeekFiles(true);
						PlayState.SONG = Song.loadFromJson(PlayState.storyPlaylist[0].toLowerCase() + "", PlayState.storyPlaylist[0].toLowerCase());
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
						MusicBeatState.switchState(new BloxxinCreditsState());
					case 'awards':
						MusicBeatState.switchState(new AchievementsMenuState());
				}
			};

			FlxFlicker.flicker(menuItems.members[curSelected], 1, 0.06, false, false, function(flick:FlxFlicker)
			{
				switch (optionShit[curSelected])
				{
					case 'week1':
						PlayState.storyPlaylist = ['ProveIt', 'Deadline', 'Powering'];
						PlayState.isStoryMode = true;
						WeekData.reloadWeekFiles(true);
						PlayState.SONG = Song.loadFromJson(PlayState.storyPlaylist[0].toLowerCase() + "", PlayState.storyPlaylist[0].toLowerCase());
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

	function changeItem(huh:Int) 
	{
		FlxG.sound.play(Paths.sound('scrollMenu'));
		menuItems.members[curSelected].animation.play('idle');
		menuItems.members[curSelected].updateHitbox();
			
		if (curSelected >= menuItems.length)
			curSelected = 0;
		if (curSelected < 0)
			curSelected = menuItems.length - 1;

		menuItems.members[curSelected].animation.play('selected');
		menuItems.members[curSelected].updateHitbox();

			menuItems.members[curSelected].getGraphicMidpoint().y - (menuItems.length > 4 ? menuItems.length * 8 : 0);
	}
}