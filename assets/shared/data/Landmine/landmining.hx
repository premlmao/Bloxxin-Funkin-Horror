import psychlua.LuaUtils;
import psychlua.FunkinLua;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxG;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import flixel.util.FlxTimer;

import flixel.text.FlxText;
import flixel.text.FlxTextBorderStyle;

import flixel.FlxState;
import flixel.math.FlxMath;

var randomize:FlxText = new FlxText();
var prevMech:String;
var newMech:String;

var healthDecay:Float;

var popup:FlxSprite;


function onCreate()
{
    popup = new FlxSprite();
    popup.setPosition(400, 250);
    popup.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
    popup.visible = false;
    add(popup);
}

function onBeatHit()
{
    if (curSection > 39 && curSection < 56)
        {
            if (curBeat %4 == 0)
            {
                modchartTweens.set('hudspin', FlxTween.tween(camHUD, {angle: camHUD.angle + 90}, 1, {ease: FlxEase.cubeOut}));
            }
        }
    if (curSection > 87)
    {
        if (curBeat %2 == 0)
        {
            for (strum in game.strumLineNotes)
                {
                    strum.x = FlxG.random.int(100, 1000);
                    strum.y = FlxG.random.int(200, 500);
                }
            healthBar.x = FlxG.random.int(300, 600);
            healthBarAround.x = FlxG.random.int(300, 600);
            iconP1.x = FlxG.random.int(300, 600);
            iconP2.x = FlxG.random.int(300, 600);
            timeTxt.x = FlxG.random.int(300, 600);
            songIcon.x = FlxG.random.int(300, 600);
            scoreTxt.x = FlxG.random.int(300, 600);
            healthBar.y = FlxG.random.int(200, 500);
            healthBarAround.y = FlxG.random.int(200, 500);
            iconP1.y = FlxG.random.int(200, 500);
            iconP2.y = FlxG.random.int(200, 500);
            timeTxt.y = FlxG.random.int(200, 500);
            songIcon.y = FlxG.random.int(200, 500);
            scoreTxt.y = FlxG.random.int(200, 500);
        }
    }
    switch (curBeat)
    {
        case 156:
            resetallEvents();
        case 347:
            resetallEvents();
                    for (i in 0...4)
                        {
                            FlxTween.tween(game.strumLineNotes.members[i], {x: (100 + 110 * i) + 650}, 0.6, {ease: FlxEase.cubeOut});
                            FlxTween.tween(game.strumLineNotes.members[i], {alpha: 1}, 1, {ease: FlxEase.cubeOut});
                        }
                    for (i in 4...8)
                        {
                            FlxTween.tween(game.strumLineNotes.members[i], {x: (300 + 110 * i) - 650}, 0.6, {ease: FlxEase.cubeOut});
                        }
        case 32,96,224,256:
            Randomize();
}
}

function resetallEvents()
{
    prevMech = newMech;

    switch (prevMech)
    {
        case "drainmultiply":
            healthDecay = 0;
            trace('health decay:' + healthDecay);
        case "scrollspeed":
            game.songSpeed = 2.7;
            trace('scroll speed:' + game.songSpeed);
        case "strumswap":
            for (i in 0...8)
                {
                    FlxTween.cancelTweensOf(game.strumLineNotes.members[i]);
                }
    }
}

function opponentNoteHit()
{
    if (game.health > 0.2)
    {
        game.health -= healthDecay;
    }
}


function Randomize()
{
    trace("RANDOMIZEeE!!1");
    var mechanics = [
    "drainmultiply",
    "scrollspeed",
    "strumswap",
    "notepos"
    ];

    resetallEvents();

    newMech = mechanics[FlxG.random.int(0, mechanics.length - 1)];

    popup.loadGraphic(Paths.image('landmine/' + newMech));
    popup.visible = true;
    new FlxTimer().start(3, function(timer:FlxTimer)
    {
        popup.visible = false;
    });
    trace(popup.x, popup.y);

    if (newMech != "notepos")
    {
        
        for (i in 0...4)
            {
                FlxTween.tween(game.strumLineNotes.members[i], {x: (100 + 110 * i) + 650}, 0.6, {ease: FlxEase.cubeOut});
                FlxTween.tween(game.strumLineNotes.members[i], {alpha: 1}, 1, {ease: FlxEase.cubeOut});
            }
        for (i in 4...8)
            {
                FlxTween.tween(game.strumLineNotes.members[i], {x: (300 + 110 * i) - 650}, 0.6, {ease: FlxEase.cubeOut});
            }
    }

    switch(newMech)
    {
        case "drainmultiply":
            healthDecay = FlxG.random.float(0.01, 0.05);
            trace('health decay:' + healthDecay);
        case "scrollspeed":
            game.songSpeed = FlxG.random.float(1.5, 4.5);
            trace('scroll speed:' + game.songSpeed);
        case "strumswap":
                for (i in 0...4)
                {
                    FlxTween.tween(game.strumLineNotes.members[i], {x: 100 + (110 * i)}, 1, {ease: FlxEase.cubeOut, type: 4, startDelay: 1});
                }
                for (i in 4...8)
                {
                    FlxTween.tween(game.strumLineNotes.members[i], {x: 300 + (110 * i)}, 1, {ease: FlxEase.cubeOut, type: 4, startDelay: 1});
                }
        case "notepos":
            for (i in 0...8)
                {
                    if (i < 4)
                        {
                            game.strumLineNotes.members[i].alpha = 0.3;
                        }
                    FlxTween.tween(game.strumLineNotes.members[i], {x: FlxG.random.int(100, 350) + (110 * i)}, 1, {ease: FlxEase.cubeOut});
                }
    }

    trace(prevMech);
    trace(newMech);
}