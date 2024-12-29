import psychlua.LuaUtils;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxG;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;

import flixel.text.FlxText;
import flixel.text.FlxTextBorderStyle;

import flixel.FlxState;
import flixel.math.FlxMath;

var textHintJeff:FlxText = new FlxText();
var centerized:Float;
var textjeff:FlxText = new FlxText();
//JEFF
var JeffsMechanic:FlxSprite = new FlxSprite(0, 0, Paths.image("Dodge_This"));
var IsDodg:Bool = false;
var onCoolDown:Bool = false;

var jeffknifesound = (Paths.sound('JeffKnifeSwoosh'));
var jeffscare = (Paths.sound('jeffscare'));
var NextBeat:Int;
var ActiveJeff:Bool = false;
var JeffJumpscare:FlxSprite = new FlxSprite(0, 0);

//BALDI
var Thinkery:FlxSprite = new FlxSprite(0, 0);
var textQuestion:FlxText = new FlxText();
var textAnswer:FlxText = new FlxText();
var textTimer:FlxText = new FlxText();
var timeRemaining:Int;
var DoneEquation:Bool = false;
var ThinkPadOn:Bool = false;
var answerrr:Float;
var baldiKillerStreak:Int = 0;

var BaldYes:FlxSprite = new FlxSprite(0, 0, Paths.image("baldiHappy"));
var BaldNo:FlxSprite = new FlxSprite(0, 0, Paths.image("baldiAnger"));

var bald_slap = (Paths.sound('bald_slap'));
var bald_yes = (Paths.sound('bald_yes'));
var bald_no = (Paths.sound('bald_no'));

function onCreate()
{ 

    IsDodg = false;

    JeffsMechanic.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
    JeffsMechanic.scale.set(0.6,0.6);
    JeffsMechanic.screenCenter();

    textjeff.setFormat(Paths.font('Comic Sans MS.ttf'), 32, FlxColor.RED, 'center', FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
    textjeff.borderColor = FlxColor.RED;
    textjeff.text = 'Prepare..';
    textjeff.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
    textjeff.screenCenter();
    textjeff.y = textjeff.y + 200;
    textjeff.alpha = 0;
   
    add(JeffsMechanic);
    add(textjeff);
    JeffsMechanic.alpha = 0;

    JeffJumpscare.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
    JeffJumpscare.frames = Paths.getSparrowAtlas('jeffjump');
    JeffJumpscare.animation.addByPrefix('jump', ' jump', 8, false);
    JeffJumpscare.scrollFactor.set();
    JeffJumpscare.updateHitbox();
    JeffJumpscare.screenCenter();
    JeffJumpscare.visible = false;
    add(JeffJumpscare);

    //Baldi 
    Thinkery.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
    Thinkery.frames = Paths.getSparrowAtlas('baldithethinker');
    Thinkery.animation.addByPrefix('enter', 'enter', 22, false);
    Thinkery.animation.addByPrefix('idle', 'idle', 10, true);
    Thinkery.animation.addByPrefix('exit', 'exit', 22, false);
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
    textQuestion.x = textQuestion.x - 160;
    textQuestion.visible = false;

    textAnswer.setFormat(Paths.font('Comic Sans MS.ttf'), 32, FlxColor.BLACK);
    textAnswer.text = 'Enter Answer';
    textAnswer.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
    textAnswer.screenCenter();
    textAnswer.x = textAnswer.x - 20;
    textAnswer.y = textQuestion.y + 160;
    textAnswer.visible = false;

    textTimer.setFormat(Paths.font('Comic Sans MS.ttf'), 22, FlxColor.RED, 'center', FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
    textTimer.text = 'Use your keyboard to type in the answer\nhit the mechanic button to submit. Backspace resets it!\nTIME REMAINING: 99s';
    textTimer.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
    textTimer.screenCenter();
    textTimer.y = textTimer.y + 260;
    textTimer.visible = false;

    BaldYes.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
    BaldYes.screenCenter();
    BaldYes.alpha = 0;

    BaldNo.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
    BaldNo.screenCenter();
    BaldNo.alpha = 0;

    add(BaldYes);
    add(BaldNo);
}


function onBeatHit()
{
    if (curBeat == NextBeat && ActiveJeff)
    {
        jeffSlash();
    } 

    if (baldiKillerStreak > 0)
    {
        bald_slap.play();
        baldiKillerStreak -= 1;
        game.health -= 0.3;
    }
switch (curBeat)
{
    case 12:
        textHintJeff.setFormat(Paths.font('Comic Sans MS.ttf'), 32, FlxColor.WHITE, 'center', FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
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



        add(Thinkery);
        add(textQuestion);
        add(textAnswer);
        add(textTimer);
    
    case 328,360, 424, 456, 488, 520:
        BaldiMechanic();
}
}

function JeffMechanic()
{
    textjeff.text = 'Prepare..';
    ActiveJeff = true;
    NextBeat = curBeat + 4;
    modchartTweens.set('aaa', FlxTween.tween(JeffsMechanic, {alpha: 1}, 0.5, {ease: FlxEase.quadIn}));
    modchartTweens.set('aaaa', FlxTween.tween(textjeff, {alpha: 1}, 0.5, {ease: FlxEase.quadIn}));
    modchartTweens.set('aaaaa', FlxTween.color(textjeff, 0.05, FlxColor.LIME, FlxColor.RED, {type: 8}));
}

function jeffSlash()
{
    textjeff.text = 'SLASH!';
    modchartTweens.set('aaa', FlxTween.tween(JeffsMechanic, {alpha: 1}, 0.2, {ease: FlxEase.quadIn}));
    modchartTweens.set('aaaa', FlxTween.tween(textjeff, {alpha: 1}, 1, {ease: FlxEase.quadIn}));
    modchartTweens.set('aaaaa', FlxTween.color(textjeff, 0.05, FlxColor.RED, FlxColor.LIME, {type: 8}));
    modchartTimers.set('a' ,new FlxTimer().start(0.2, function(tmr:FlxTimer)
        {
            jeffknifesound.play();
            ActiveJeff = false;
            modchartTweens.set('aaa', FlxTween.tween(JeffsMechanic, {alpha: 0}, 1, {ease: FlxEase.quadIn}));
            modchartTweens.set('aaaa', FlxTween.tween(textjeff, {alpha: 0}, 1, {ease: FlxEase.quadIn}));
            modchartTweens.set('aaaaa', FlxTween.color(textjeff, 0.05, FlxColor.LIME, FlxColor.RED, {type: 8}));

            if (IsDodg == false)
            {
                JeffJumpscare.alpha = 1;
                game.health -= 1;
                JeffJumpscare.visible = true;
                JeffJumpscare.animation.play('jump', false, false);
                jeffscare.play();
                var targetsArray:Array<FlxCamera> = FlxG.cameras.list;
                for (i in 0...targetsArray.length) {
                targetsArray[i].shake(0.03, 3);
                }

                modchartTimers.set('a' ,new FlxTimer().start(2.3, function(tmr:FlxTimer)
                    {
                        modchartTweens.set('aaaaa', FlxTween.tween(JeffJumpscare, {alpha: 0}, 1, {ease: FlxEase.quadIn, onComplete: function(twn:FlxTween) {
                            JeffJumpscare.visible = false;
                        }}));

                    }));

                trace("awh");
            }
        }));
}


function BaldiMechanic()
{
    textAnswer.text = 'Enter Answer';
    Thinkery.visible = true;
    Thinkery.animation.play('enter', false, false);
    modchartTimers.set('a' ,new FlxTimer().start(0.14, function(tmr:FlxTimer)
    {
        ThinkPadOn = true;
        Thinkery.animation.play('idle', false, false);
        BaldiGetNum();
        textTimer.visible = true;
        textAnswer.visible = true;
        textTimer.text = 'Use your keyboard to type in the answer\nhit the mechanic button to submit. Backspace resets it!\nTIME REMAINING: 6s';
        modchartTimers.set('a' ,new FlxTimer().start(1 / game.playbackRate, function(tmr:FlxTimer)
        {
            textTimer.text = 'Use your keyboard to type in the answer\nhit the mechanic button to submit. Backspace resets it!\nTIME REMAINING: ' + tmr.loopsLeft + 's';
            if (tmr.loopsLeft == 0 && DoneEquation == false)
            {

                BaldiRemove(false);
            }else if(tmr.loopsLeft == 0)
            {
                DoneEquation = false;
            }
        }, 5));

    }));
}

function BaldiRemove(Result:Bool)
{
    if (Result == false)
    {
        bald_no.play();
        baldiKillerStreak = 4;
        BaldNo.alpha = 1;
        modchartTweens.set('aaa', FlxTween.tween(BaldNo, {alpha: 0}, 1, {ease: FlxEase.quadIn}));
    }else{
        bald_yes.play();
        BaldYes.alpha = 1;
        modchartTweens.set('aaa', FlxTween.tween(BaldYes, {alpha: 0}, 1, {ease: FlxEase.quadIn}));
    }
    
    ThinkPadOn = false;
    textAnswer.visible = false;
    textTimer.visible = false;
    textQuestion.visible = false;
    Thinkery.animation.play('exit', false, false);
    modchartTimers.set('a' ,new FlxTimer().start(0.14, function(tmr:FlxTimer) //im too lazy to just check if the anims done playing
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
        while (num1 - num2 == 0 || num1 - num2 < 1)
        {
            num1 = FlxG.random.int(1, 9);
            num2 = FlxG.random.int(1, 9);
        }
        textQuestion.text = num1 + "-" + num2 + "=?";
        answerrr = num1 - num2;
    }

    textQuestion.visible = true;
    
}

function AddKey(keythin:String)
{
    if (textAnswer.text == 'Enter Answer')
        {
            textAnswer.text = "";
        }

        textAnswer.text = textAnswer.text + keythin;
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

    if (ThinkPadOn == true)
    {
        if(controls.justPressed('mechanic'))
        {
            DoneEquation = true;
            var real:Float = Std.parseFloat(textAnswer.text);
            if (real == answerrr)
            {
                BaldiRemove(true);
            }else{
                BaldiRemove(false);
            }
        }

        //Im sorry detective
        if (FlxG.keys.justPressed.ONE) {
            AddKey("1");
        }
        if (FlxG.keys.justPressed.TWO) {
            AddKey("2");
        }
        if (FlxG.keys.justPressed.THREE) {
            AddKey("3");
        }
        if (FlxG.keys.justPressed.FOUR) {
            AddKey("4");
        }
        if (FlxG.keys.justPressed.FIVE) {
            AddKey("5");
        }
        if (FlxG.keys.justPressed.SIX) {
            AddKey("6");
        }
        if (FlxG.keys.justPressed.SEVEN) {
            AddKey("7");
        }
        if (FlxG.keys.justPressed.EIGHT) {
            AddKey("8");
        }
        if (FlxG.keys.justPressed.NINE) {
            AddKey("9");
        }

        if (FlxG.keys.justPressed.BACKSPACE)
        {
            textAnswer.text = 'Enter Answer';
        }

    }


}