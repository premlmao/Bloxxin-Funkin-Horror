package states;

import flixel.FlxObject;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.display.FlxBackdrop;
import flixel.addons.display.FlxGridOverlay;
import flixel.effects.FlxFlicker;
import lime.app.Application;
import states.editors.MasterEditorMenu;
import options.OptionsState;

class MainMenuState extends MusicBeatState
{
	public static var psychEngineVersion:String = '0.7.2h'; // This is also used for Discord RPC
	public static var firstStart:Bool = true;
	public static var curSelected:Int = 0;

	var menuItems:FlxTypedGroup<FlxSprite>;

	var optionShit:Array<String> = [
		'story_mode',
		'freeplay',
		'options',
		'credits',
		#if ACHIEVEMENTS_ALLOWED 'awards', #end
	];

	var camFollow:FlxObject;
	var magenta:FlxSprite;
	var selector:FlxSprite;
	var trussAndStuds:FlxBackdrop;
	var menuBox:FlxSprite;
	var menuText:FlxSprite;

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

		transIn = FlxTransitionableState.defaultTransIn;
		transOut = FlxTransitionableState.defaultTransOut;

		persistentUpdate = persistentDraw = true;

		var yScroll:Float = Math.max(0.25 - (0.05 * (optionShit.length - 4)), 0.1);
		var bg:FlxSprite = new FlxSprite(-80).loadGraphic(Paths.image('menuBG'));
		bg.antialiasing = ClientPrefs.data.antialiasing;
		bg.scrollFactor.set(0, yScroll);
		bg.setGraphicSize(Std.int(bg.width * 1));
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

		trussAndStuds = new FlxBackdrop(Paths.image('mainmenuUI/trussAndStuds'), XY);
		trussAndStuds.velocity.set(200, 0);
		trussAndStuds.alpha = 0;
		add(trussAndStuds);

		menuBox = new FlxSprite(-80).loadGraphic(Paths.image('mainmenuUI/menuBox'));
		menuBox.antialiasing = ClientPrefs.data.antialiasing;
		menuBox.setGraphicSize(Std.int(menuBox.width * 1.2));
		menuBox.updateHitbox();
		menuBox.x = -5;
		menuBox.y = -1000;
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

		menuItems = new FlxTypedGroup<FlxSprite>();
		add(menuItems);

		for (i in 0...optionShit.length)
		{
			var offset:Float = 108 - (Math.max(optionShit.length, 4) - 4) * 80;
			var menuItem:FlxSprite = new FlxSprite(0, (i * 140) + offset);
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
				case 0: menuItem.x = -1500;
				case 1: menuItem.x = -1500;
				case 2: menuItem.x = -1500;
				case 3: menuItem.x = -1500;
				case 4: menuItem.x = -1500;
			}	

			switch(i){
				case 0: menuItem.y = -60;
				case 1: menuItem.y = -60;
				case 2: menuItem.y = -60;
				case 3: menuItem.y = -60;
				case 4: menuItem.y = -60;
			}
			if (firstStart)
				FlxTween.tween(menuBox, {y: 0}, 0.75, {ease: FlxEase.circInOut});
				FlxTween.tween(trussAndStuds, {alpha: 1, x: 1000}, 0.75, {ease: FlxEase.circInOut});
				FlxTween.tween(menuText, {y: 35}, 0.75, {ease: FlxEase.circInOut, startDelay: 0.2});
				FlxTween.tween(menuItem, {x: -285}, 0.75, {ease: FlxEase.circInOut, startDelay: 0.5});
				FlxTween.tween(selector, {alpha: 1}, 0.75, {ease: FlxEase.circInOut, startDelay: 0.5});
		}

		var psychVer:FlxText = new FlxText(12, FlxG.height - 44, 0, "Psych Engine v" + psychEngineVersion, 12);
		psychVer.scrollFactor.set();
		psychVer.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(psychVer);
		var fnfVer:FlxText = new FlxText(12, FlxG.height - 24, 0, "Friday Night Funkin' v" + Application.current.meta.get('version'), 12);
		fnfVer.scrollFactor.set();
		fnfVer.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(fnfVer);
		changeItem();

		#if ACHIEVEMENTS_ALLOWED
		// Unlocks "Freaky on a Friday Night" achievement if it's a Friday and between 18:00 PM and 23:59 PM
		var leDate = Date.now();
		if (leDate.getDay() == 5 && leDate.getHours() >= 18)
			Achievements.unlock('friday_night_play');

		#if MODS_ALLOWED
		Achievements.reloadList();
		#end
		#end

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
			if (controls.UI_UP_P)
				changeItem(-1);

			if (controls.UI_DOWN_P)
				changeItem(1);

			if (controls.BACK)
			{
				selectedSomethin = true;
				FlxG.sound.play(Paths.sound('cancelMenu'));
				MusicBeatState.switchState(new TitleState());
			}

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

					if (ClientPrefs.data.flashing)
						FlxFlicker.flicker(magenta, 1.1, 0.15, false);

					FlxTween.tween(FlxG.camera, {zoom: 2.5}, 0.7, {ease: FlxEase.circInOut});
					{
						switch (optionShit[curSelected])
						{
							case 'story_mode':
								MusicBeatState.switchState(new StoryMenuState());
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
								#if ACHIEVEMENTS_ALLOWED
							case 'awards':
								MusicBeatState.switchState(new AchievementsMenuState());
							#end
						}
					};

					FlxFlicker.flicker(menuItems.members[curSelected], 1, 0.06, false, false, function(flick:FlxFlicker)
					{
						switch (optionShit[curSelected])
						{
							case 'story_mode':
								MusicBeatState.switchState(new StoryMenuState());
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
			case 0: FlxTween.tween(selector, {x: 365, y: 175}, 0.15, {ease: FlxEase.circInOut});
            case 1: FlxTween.tween(selector, {x: 365, y: 275}, 0.15, {ease: FlxEase.circInOut});
            case 2: FlxTween.tween(selector, {x: 365, y: 375}, 0.15, {ease: FlxEase.circInOut});
            case 3: FlxTween.tween(selector, {x: 365, y: 475}, 0.15, {ease: FlxEase.circInOut});
			case 4: FlxTween.tween(selector, {x: 365, y: 575}, 0.15, {ease: FlxEase.circInOut});
		}

		menuItems.members[curSelected].animation.play('selected');
		menuItems.members[curSelected].updateHitbox();

			menuItems.members[curSelected].getGraphicMidpoint().y - (menuItems.length > 4 ? menuItems.length * 8 : 0);
	}
}