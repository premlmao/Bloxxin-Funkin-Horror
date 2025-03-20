function onCreate()
    makeLuaSprite('black',nil,0,0)
    makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
    setObjectCamera('black', 'hud')
    setProperty('black.alpha', 1)
    screenCenter('black')
    addLuaSprite('black',true)
    setProperty('black.visible', true)

    setProperty('healthBar.y', 900)
    setProperty('healthBarAround.y', 900)
    setProperty('iconP1.y', 900)
    setProperty('iconP2.y', 900)
    setProperty('scoreTxt.y', 900)
    setProperty('skipCountdown', true)
end

function onBeatHit()
if curBeat == 48 then
    setProperty('black.visible', true)
    doTweenAlpha('silly','black',0,2)
end
if curBeat == 84 then
    doTweenY('hiHUD1','healthBar',641,crochet*0.005,'cubeInOut')
    doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
    doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
    doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
    doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
    if downscroll then
        doTweenY('hiHUD1','healthBar',79,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',67,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD3','iconP1',4,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD4','iconP2',4,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',129,crochet*0.005,'cubeInOut')
    end
end
end

function opponentNoteHit()
    triggerEvent('Screen Shake', '0.1, 0.006,', '0.1, 0.006')
end