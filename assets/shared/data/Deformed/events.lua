function onCreate()
makeLuaSprite('black',nil,0,0)
makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
setObjectCamera('black', 'other')
setProperty('black.alpha', 1)
screenCenter('black')
addLuaSprite('black',true)
setProperty('black.visible', true)
end

function onSongStart()
    doTweenAlpha('byeHUD1','timeBar',0,crochet*0.005,'linear')
    doTweenAlpha('byeHUD2','songIcon',0,crochet*0.005,'linear')
    doTweenAlpha('byeHUD3','timeTxt',0,crochet*0.005,'linear')
    doTweenAlpha('byeHUD7','scoreTxt',0,crochet*0.005,'linear')
end

function onBeatHit()
    if curBeat == 16 then
        doTweenAlpha('hiHUD1','timeBar',1,crochet*0.005,'linear')
        doTweenAlpha('hiHUD2','songIcon',1,crochet*0.005,'linear')
        doTweenAlpha('hiHUD3','timeTxt',1,crochet*0.005,'linear')
        doTweenAlpha('hiHUD4','healthBar',1,crochet*0.005,'linear')
        doTweenAlpha('hiHUD5','healthBarAround',1,crochet*0.005,'linear')
        doTweenAlpha('hiHUD6','iconP1',1,crochet*0.005,'linear')
        doTweenAlpha('hiHUD7','scoreTxt',1,crochet*0.005,'linear')
    end
end

function opponentNoteHit()
    triggerEvent('Screen Shake', '0.1, 0.0075')
    if getHealth() >= 0.015 then
        setHealth(getHealth() - 0.015)
    end
end

function onStepHit()
if curStep == 48 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,0.5)
end

if curStep == 828 or curStep == 1472 or curStep == 1600 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,0.01)
setObjectCamera('black', 'other')
end

if curStep == 832 or curStep == 1476 or curStep == 1604 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,0.01)
setObjectCamera('black', 'hud')
end

if curStep == 1872 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,18)
end
end