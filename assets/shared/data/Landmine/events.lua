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
    function onUpdatePost()
        if curBeat == 158 then
        doTweenAlpha('byeHUD6', 'timeTxt', 0, crochet*0.006, 'cubeInOut')
        doTweenAlpha('byeHUD7', 'songIcon', 0, crochet*0.006, 'cubeInOut')
        end
        if curBeat == 224 then
            doTweenAlpha('byeHUD6', 'timeTxt', 1, crochet*0.006, 'cubeInOut')
            doTweenAlpha('byeHUD7', 'songIcon', 1, crochet*0.006, 'cubeInOut')
        end
    end
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

    if curBeat == 224 then
        doTweenY('hiHUD1','healthBar',641,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
        doTweenAlpha('hiHUD6', 'timeBar',1,crochet*0.005,'linear')
        if downscroll then
            doTweenY('hiHUD1','healthBar',79,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',67,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD3','iconP1',4,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD4','iconP2',4,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',129,crochet*0.005,'cubeInOut')
        end
    end
    if curBeat == 225 then
        noteTweenX('noteX1', 0, 750, 1, 'cubeOut')
        noteTweenX('noteX2', 1, 860, 1, 'cubeOut')
        noteTweenX('noteX3', 2, 970, 1, 'cubeOut')
        noteTweenX('noteX4', 3, 1080, 1, 'cubeOut')
        noteTweenX('noteX5', 4, 100, 1, 'cubeOut')
        noteTweenX('noteX6', 5, 210, 1, 'cubeOut')
        noteTweenX('noteX7', 6, 320, 1, 'cubeOut')
        noteTweenX('noteX8', 7, 430, 1, 'cubeOut')
    end
    if curBeat == 416 then
        setProperty('camHUD.visible', false)
    end
    function opponentNoteHit()
        if curBeat > 160 and curBeat < 224 then
            triggerEvent('Screen Shake', '0.1, 0.002', '0.1, 0.004')
        end
    end
end