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

var hi:FlxText = new FlxText();

function onCreate()
{
    hi.setFormat(Paths.font('vcr.ttf'), 36, FlxColor.WHITE, 'left', FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
    hi.borderColor = FlxColor.BLACK;
    hi.camera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
    hi.screenCenter();
    hi.visible = true;
    add(hi);
}

function onStepHit()
{
    trace(hi.x, hi.y);
    switch (curStep)
    {
        case 7:
            hi.text = "Hi.";
            hi.setPosition(200, 100);
        case 16:
            hi.text = "Hi. I";
        case 17:
            hi.text = "Hi. I am";
        case 20:
            hi.text = "Hi. I am John";
        case 25:
            hi.text = "Hi. I am John from";
        case 28:
            hi.text = "Hi. I am John from Roblox";
        case 37:
            hi.text = "Hi. I am John from Roblox Customer";
        case 42:
            hi.text = "Hi. I am John from Roblox Customer Support.";
        case 53:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI";
        case 55:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am";
        case 58:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here";
        case 60:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to";
        case 62:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform";
        case 66:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you";
        case 70:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that";
        case 72:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I";
        case 74:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am";
        case 77:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging";
        case 82:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto";
        case 85:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your";
        case 88:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account";
        case 92:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account to";
        case 94:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account to make";
        case 96:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account to make sure";
        case 98:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account to make sure you";
        case 100:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account to make sure you are";
        case 104:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account to make sure you are\n\nrightfully";
        case 109:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account to make sure you are\n\nrightfully punished";
        case 114:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account to make sure you are\n\nrightfully punished for";
        case 116:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account to make sure you are\n\nrightfully punished for attempting";
        case 120:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account to make sure you are\n\nrightfully punished for attempting to";
        case 123:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account to make sure you are\n\nrightfully punished for attempting to gain";
        case 126:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account to make sure you are\n\nrightfully punished for attempting to gain\n\naccess";
        case 132:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account to make sure you are\n\nrightfully punished for attempting to gain\n\naccess to";
        case 133:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account to make sure you are\n\nrightfully punished for attempting to gain\n\naccess to an";
        case 135:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account to make sure you are\n\nrightfully punished for attempting to gain\n\naccess to an official";
        case 139:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account to make sure you are\n\nrightfully punished for attempting to gain\n\naccess to an official Roblox";
        case 146:
            hi.text = "Hi. I am John from Roblox Customer Support.\n\nI am here to inform you that I am logging\n\ninto your account to make sure you are\n\nrightfully punished for attempting to gain\n\naccess to an official Roblox account.";
        case 150:
            hi.text = "";
        case 155:
            hi.setFormat(Paths.font('vcr.ttf'), 40, FlxColor.WHITE, 'left', FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
            hi.x = 125;
            hi.y = 300;
            hi.text = "Your";
        case 160:
            hi.text = "Your punishment";
        case 166:
            hi.text = "Your punishment begins";
        case 171:
            hi.text = "Your punishment begins tomorrow";
        case 176:
            hi.text = "Your punishment begins tomorrow on";
        case 177:
            hi.text = "Your punishment begins tomorrow on March";
        case 180:
            hi.text = "Your punishment begins tomorrow on March 18th.";
        case 189:
            FlxTween.tween(hi, {alpha: 0}, 2, {ease: FlxEase.linear});
    }
}