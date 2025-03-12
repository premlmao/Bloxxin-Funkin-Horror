import psychlua.LuaUtils;
import psychlua.FunkinLua;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxG;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;

import flixel.text.FlxText;
import flixel.text.FlxTextBorderStyle;

import flixel.FlxState;
import flixel.math.FlxMath;

var randomize:FlxText = new FlxText();

function onCreate()
{
    randomize.setFormat(Paths.font('Comic Sans MS.ttf'), 80, FlxColor.RED, 'center', FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
    randomize.borderColor = FlxColor.BLACK;
    randomize.text = 'RANDOMIZE!';
    randomize.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
    randomize.screenCenter();
    randomize.visible = false;
    randomize.alpha = 1;
    add(randomize);
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
        case 32,96,224,256:
            Randomize();
            randomize.visible = true;
            modchartTweens.set('randoalpha', FlxTween.tween(randomize, {alpha: 0}, 1, {ease: FlxEase.quadIn}));
            modchartTweens.set('randoscale', FlxTween.tween(randomize.scale, {x: 1.5, y: 1.5}, 1, {ease: FlxEase.quadIn}));
        case 35,99,227,269:
            randomize.visible = false;
            randomize.alpha = 1;
            randomize.scale.set(1,1);
    }
}

var prevMech:String;
var newMech:String;

function Randomize()
{
    var mechanics = [
    "random h drain",
    "random scroll speed",
    "strum swap",
    "random note pos"
    ];

    prevMech = newMech;

    newMech = mechanics[FlxG.random.int(0, mechanics.length - 1)];

    switch (prevMech)
    {
        case "random h drain":
        case "random scroll speed":
            game.songSpeed = 2.7;
            trace('scroll speed: ' + songSpeed);
        case "strum swap" | "random note pos":
            for (i in 0...4)
                {
                    FlxTween.tween(game.strumLineNotes.members[i], {x: 300 + (110 * i), y: 50}, 1, {ease: FlxEase.cubeOut});
                }
                for (i in 4...8)
                {
                    FlxTween.tween(game.strumLineNotes.members[i], {x: 100 + (110 * i), y: 50}, 1, {ease: FlxEase.cubeOut});
                }
    }

    switch(newMech)
    {
        case "random h drain":
        case "random scroll speed":
            game.songSpeed = FlxG.random.float(1.5, 4.5);
            trace('scroll speed: ' + songSpeed);
        case "strum swap":
                for (i in 0...4)
                {
                    FlxTween.tween(game.strumLineNotes.members[i], {x: 100 + (110 * i)}, 1, {ease: FlxEase.cubeOut, type: 4});
                }
                for (i in 4...8)
                {
                    FlxTween.tween(game.strumLineNotes.members[i], {x: 300 + (110 * i)}, 1, {ease: FlxEase.cubeOut, type: 4});
                }
        case "random note pos":
            for (i in 0...7)
                {
                    FlxTween.tween(game.strumLineNotes.members[i], {x: FlxG.random.int(100, 350) + (110 * i)}, 1, {ease: FlxEase.cubeOut});
                }
    trace(newMech);
    }
}