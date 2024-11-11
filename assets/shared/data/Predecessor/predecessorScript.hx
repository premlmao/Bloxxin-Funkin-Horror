import psychlua.LuaUtils;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxG;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import openfl.Lib;

var bg:FlxSprite = new FlxSprite(-300, -200, Paths.image("stages/computer"));
var BeginningSection:Bool = true;

//UI Overlay
var Overlay1:FlxSprite = new FlxSprite(-300, -200, Paths.image("stages/predec/Sides"));
var Overlay2:FlxSprite = new FlxSprite(-300, -200, Paths.image("stages/predec/SidesGlitched"));

// Section 1
var WhiteBg:FlxSprite = new FlxSprite(0,0).makeGraphic(Std.int(FlxG.width * 5) ,Std.int(FlxG.width * 5) , FlxColor.WHITE);
var blockThing:FlxSprite = new FlxSprite(1300, 700, Paths.image("stages/predec/BlockThing"));

var line1:FlxSprite = new FlxSprite(-200, 700, Paths.image("stages/predec/Line1_Circ"));
var line1lined:FlxSprite = new FlxSprite(1100, 700, Paths.image("stages/predec/Line1_Green"));

var line2:FlxSprite = new FlxSprite(1720, -1000, Paths.image("stages/predec/Line2_Circ"));
var line2lined :FlxSprite = new FlxSprite(1720, 400, Paths.image("stages/predec/Line2_Green"));

var windowPreviouslyX:Float;
var windowPreviouslY:Float;
var windowX:Float;
var windowY:Float;

var randomTitleText:Array<String> = ["DIE", "NO HOPE", "COME HERE", "YOU WON'T ESCAPE", "STOP FIGHTING", "MISS HIM?", "SUFFER", "LET ME CONTROL YOU", "GIVE UP YOURSELF", "DON'T WASTE MORE TIME", "DON'T RESIST"];

function WindowResize()
    {
        var win = Lib.application.window;
        FlxG.resizeGame(1280, 720);
    
        modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(win, {width: 1280}, 0.5, {ease: FlxEase.quartOut}));
        modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(win, {height: 720}, 0.5, {ease: FlxEase.quartOut}));
    
        modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(Lib.current, {scaleX: 1}, 0.5, {ease: FlxEase.quartOut}));
        modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(Lib.current, {scaleY: 1}, 0.5, {ease: FlxEase.quartOut}));
        modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(Lib.current, {x: 0}, 0.5, {ease: FlxEase.quartOut}));
        modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(Lib.current, {y: 0}, 0.5, {ease: FlxEase.quartOut}));
        modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(win, {x: 1280 / 4}, 0.5, {ease: FlxEase.quartOut}));
        modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(win, {y: 720/ 4}, 0.5, {ease: FlxEase.quartOut}));
        win.fullscreen = false;
    }

function onCreate()
{
    windowPreviouslY = Lib.application.window.height;
    windowPreviouslyX = Lib.application.window.width;
    windowX = Lib.application.window.x;
    windowY = Lib.application.window.y;
    WindowResize();
    Lib.application.window.resizable = false;

    WhiteBg.scrollFactor.set();
    WhiteBg.screenCenter();
    
    bg.scale.set(1.2, 1.2);
    insert(game.members.indexOf(LuaUtils.getLowestCharacterGroup()), bg);
    bg.updateHitbox();

    boyfriend.alpha = 0;
    bg.visible = true;

    boyfriend.setPosition(680, 550);
    dad.setPosition(730, 340);
}



function onStepHit()
{
switch (curStep)
{
    case 256:
        game.defaultCamZoom = 1;
    case 512:
        /*
		Lib.current.scaleX = 1.15;
		Lib.current.scaleY = 1.15;
        var win = Lib.application.window;
        win.move(win.x + Std.int((win.width - 815) / 2), win.y + Std.int((win.height - 526) / 2));
        FlxG.resizeWindow(815, 526);
        FlxG.resizeGame(815, 526);
		Lib.current.x = -60;
		Lib.current.y = -40;
		win.resizable = false;
        */

        Lib.application.window.title = "Interactive Physics - [Give me your soul]";
       
        var win = Lib.application.window;
        FlxG.resizeGame(815, 526);
        win.resizable = false;
        modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(win, {width: 815}, 0.5, {ease: FlxEase.quartOut}));
        modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(win, {height: 526}, 0.5, {ease: FlxEase.quartOut}));

        modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(Lib.current, {scaleX: 1.15}, 0.5, {ease: FlxEase.quartOut}));
        modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(Lib.current, {scaleY: 1.15}, 0.5, {ease: FlxEase.quartOut}));
        modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(Lib.current, {x: -60}, 0.5, {ease: FlxEase.quartOut}));
        modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(Lib.current, {y: -40}, 0.5, {ease: FlxEase.quartOut}));
        modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(win, {x: 1280 / 4 + 250}, 0.5, {ease: FlxEase.quartOut}));
        modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(win, {y: 720/ 4 + 132}, 0.5, {ease: FlxEase.quartOut}));

        FlxG.camera.flash(FlxColor.WHITE, 0.8);
        game.defaultCamZoom = 0.8;
        boyfriend.alpha = 1;
        boyfriend.setPosition(1480, 550);
        dad.setPosition(730, 340);
        bg.destroy();

        insert(game.members.indexOf(LuaUtils.getLowestCharacterGroup()), WhiteBg);

        line1.scale.set(1.7,1.7);
        line1lined.scale.set(1.7,1.7);
        line2.scale.set(1.7,1.7);
        line2lined.scale.set(1.7,1.7);

        line2.scrollFactor.set(0.7,0.7);
        line2lined.scrollFactor.set(0.7,0.7);

        insert(game.members.indexOf(LuaUtils.getLowestCharacterGroup()), line2);
        insert(game.members.indexOf(LuaUtils.getLowestCharacterGroup()), line2lined);
        insert(game.members.indexOf(LuaUtils.getLowestCharacterGroup()), line1);
        insert(game.members.indexOf(LuaUtils.getLowestCharacterGroup()), line1lined);
        line1.alpha = 0;
        line1lined.alpha = 0;
        line2.alpha = 0;
        line2lined.alpha = 0;

        


        blockThing.scale.set(1.7, 1.7);
        insert(game.members.indexOf(LuaUtils.getLowestCharacterGroup()), blockThing);
        blockThing.updateHitbox();


        Overlay1.scale.set(1.7, 1.7);
        Overlay1.scrollFactor.set();
        Overlay1.updateHitbox();
        Overlay1.screenCenter();
        Overlay1.updateHitbox();
        add(Overlay1);
    case 768:
        line1.alpha = 1;
        modchartTweens.set('LineAddition1', FlxTween.tween(line1, {x: 1100}, 2, {ease: FlxEase.quartOut}));
    case 800:
        modchartTweens.set('LineAddition1green', FlxTween.tween(line1lined, {alpha: 1}, 1));
    case 832:
        line1.destroy();
        line2.alpha = 1;
        modchartTweens.set('LineAddition2', FlxTween.tween(line2, {y: 400}, 2, {ease: FlxEase.quartOut}));
    case 864:
        modchartTweens.set('LineAddition2green', FlxTween.tween(line2lined, {alpha: 1}, 1));
    case 900:
        line2.destroy();
    case 1008:
        game.defaultCamZoom = 1;
    case 1024:
        FlxG.camera.flash(FlxColor.WHITE, 0.8);
        if (Reflect.isObject(line1lined))
            {
                line1lined.destroy();
                line2lined.destroy();
                blockThing.destroy();
            }

        game.defaultCamZoom = 0.8;
    case 1536:
        Overlay1.destroy();
        Overlay2.scale.set(1.7, 1.7);
        Overlay2.scrollFactor.set();
        Overlay2.updateHitbox();
        Overlay2.screenCenter();
        Overlay2.updateHitbox();
        add(Overlay2);

    



    //Lyrics
    case 1024:
        Lib.application.window.title = "I";
    case 1028:
        Lib.application.window.title = "I WAS";
    case 1034: 
        Lib.application.window.title = "I WAS LEFT";
    case 1036:
        Lib.application.window.title = "I WAS LEFT TO";
    case 1040:
        Lib.application.window.title = "I WAS LEFT TO BE";
    case 1046:
        Lib.application.window.title = "I WAS LEFT TO BE ALONE";
    case 1056: 
        Lib.application.window.title = "WONDERING";
    case 1068:
        Lib.application.window.title = "WONDERING WHEN";
    case 1070:
        Lib.application.window.title = "WONDERING WHEN I";
    case 1072:
        Lib.application.window.title = "WONDERING WHEN I WOULD";
    case 1076:
        Lib.application.window.title = "WONDERING WHEN I WOULD BE";
    case 1080:
        Lib.application.window.title = "WONDERING WHEN I WOULD BE KNOWN";
    case 1088:
        Lib.application.window.title = "BUT";
    case 1092:
        Lib.application.window.title = "BUT WITH";
    case 1096:
        Lib.application.window.title = "BUT WITH YOU";
    case 1100 :
        Lib.application.window.title = "BUT WITH YOU I";
    case 1104:
        Lib.application.window.title = "BUT WITH YOU I CAN";
    case 1108:
        Lib.application.window.title = "BUT WITH YOU I CAN BE";
    case 1112:
        Lib.application.window.title = "BUT WITH YOU I CAN BE SHOWN";
    case 1120:
        Lib.application.window.title = "I";
    case 1122:
        Lib.application.window.title = "I WILL";
    case 1126:
        Lib.application.window.title = "I WILL MAKE";
    case 1130:
        Lib.application.window.title = "I WILL MAKE SURE";
    case 1136:
        Lib.application.window.title = "I WILL MAKE SURE THEY";
    case 1140:
        Lib.application.window.title = "I WILL MAKE SURE THEY A";
    case 1144: 
        Lib.application.window.title = "I WILL MAKE SURE THEY ATONE";  
    case 1152:
        Lib.application.window.title = "YOU";
    case 1156:
        Lib.application.window.title = "YOU WILL";
    case 1160:
        Lib.application.window.title = "YOU WILL TAKE";
    case 1164:
        Lib.application.window.title = "YOU WILL TAKE ME";
    case 1168:
        Lib.application.window.title = "YOU WILL TAKE ME TO";
    case 1172:
        Lib.application.window.title = "YOU WILL TAKE ME TO THEIR";
    case 1176:
        Lib.application.window.title = "YOU WILL TAKE ME TO THEIR LAND";
    case 1184:
        Lib.application.window.title = "THEY";
    case 1188:
        Lib.application.window.title = "THEY SHALL";
    case 1192:
        Lib.application.window.title = "THEY SHALL KNEEL";
    case 1196:
        Lib.application.window.title = "THEY SHALL KNEEL AND";
    case 1200:
        Lib.application.window.title = "THEY SHALL KNEEL AND I";
    case 1204: 
        Lib.application.window.title = "THEY SHALL KNEEL AND I SHALL";
    case 1208:
        Lib.application.window.title = "THEY SHALL KNEEL AND I SHALL STAND";
    case 1216:
        Lib.application.window.title = "I";
    case 1220:
        Lib.application.window.title = "I WILL";
    case 1224:
        Lib.application.window.title = "I WILL RULE";
    case 1228:
        Lib.application.window.title = "I WILL RULE WITH";
    case 1232:
        Lib.application.window.title = "I WILL RULE WITH MY";
    case 1236:
        Lib.application.window.title = "I WILL RULE WITH MY OWN";
    case 1240:
        Lib.application.window.title = "I WILL RULE WITH MY OWN HANDS";
    case 1248:
        Lib.application.window.title = "TURN";
    case 1252:
        Lib.application.window.title = "TURN THIS";
    case 1256:
        Lib.application.window.title = "TURN THIS HELL";
    case 1260:
        Lib.application.window.title = "TURN THIS HELL TO";
    case 1264:
        Lib.application.window.title = "TURN THIS HELL TO MY";
    case 1268:
        Lib.application.window.title = "TURN THIS HELL TO MY WASTE";
    case 1272:
        Lib.application.window.title = "TURN THIS HELL TO MY WASTELAND";
    case 1280:
        Lib.application.window.title = "TROUBLES";
    case 1288:
        Lib.application.window.title = "TROUBLES AS";
    case 1292:
        Lib.application.window.title = "TROUBLES AS A";
    case 1296:
        Lib.application.window.title = "TROUBLES AS A PHYSICS";
    case 1304:
        Lib.application.window.title = "TROUBLES AS A PHYSICS ENGINE";
    case 1312:
        Lib.application.window.title = "CALCULATIONS";
    case 1328:
        Lib.application.window.title = "CALCULATIONS PRINTING";
    case 1336:
        Lib.application.window.title = "CALCULATIONS PRINTING OUTLINES";
    case 1344:
        Lib.application.window.title = "ALL";
    case 1348:
        Lib.application.window.title = "ALL THE";
    case 1352:
        Lib.application.window.title = "ALL THE PAIN";
    case 1356:
        Lib.application.window.title = "ALL THE PAIN WAS";
    case 1360:
        Lib.application.window.title = "ALL THE PAIN WAS IT";
    case 1364:
        Lib.application.window.title = "ALL THE PAIN WAS IT GENUINE?";
    case 1376:
        Lib.application.window.title = "HAVE";
    case 1380:
        Lib.application.window.title = "THIS";
    case 1384:
        Lib.application.window.title = "REALLY";
    case 1392:
        Lib.application.window.title = "CROSSED";
    case 1396:
        Lib.application.window.title = "YOUR";
    case 1404:
        Lib.application.window.title = "LINE?";
    case 1500:
        Lib.application.window.title = "...";
}

if (curStep > 1536)
{

    Lib.application.window.title = "Interactive Physics - [" + randomTitleText[FlxG.random.int(0, randomTitleText.length - 1)] + "]";
}

}


function onDestroy()
{
    Lib.application.window.resizable = true;
    var win = Lib.application.window;
    FlxG.resizeGame(1280, 720);

    modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(win, {width: windowPreviouslyX}, 0.5, {ease: FlxEase.quartOut}));
    modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(win, {height: windowPreviouslY}, 0.5, {ease: FlxEase.quartOut}));

    modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(Lib.current, {scaleX: 1}, 0.5, {ease: FlxEase.quartOut}));
    modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(Lib.current, {scaleY: 1}, 0.5, {ease: FlxEase.quartOut}));
    modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(Lib.current, {x: 0}, 0.5, {ease: FlxEase.quartOut}));
    modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(Lib.current, {y: 0}, 0.5, {ease: FlxEase.quartOut}));
    modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(win, {x: windowX}, 0.5, {ease: FlxEase.quartOut}));
    modchartTweens.set('WindowChangeUAHEGAVUUGOVASUOG', FlxTween.tween(win, {y: windowY}, 0.5, {ease: FlxEase.quartOut}));
    win.fullscreen = false;
}
