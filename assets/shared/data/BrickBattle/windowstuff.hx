import psychlua.LuaUtils;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxG;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import openfl.Lib;

var randomTitleText:Array<String> = ["biXlonx n'iFuk rrHoor - BkcltrBaet", "xxBnloi in'nFku rHroro - trBkBclaet", "loixnBx n'niFku roHrro - tkctrlBieBa", "Binloxx knniFu' roorHr - icBeaBttlrk", "Bxiolnx Fk'iunn oHrorr - rcBkatteBil", "inBoxlx uinnF'k Hroorr - BatBriecktl", "inxxBlo Fuinnk' rorroH - ttlBkBarice", "xxBolin in'nFku rHoror - BrktcBlaet", "lxBoix nn'uFik rHroor - trBkBclaet", "niBxxol nk'inFu rHoorr - tBkrBclate", "xoBlinx fn'iKun rHroro - BktcBralet"];

function onStepHit()
{
    if (curStep > 1951)
        {
            Lib.application.window.title = randomTitleText[FlxG.random.int(0, randomTitleText.length - 1)];
        }
}