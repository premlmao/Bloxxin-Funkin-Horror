function onCreate()
    setProperty('dad.visible', false)
    setProperty('boyfriend.visible', false)

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
    
    downscroll = getPropertyFromClass('backend.ClientPrefs', 'data.downScroll')
    if downscroll then
        setProperty('healthBar.y', -300)
        setProperty('healthBarAround.y', -300)
        setProperty('iconP1.y', -300)
        setProperty('iconP2.y', -300)
        setProperty('scoreTxt.y', -300)
    end
    setProperty('timeTxt.visible', false)
    setProperty('songIcon.visible', false)
end

function onSongStart()
    noteTweenAlpha('alphaNotes1', 0, 0, 0.6, 'linear');
    noteTweenAlpha('alphaNotes2', 1, 0, 0.6, 'linear');
    noteTweenAlpha('alphaNotes3', 2, 0, 0.6, 'linear');
    noteTweenAlpha('alphaNotes4', 3, 0, 0.6, 'linear');
    noteTweenY('noteY5', 4, -1000, 0.4, 'backInOut');
    noteTweenY('noteY6', 5, -1000, 0.4, 'backInOut');
    noteTweenY('noteY7', 6, -1000, 0.4, 'backInOut');
    noteTweenY('noteY8', 7, -1000, 0.4, 'backInOut');
    noteTweenAngle('noteAngle5', 4, 360, 1, 'cubeOut')
    noteTweenAngle('noteAngle6', 5, 360, 1, 'cubeOut')
    noteTweenAngle('noteAngle7', 6, 360, 1, 'cubeOut')
    noteTweenAngle('noteAngle8', 7, 360, 1, 'cubeOut')
    if downscroll then
        noteTweenY('noteY5', 4, 1000, 0.4, 'backInOut');
        noteTweenY('noteY6', 5, 1000, 0.4, 'backInOut');
        noteTweenY('noteY7', 6, 1000, 0.4, 'backInOut');
        noteTweenY('noteY8', 7, 1000, 0.4, 'backInOut');
    end
end

function onSectionHit()
    if curSection >= 24 then
        function onBeatHit()
            if curBeat % 1 == 0 then
                noteTweenY('noteY2', 5, 50, 0.25, 'backOut')
                noteTweenY('noteY4', 7, 50, 0.25, 'backOut')
                noteTweenY('noteY1', 4, 100, 0.25, 'backOut')
                noteTweenY('noteY3', 6, 100, 0.25, 'backOut')
                if downscroll then
                    noteTweenY('noteY2', 5, 570, 0.25, 'backOut')
                    noteTweenY('noteY4', 7, 570, 0.25, 'backOut')
                    noteTweenY('noteY1', 4, 520, 0.25, 'backOut')
                    noteTweenY('noteY3', 6, 520, 0.25, 'backOut')
                end
            end
            if curBeat % 2 == 0 then
                noteTweenY('noteY2', 5, 100, 0.25, 'backOut')
                noteTweenY('noteY4', 7, 100, 0.25, 'backOut')
                noteTweenY('noteY1', 4, 50, 0.25, 'backOut')
                noteTweenY('noteY3', 6, 50, 0.25, 'backOut')
                if downscroll then
                    noteTweenY('noteY2', 5, 520, 0.25, 'backOut')
                    noteTweenY('noteY4', 7, 520, 0.25, 'backOut')
                    noteTweenY('noteY1', 4, 570, 0.25, 'backOut')
                    noteTweenY('noteY3', 6, 570, 0.25, 'backOut')
                end
            end
        end
    end
    if curSection >= 40 then
        function onBeatHit()
            if curBeat % 4 == 0 then
                noteTweenY('noteY2', 5, 50, 0.25, 'backOut')
                noteTweenY('noteY4', 7, 50, 0.25, 'backOut')
                noteTweenY('noteY1', 4, 100, 0.25, 'backOut')
                noteTweenY('noteY3', 6, 100, 0.25, 'backOut')
                if downscroll then
                    noteTweenY('noteY2', 5, 570, 0.25, 'backOut')
                    noteTweenY('noteY4', 7, 570, 0.25, 'backOut')
                    noteTweenY('noteY1', 4, 520, 0.25, 'backOut')
                    noteTweenY('noteY3', 6, 520, 0.25, 'backOut')
                end
            end
            if curBeat % 8 == 0 then
                noteTweenY('noteY2', 5, 100, 0.25, 'backOut')
                noteTweenY('noteY4', 7, 100, 0.25, 'backOut')
                noteTweenY('noteY1', 4, 50, 0.25, 'backOut')
                noteTweenY('noteY3', 6, 50, 0.25, 'backOut')
                if downscroll then
                    noteTweenY('noteY2', 5, 520, 0.25, 'backOut')
                    noteTweenY('noteY4', 7, 520, 0.25, 'backOut')
                    noteTweenY('noteY1', 4, 570, 0.25, 'backOut')
                    noteTweenY('noteY3', 6, 570, 0.25, 'backOut')
                end
            end
        end
    end
    if curSection >= 53 then
        noteTweenY('noteY2', 5, 50, 1, 'backOut')
        noteTweenY('noteY4', 7, 50, 1, 'backOut')
        noteTweenY('noteY1', 4, 50, 1, 'backOut')
        noteTweenY('noteY3', 6, 50, 1, 'backOut')
        if downscroll then
            noteTweenY('noteY2', 5, 570, 1, 'backOut')
            noteTweenY('noteY4', 7, 570, 1, 'backOut')
            noteTweenY('noteY1', 4, 570, 1, 'backOut')
            noteTweenY('noteY3', 6, 570, 1, 'backOut')
        end
    end
end

function onBeatHit()
    function opponentNoteHit()
        if curBeat >= 30 and curBeat < 100 or curBeat >= 216 and curBeat < 288 then
            triggerEvent('Screen Shake', '0.1, 0.004', '0.1, 0.003')
        end
        if curBeat >= 100 and curBeat < 208 then
            triggerEvent('Screen Shake', '0.1, 0.0055', '0.1, 0.0055')
        end
    end
    if curBeat == 216 then
        noteTweenY('noteY5', 4, 50, 1, 'backOut')
        noteTweenY('noteY6', 5, 50, 1, 'backOut')
        noteTweenY('noteY7', 6, 50, 1, 'backOut')
        noteTweenY('noteY8', 7, 50, 1, 'backOut')
        noteTweenAngle('noteAngle5', 4, 0, 1, 'circInOut')
        noteTweenAngle('noteAngle6', 5, 0, 1, 'circInOut')
        noteTweenAngle('noteAngle7', 6, 0, 1, 'circInOut')
        noteTweenAngle('noteAngle8', 7, 0, 1, 'circInOut')
        if downscroll then
            noteTweenY('noteY5', 4, 570, 1, 'backOut')
            noteTweenY('noteY6', 5, 570, 1, 'backOut')
            noteTweenY('noteY7', 6, 570, 1, 'backOut')
            noteTweenY('noteY8', 7, 570, 1, 'backOut')
        end
    end
end

function onStepHit()
    if curStep == 32 then
        setProperty('black.visible', true)
        doTweenAlpha('silly','black',0,8)
    end
    if curStep == 110 then
        setProperty('dad.visible', true)
    end

    if curStep == 116 then
        setProperty('boyfriend.visible', true) 
    end

    if curStep == 128 then
        setHealth(50/50)
        doTweenY('hiHUD1','healthBar',641,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.0099,'cubeInOut')
        doTweenAlpha('hiHUD6', 'timeBar',1,crochet*0.0099,'linear')
        doTweenAlpha('hiHUD7', 'songIcon',1,crochet*0.0099,'linear')
        doTweenAlpha('hiHUD8', 'timeTxt',1,crochet*0.0099,'linear')
        if downscroll then
        doTweenY('hiHUD1','healthBar',79,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',67,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD3','iconP1',4,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD4','iconP2',4,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',129,crochet*0.0099,'cubeInOut')
        end
    end
    if curStep == 129 then
        noteTweenY('noteY5', 4, 50, 1, 'cubeInOut')
        if downscroll then
            noteTweenY('noteY5', 4, 570, 1, 'cubeInOut');
        end
    end
    if curStep == 132 then
        noteTweenAngle('noteAngle5', 4, 0, 1, 'cubeOut')
    end
    if curStep == 133 then
        noteTweenY('noteY6', 5, 50, 1, 'cubeInOut')
        if downscroll then
            noteTweenY('noteY6', 5, 570, 1, 'cubeInOut');
        end
    end
    if curStep == 136 then
        noteTweenAngle('noteAngle6', 5, 0, 1.1, 'cubeOut')
    end
    if curStep == 137 then
        noteTweenY('noteY7', 6, 50, 1, 'cubeInOut')
        if downscroll then
            noteTweenY('noteY7', 6, 570, 1, 'cubeInOut');
        end
    end
    if curStep == 140 then
        noteTweenAngle('noteAngle7', 6, 0, 1.2, 'cubeOut')
    end
    if curStep == 141 then
        noteTweenY('noteY8', 7, 50, 1, 'cubeInOut')
        if downscroll then
            noteTweenY('noteY8', 7, 570, 1, 'cubeInOut');
        end
    end
    if curStep == 144 then
        noteTweenAngle('noteAngle8', 7, 0, 1.3, 'cubeOut')
    end
    if curStep == 1136 then
        doTweenY('byeHUD1','healthBar',900,crochet*0.005,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.005,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.005,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.005,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.005,'cubeInOut')
        if downscroll then
            doTweenY('byeHUD1','healthBar',-300,crochet*0.005,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',-300,crochet*0.005,'cubeInOut')
            doTweenY('byeHUD3','iconP1',-300,crochet*0.005,'cubeInOut')
            doTweenY('byeHUD4','iconP2',-300,crochet*0.005,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',-300,crochet*0.005,'cubeInOut')
        end
    end
    if curStep == 1264 then
        doTweenAlpha('silly','black',1,8)
    end
end