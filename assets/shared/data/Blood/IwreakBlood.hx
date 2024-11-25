import psychlua.LuaUtils;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxG;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;

import flixel.text.FlxText;


import flixel.math.FlxMath;


var textHintJeff:FlxText = new FlxText();
var centerized:Float;
var textjeff:FlxText = new FlxText();
//JEFF
var JeffsMechanic:FlxSprite = new FlxSprite(0, 0, Paths.image("Dodge_This"));
var IsDodg:Bool = false;
var onCoolDown:Bool = false;

var jeffknifesound = (Paths.sound('JeffKnifeSwoosh'));
var NextBeat:Int;
var ActiveJeff:Bool = false;

//BALDI
var Thinkery:FlxSprite = new FlxSprite(0, 0);
var textQuestion:FlxText = new FlxText();
var textAnswer:FlxText = new FlxText();
var textTimer:FlxText = new FlxText();
var timeRemaining:Int;
var DoneEquation:Bool = false;
var answerrr:Float;


function onCreate()
{ 

    IsDodg = false;

    JeffsMechanic.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
    JeffsMechanic.scale.set(0.6,0.6);
    JeffsMechanic.screenCenter();

    textjeff.setFormat(Paths.font('Comic Sans MS.ttf'), 32, FlxColor.RED, 'center');
    textjeff.borderColor = FlxColor.RED;
    textjeff.text = 'Prepare..';
    textjeff.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
    textjeff.screenCenter();
    textjeff.y = textjeff.y + 200;
    textjeff.alpha = 0;
   
    add(JeffsMechanic);
    add(textjeff);
    JeffsMechanic.alpha = 0;
}


function onBeatHit()
{
    if (curBeat == NextBeat && ActiveJeff)
    {
        jeffSlash();
    } 
switch (curBeat)
{
    case 12:
        textHintJeff.setFormat(Paths.font('Comic Sans MS.ttf'), 32, FlxColor.WHITE, 'center');
        textHintJeff.text = 'Press the mechanic key to Dodge!\nCheck settings to know the mechanic key!';
        textHintJeff.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
        textHintJeff.screenCenter();
        centerized = textHintJeff.y;
        textHintJeff.y = -100;
        add(textHintJeff);
    case 16:
        modchartTweens.set('aaa', FlxTween.tween(textHintJeff, {y: centerized}, 1, {ease: FlxEase.quadOut}));
    case 24:
        modchartTweens.set('aaa', FlxTween.tween(textHintJeff, {y: 1000}, 1, {ease: FlxEase.quadIn}));
    case 32:
        textHintJeff.destroy();
    case 76, 92,118, 134, 148, 172, 188, 216:
        JeffMechanic();
    case 264:
        JeffsMechanic.destroy();
        textjeff.destroy();

        Thinkery.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
        Thinkery.frames = Paths.getSparrowAtlas('baldithethinker');
        Thinkery.animation.addByPrefix('enter', 'enter', 16, false);
        Thinkery.animation.addByPrefix('idle', 'idle', 10, true);
        Thinkery.animation.addByPrefix('exit', 'exit', 16, false);
        Thinkery.scale.set(1, 1);
        Thinkery.scrollFactor.set();
        Thinkery.updateHitbox();
        Thinkery.screenCenter();
        Thinkery.visible = false;
        


        textQuestion.setFormat(Paths.font('Comic Sans MS.ttf'), 32, FlxColor.BLACK);
        textQuestion.text = '9+9=?';
        textQuestion.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
        textQuestion.screenCenter();
        textQuestion.y = textQuestion.y - 40;
        textQuestion.x = textQuestion.x - 250;
        textQuestion.visible = false;

        textAnswer.setFormat(Paths.font('Comic Sans MS.ttf'), 32, FlxColor.BLACK);
        textAnswer.text = 'Enter Answer';
        textAnswer.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
        textAnswer.screenCenter();
        textAnswer.x = textAnswer.x - 20;
        textAnswer.y = textQuestion.y + 160;
        textAnswer.visible = false;

        textTimer.setFormat(Paths.font('Comic Sans MS.ttf'), 32, FlxColor.RED, 'center');
        textTimer.text = 'Use your keyboard to type in the answer, hit the mechanic button to submit.\nTIME REMAINING: 99s';
        textTimer.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
        textTimer.screenCenter();
        textTimer.y = textTimer.y + 260;
        textTimer.visible = false;

        add(Thinkery);
        add(textQuestion);
        add(textAnswer);
        add(textTimer);
    
    case 328:
        BaldiMechanic();
}
}

function JeffMechanic()
{
    textjeff.text = 'Prepare..';
    ActiveJeff = true;
    NextBeat = curBeat + 4;
    modchartTweens.set('aaa', FlxTween.tween(JeffsMechanic, {alpha: 0.7}, 1, {ease: FlxEase.quadIn}));
    modchartTweens.set('aaaa', FlxTween.tween(textjeff, {alpha: 0.7}, 1, {ease: FlxEase.quadIn}));
}

function jeffSlash()
{
    textjeff.text = 'SLASH!';
    modchartTweens.set('aaa', FlxTween.tween(JeffsMechanic, {alpha: 1}, 0.2, {ease: FlxEase.quadIn}));
    modchartTweens.set('aaaa', FlxTween.tween(textjeff, {alpha: 1}, 1, {ease: FlxEase.quadIn}));
    modchartTimers.set('a' ,new FlxTimer().start(0.2, function(tmr:FlxTimer)
        {
            jeffknifesound.play();
            if (IsDodg == false)
            {
                trace("awh");
            }
            ActiveJeff = false;
            modchartTweens.set('aaa', FlxTween.tween(JeffsMechanic, {alpha: 0}, 1, {ease: FlxEase.quadIn}));
            modchartTweens.set('aaaa', FlxTween.tween(textjeff, {alpha: 0}, 1, {ease: FlxEase.quadIn}));
        }));
}


function BaldiMechanic()
{
    Thinkery.visible = true;
    Thinkery.animation.play('enter', false, false);
    modchartTimers.set('a' ,new FlxTimer().start(1, function(tmr:FlxTimer)
    {
        Thinkery.animation.play('idle', false, false);
        BaldiGetNum();
        textTimer.visible = true;
        textAnswer.visible = true;
        modchartTimers.set('a' ,new FlxTimer().start(1 / game.playbackRate, function(tmr:FlxTimer)
        {
            textTimer.text = 'Use your keyboard to type in the answer, hit the mechanic button to submit.\nTIME REMAINING: ' + tmr.loopsLeft;
            if (tmr.loopsLeft == 0 && DoneEquation == false)
            {
                trace("awh");
                BaldiRemove();
            }
        }, 4));

    }));
}

function BaldiRemove()
{
    textAnswer.visible = false;
    textTimer.visible = false;
    textQuestion.visible = false;
    Thinkery.animation.play('exit', false, false);
    modchartTimers.set('a' ,new FlxTimer().start(0.3, function(tmr:FlxTimer) //im too lazy to just check if the anims done playing
    {
        Thinkery.visible = false;

    }));
}

function BaldiGetNum()
{
    var num1:Float;
    var num2:Float;
    var thing:Int;

    thing = FlxG.random.int(0, 1);

    if (thing == 0)
    {
        
        num1 = FlxG.random.int(1, 9);
        num2 = FlxG.random.int(1, 9);
        while (num1 + num2 == 10)
        {
            num1 = FlxG.random.int(1, 9);
            num2 = FlxG.random.int(1, 9);
        }
        textQuestion.text = num1 + "+" + num2 + "=?";
        answerrr = num1 + num2;
    }else{
        num1 = FlxG.random.int(1, 9);
        num2 = FlxG.random.int(1, 9);
        while (num1 - num2 == 0 || num1 - num2 == -10)
        {
            num1 = FlxG.random.int(1, 9);
            num2 = FlxG.random.int(1, 9);
        }
        textQuestion.text = num1 + "-" + num2 + "=?";
        answerrr = num1 - num2;
    }

    textQuestion.visible = true;
    
}


function onUpdate(elapsed:Float)
{
    if (controls.justPressed('mechanic') && curBeat > 16 && curBeat < 228 && IsDodg == false && onCoolDown == false)
    {
        onCoolDown = true;
        IsDodg = true;
        boyfriend.color = FlxColor.YELLOW;
        modchartTweens.set('boyfriendX', FlxTween.tween(boyfriend, {x: boyfriend.x + 100}, 0.2, {ease: FlxEase.sineOut}));
        modchartTimers.set("a",new FlxTimer().start(0.1, function(tmr:FlxTimer)
            {
                boyfriend.color = FlxColor.RED;
                modchartTimers.set('hi', new FlxTimer().start(0.05, function(tmr:FlxTimer)
                    {
                        boyfriend.color = FlxColor.WHITE;
                        modchartTimers.set('a',new FlxTimer().start(0.5, function (tmr:FlxTimer) 
                            {
                                modchartTweens.set('boyfriendX', FlxTween.tween(boyfriend, {x: boyfriend.x - 100}, 0.3, {ease: FlxEase.quartOut}));
                                modchartTimers.set('a' ,new FlxTimer().start(0.2, function(tmr:FlxTimer)
                                {
                                    IsDodg = false;
                                    modchartTimers.set('a' ,new FlxTimer().start(2, function(tmr:FlxTimer)
                                    {
                                        onCoolDown = false;
                                    }));
                                }));
                            }));
                    }));
                
            }));
    }


}