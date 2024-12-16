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
	public static var firstStart:Bool = true;

	var curSelected:Int = 0;
	var currentMember:Int = 0;

	var offsetThing:Float = -75;

	var teamList:Array<Array<String>> = [ //fyi, Name -- File name -- Status -- Quote -- Color
		['Unfunny2',	'unfunny2',		'Director, Animator, Charter, Composer',					 '"what"',		'8a00b4'],
		['Nil',	    	'nil',		    'Coder, Animator',		                        			 '"I want to kms"',		'ff0000'],
		['Prem',		'prem',		    'Coder',				                                 	 '"hahahahaha"',		'444444'],
		['Nohomatta',	'nohomatta',		'Animator',					 '"this shit is unplayable"',		'000000'],
		['UrFestive_Travago',	    	'travago',		    'Artist',		                        			 '"Placeholder"',		'7600bc'],
		['Placeholder',		'placeholder',		    'Placeholder',				                                 	 '"Placeholder"',		'000000'],
		['Placeholder',	'placeholder',		'Placeholder',					 '"Placeholder"',		'000000'],
		['Placeholder',	    	'placeholder',		    'Placeholder',		                        			 '"Placeholder"',		'000000'],
		['Placeholder',		'placeholder',		    'Placeholder',				                                 	 '"Placeholder"',		'000000'],
		['Placeholder',	'placeholder',		'Placeholder',					 '"Placeholder"',		'000000'],
		['Placeholder',	    	'placeholder',		    'Placeholder',		                        			 '"Placeholder"',		'000000'],
		['Placeholder',		'placeholder',		    'Placeholder',				                                 	 '"Placeholder"',		'000000']
	];

	var bg:FlxSprite;

	var grad:FlxSprite;

	var baseplate:FlxSprite;

	var window:FlxSprite;

	var nameText:FlxText;
	var statusText:FlxText;
	var quoteText:FlxText;

	var member:FlxSprite;

	var intendedColor:FlxColor;
	var colorTween:FlxTween;

	var memberss:FlxTypedGroup<FlxSprite>;

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
		bg.screenCenter();
		add(bg);

		baseplate = new FlxSprite().loadGraphic(Paths.image('credits/Bloxxin/baseplate'));
		baseplate.antialiasing = ClientPrefs.data.antialiasing;
		baseplate.screenCenter();
		add(baseplate);

		grad = new FlxSprite().loadGraphic(Paths.image('credits/Bloxxin/gradient'));
		grad.antialiasing = ClientPrefs.data.antialiasing;
		grad.screenCenter();
		add(grad);

		window = new FlxSprite().loadGraphic(Paths.image('credits/Bloxxin/window'));
		window.antialiasing = ClientPrefs.data.antialiasing;
		window.screenCenter();
		window.x += 300;
		window.y -= 24;
		add(window);

		nameText = new FlxText(0, 0, FlxG.width,"NULL",32);
		nameText.setFormat("MS Sans Serif.ttf", 16, FlxColor.WHITE, CENTER);
		nameText.screenCenter(Y);
		nameText.y -= 192;
		nameText.x = 80;
		add(nameText);

		statusText = new FlxText(0, 0, FlxG.width,"NULL",32);
		statusText.setFormat("MS Sans Serif.ttf", 18, FlxColor.GRAY, LEFT);
		statusText.y = nameText.y + 25;
		statusText.x = 665;
		add(statusText);

		quoteText = new FlxText(0, 0, FlxG.width,"NULL",32);
		quoteText.setFormat("MS Sans Serif.ttf", 18, FlxColor.GRAY, LEFT);
		quoteText.borderSize = 2;
		quoteText.y = nameText.y + 125;
		quoteText.x = 665;
		add(quoteText);

		
		memberss = new FlxTypedGroup<FlxSprite>();

		for (i in 0...teamList.length) {
			member = new FlxSprite().loadGraphic(Paths.image('credits/Bloxxin/member_' + teamList[i][1]));
			member.antialiasing = ClientPrefs.data.antialiasing;
			member.scale.set(1.5, 1.5);
			member.x = 100;
			member.y = 250;
			member.ID = i;
			member.visible = false;
			memberss.add(member);
		}
		add(memberss);

		changeMember(0);

		grad.color = CoolUtil.colorFromString(teamList[currentMember][4]);
		intendedColor = grad.color;

		var controls:FlxText = new FlxText(0, 0, FlxG.width, "LEFT ARROW | RIGHT ARROW to navigate!", 32);
        controls.scrollFactor.set();
		controls.screenCenter(X);
		controls.alignment = "center";
        controls.setFormat("Gotham Black Regular.ttf", 24, FlxColor.WHITE, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
        controls.borderSize = 2;
		controls.alpha = 0;
		add(controls);
		if (firstStart)
			FlxTween.tween(controls, {alpha: 1}, 0.5, {ease: FlxEase.linear, type: PINGPONG});
		
		super.create();
	}

	var quitting:Bool = false;
	override function update(elapsed:Float)
		{
			var leftP = controls.UI_LEFT_P; //guh
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

            if(currentMember > teamList.length - 1)
            {
                currentMember = 0;
            }
			FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);
			for (member in memberss)
			{
				if (member.ID == currentMember)
				{
					member.visible = true;
					member.y = 250;
					member.y = member.y + 10;
					FlxTween.tween(member, {y: member.y - 10}, 0.2, {ease: FlxEase.quartOut});
				}else{
					member.visible = false;
				}
			}

			nameText.text = teamList[currentMember][0];
			statusText.text = teamList[currentMember][2];
			quoteText.text = teamList[currentMember][3];

			switch(teamList[currentMember][0])
			{
				case 'Unfunny2':
					nameText.x = 80;
				case 'Nil':
					nameText.x = 55;
				case 'Prem':
					nameText.x = 64;
				case 'Nohomatta':
					nameText.x = 83;
				case 'UrFestive_Travago':
					nameText.x = 113;
			}

			var newColor:FlxColor = CoolUtil.colorFromString(teamList[currentMember][4]);
			if(newColor != intendedColor) {
				if(colorTween != null) {
					colorTween.cancel();
				}
				intendedColor = newColor;
				colorTween = FlxTween.color(grad, 0.3, grad.color, intendedColor, {
					onComplete: function(twn:FlxTween) {
						colorTween = null;
					}
				});
			}

			trace(teamList[currentMember]);
		}
}