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
import objects.AttachedSprite;

class BloxxinCreditsState extends MusicBeatState
{
	var curSelected:Int = 0;
	var currentMember:Int = 0;

	var offsetThing:Float = -75;

	var teamList:Array<String> = [
		'prem',
		'nil',
		'unfunny2'
	];

	var bg:FlxSprite;
	var baseplate:FlxSprite;
	var wipText:FlxText;
	var member:FlxSprite;

	override function create()
	{
		#if desktop
		// Updating Discord Rich Presence
		DiscordClient.changePresence("In the Menus", null);
		#end

        transIn = FlxTransitionableState.defaultTransIn;
		transOut = FlxTransitionableState.defaultTransOut;
		if (!FlxG.mouse.visible)
            FlxG.mouse.visible = true;

		persistentUpdate = true;
		bg = new FlxSprite().loadGraphic(Paths.image('menuDesat'));
		bg.antialiasing = ClientPrefs.data.antialiasing;
		add(bg);
		bg.screenCenter();

		baseplate = new FlxSprite().loadGraphic(Paths.image('credits/Bloxxin/baseplate'));
		baseplate.antialiasing = ClientPrefs.data.antialiasing;
		add(baseplate);
		baseplate.screenCenter();

		wipText = new FlxText(0, 0, FlxG.width,
			"WORK IN\n
			PROGRESS\n
			HUZZAH!!!\n
			hi prem. - nil",
			32);
		wipText.setFormat("Gotham Black Regular.ttf", 32, FlxColor.WHITE, CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		wipText.borderSize = 2;
		wipText.screenCenter(Y);
		wipText.x = 300;
		add(wipText);

		var members:FlxTypedGroup<FlxSprite>;
		members = new FlxTypedGroup<FlxSprite>();
		add(members);

		for (i in 0...teamList.length) {
			member = new FlxSprite().loadGraphic(Paths.image('credits/Bloxxin/member_' + teamList[i]));
			member.antialiasing = ClientPrefs.data.antialiasing;
			member.scale.set(1.5, 1.5);
			member.x = 100;
			member.y = 250;
			member.ID = i;
		}
		members.add(member);

		changeMember();

		super.create();
	}

	var quitting:Bool = false;
	override function update(elapsed:Float)
		{
			var leftP = controls.UI_LEFT_P;
			var rightP = controls.UI_RIGHT_P;

			if (leftP)
			{
				changeMember(-1);
			}
			if (rightP)
			{
				changeMember(1);
			}

			if (controls.BACK)
			{
				FlxG.sound.play(Paths.sound('cancelMenu'));
				MusicBeatState.switchState(new MainMenuState());
				quitting = true;
			}
			super.update(elapsed);
		}

		function changeMember(change:Int)
		{
			currentMember += change;

            if(currentMember < 0)
            {
                currentMember = teamList.length - 1;
            }

            if(currentMember > teamList.length)
            {
                currentMember = 0;
            }

			trace(teamList[currentMember]);
		}
}