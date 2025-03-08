function onCreatePost()
    for i = 0,3 do
        setPropertyFromGroup('opponentStrums',i,'x',_G['defaultPlayerStrumX'..i])
        setPropertyFromGroup('playerStrums',i,'x',_G['defaultOpponentStrumX'..i])
    end
end

function onCreate()
    downscroll = getPropertyFromClass('backend.ClientPrefs', 'data.downScroll')
end

function onBeatHit()
    if curBeat == 159 then
        noteTweenX('noteX1', 0, 2000, 1, 'cubeOut')
        noteTweenX('noteX2', 1, 2000, 1, 'cubeOut')
        noteTweenX('noteX3', 2, 2000, 1, 'cubeOut')
        noteTweenX('noteX4', 3, 2000, 1, 'cubeOut')
        noteTweenX('noteX5', 4, 415, 1, 'cubeOut')
        noteTweenX('noteX6', 5, 525, 1, 'cubeOut')
        noteTweenX('noteX7', 6, 635, 1, 'cubeOut')
        noteTweenX('noteX8', 7, 745, 1, 'cubeOut')
        doTweenY('byeHUD1','healthBar',900,crochet*0.006,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.006,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.006,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.006,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.006,'cubeInOut')
        if downscroll then
            doTweenY('byeHUD1','healthBar',-300,crochet*0.006,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',-300,crochet*0.006,'cubeInOut')
            doTweenY('byeHUD3','iconP1',-300,crochet*0.006,'cubeInOut')
            doTweenY('byeHUD4','iconP2',-300,crochet*0.006,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',-300,crochet*0.006,'cubeInOut')
        end
    end
    function opponentNoteHit()
        if curBeat > 160 and curBeat < 224 then
            triggerEvent('Screen Shake', '0.1, 0.002', '0.1, 0.004')
        end
    end
end