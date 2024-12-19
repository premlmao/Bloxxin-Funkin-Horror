local timeString

function onCreate()
    makeLuaSprite('black',nil,0,0)
    makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
    setObjectCamera('black', 'hud')
    setProperty('black.alpha', 1)
    screenCenter('black')
    addLuaSprite('black',true)
    setProperty('black.visible', true)
end

function opponentNoteHit()
    triggerEvent('Screen Shake', '0.1, 0.004', '0.1, 0.004')
end
function onSongStart()
    noteTweenAlpha('noteAlpha1', 0, 0.075, 0.1, linear)
    noteTweenAlpha('noteAlpha2', 1, 0.075, 0.1, linear)
    noteTweenAlpha('noteAlpha3', 2, 0.075, 0.1, linear)
    noteTweenAlpha('noteAlpha4', 3, 0.075, 0.1, linear)
end

function onBeatHit()
    if curBeat == 4 then
        doTweenAlpha('silly','black',0,2)
    end
    if curBeat == 12 or curBeat == 157 then
        noteTweenAlpha('noteAlpha1', 0, 0, 0.75, linear)
        noteTweenAlpha('noteAlpha2', 1, 0, 0.75, linear)
        noteTweenAlpha('noteAlpha3', 2, 0, 0.75, linear)
        noteTweenAlpha('noteAlpha4', 3, 0, 0.75, linear)
    end
    if curBeat == 128 or curBeat == 335 then
        noteTweenAlpha('noteAlpha1', 0, 0.075, 0.75, linear)
        noteTweenAlpha('noteAlpha2', 1, 0.075, 0.75, linear)
        noteTweenAlpha('noteAlpha3', 2, 0.075, 0.75, linear)
        noteTweenAlpha('noteAlpha4', 3, 0.075, 0.75, linear)
    end

    if curBeat == 392 then
        noteTweenAlpha('noteAlpha1', 0, 0, 0.75, linear)
        noteTweenAlpha('noteAlpha2', 1, 0, 0.75, linear)
        noteTweenAlpha('noteAlpha3', 2, 0, 0.75, linear)
        noteTweenAlpha('noteAlpha4', 3, 0, 0.75, linear)
        noteTweenAlpha('noteAlpha5', 4, 0, 0.75, linear)
        noteTweenAlpha('noteAlpha6', 5, 0, 0.75, linear)
        noteTweenAlpha('noteAlpha7', 6, 0, 0.75, linear)
        noteTweenAlpha('noteAlpha8', 7, 0, 0.75, linear)
        doTweenAlpha('camHUD', 'camHUD', 0, 0.75, linear)
    end
end