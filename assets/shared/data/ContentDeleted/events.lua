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
    setProperty('songIcon.visible', false)
    setProperty('timeTxt.visible', false)
    setProperty('skipCountdown', true)
end

function onBeatHit()
if curBeat == 48 then
    setProperty('black.visible', true)
    doTweenAlpha('silly','black',0,2)
end
end

function opponentNoteHit()
    triggerEvent('Screen Shake', '0.1, 0.006,', '0.1, 0.006')
end