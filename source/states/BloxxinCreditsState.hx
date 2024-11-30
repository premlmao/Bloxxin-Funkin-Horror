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

	var teamList:Array<Array<String>> = [ //fyi, Name -- File name -- Status -- Quote -- Color
		['Unfunny2',	'unfunny2',		'Director, Animator, Charter, Composer',					 '"what"',		'8a00b4'],
		['Nil',	    	'nil',		    'Coder, Animator',		                        			 '"I want to kms"',		'ff0000'],
		['Prem',		'prem',		    'Coder',				                                 	 '"hahahahaha"',		'444444']
	];

	var bg:FlxSprite;

	var grad:FlxSprite;

	var baseplate:FlxSprite;

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
		add(bg);
		bg.screenCenter();


		baseplate = new FlxSprite().loadGraphic(Paths.image('credits/Bloxxin/baseplate'));
		baseplate.antialiasing = ClientPrefs.data.antialiasing;
		add(baseplate);
		baseplate.screenCenter();

		grad = new FlxSprite().loadGraphic(Paths.image('credits/Bloxxin/gradient'));
		grad.antialiasing = ClientPrefs.data.antialiasing;
		add(grad);
		grad.screenCenter();

		nameText = new FlxText(0, 0, FlxG.width,"NULL",32);
		nameText.setFormat("Gotham Black Regular.ttf", 32, FlxColor.WHITE, CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		nameText.borderSize = 2;
		nameText.screenCenter(Y);
		nameText.y -= 150;
		nameText.x = 300;
		add(nameText);

		statusText = new FlxText(0, 0, FlxG.width,"NULL",32);
		statusText.setFormat("Gotham Black Regular.ttf", 32, FlxColor.WHITE, CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		statusText.borderSize = 2;
		statusText.y = nameText.y + 100;
		statusText.x = 300;
		add(statusText);

		quoteText = new FlxText(0, 0, FlxG.width,"NULL",32);
		quoteText.setFormat("Gotham Black Regular.ttf", 32, FlxColor.WHITE, CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		quoteText.borderSize = 2;
		quoteText.y = nameText.y + 200;
		quoteText.x = 300;
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