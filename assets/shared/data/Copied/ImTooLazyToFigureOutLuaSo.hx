import psychlua.LuaUtils;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxG;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import openfl.Lib;

var Transition:FlxSprite = new FlxSprite(0, 0);


function onCreate()
{
    Transition.camera = FlxG.cameras.list[FlxG.cameras.list.length - 3];
    Transition.frames = Paths.getSparrowAtlas('blocks');
    Transition.animation.addByPrefix('anim', 'trans', 10, false);
    Transition.scale.set(3, 3);
    Transition.scrollFactor.set();
    Transition.updateHitbox();
    Transition.screenCenter();
}


function onStepHit()
{
switch (curStep)
{
    case 1320:
        add(Transition);
        Transition.animation.play('anim', false, false); 
    case 1340:
        Transition.destroy();
    case 1592:
        Transition = new FlxSprite(0, 0);
        Transition.camera = FlxG.cameras.list[FlxG.cameras.list.length - 2];
        Transition.frames = Paths.getSparrowAtlas('blocks');
        Transition.animation.addByPrefix('anim', 'trans', 10, false);
        Transition.scale.set(2, 2);
        Transition.scrollFactor.set();
        Transition.updateHitbox();
        Transition.screenCenter();

        add(Transition);
        Transition.animation.play('anim', false, false); 
    case 1608:
        Transition.destroy();
}
}