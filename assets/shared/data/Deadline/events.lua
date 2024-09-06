function onCreate()
    setProperty('camHUD.alpha', 1)
    setProperty('healthBar.y', 900)
    setProperty('healthBarAround.y', 900)
    setProperty('iconP1.y', 900)
    setProperty('iconP2.y', 900)
    setProperty('scoreTxt.y', 900)
    setProperty('timeBar.alpha', 0)
    setProperty('songIcon.alpha', 0)
    setProperty('timeTxt.alpha', 0)
end

function onBeatHit()
    if curBeat == 144 then
        noteTweenY('notesY5', 4, 150, 1.25, 'backInOut');
        noteTweenY('notesY6', 5, 150, 1.25, 'backInOut');
        noteTweenY('notesY7', 6, 150, 1.25, 'backInOut');
        noteTweenY('notesY8', 7, 150, 1.25, 'backInOut');
    end
    
    if curBeat == 152 then
        noteTweenAlpha('noteAlpha1', 0, 1, 1, 'cubeOut');
        noteTweenAlpha('noteAlpha2', 1, 1, 1, 'cubeOut');
        noteTweenAlpha('noteAlpha3', 2, 1, 1, 'cubeOut');
        noteTweenAlpha('noteAlpha4', 3, 1, 1, 'cubeOut');
        noteTweenY('notesY5', 4, 50, 1.25, 'backInOut');
        noteTweenY('notesY6', 5, 50, 1.25, 'backInOut');
        noteTweenY('notesY7', 6, 50, 1.25, 'backInOut');
        noteTweenY('notesY8', 7, 50, 1.25, 'backInOut');
        doTweenY('hiHUD1','healthBar',641,crochet*0.0025,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.0025,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.0025,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.0025,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.0025,'cubeInOut')
        doTweenAlpha('hiHUD6', 'timeBar',1,crochet*0.0025,'linear')
        doTweenAlpha('hiHUD7', 'songIcon',1,crochet*0.0025,'linear')
        doTweenAlpha('hiHUD8', 'timeTxt',1,crochet*0.0025,'linear')
    end

    if curBeat == 280 then
        doTweenAlpha('byeHUD1','healthBar',0.25,crochet*0.0025,'linear')
        doTweenAlpha('byeHUD2','healthBarAround',0.25,crochet*0.0025,'linear')
        doTweenAlpha('byeHUD3','iconP1',0.25,crochet*0.0025,'linear')
        doTweenAlpha('byeHUD4','iconP2',0.25,crochet*0.0025,'linear')
        doTweenAlpha('byeHUD5','scoreTxt',0.25,crochet*0.0025,'linear')
        doTweenAlpha('byeHUD6', 'timeBar',0,crochet*0.0025,'linear')
        doTweenAlpha('byeHUD7', 'songIcon',0,crochet*0.0025,'linear')
        doTweenAlpha('byeHUD8', 'timeTxt',0,crochet*0.0025,'linear')
        noteTweenAlpha('byeNotes1', 0, 0, 0.5, 'linear');
        noteTweenAlpha('byeNotes2', 1, 0, 0.5, 'linear');
        noteTweenAlpha('byeNotes3', 2, 0, 0.5, 'linear');
        noteTweenAlpha('byeNotes4', 3, 0, 0.5, 'linear');
    end

    if curBeat == 576 then
        noteTweenAlpha('byeNotes5', 4, 0, 0.5, 'linear');
        noteTweenAlpha('byeNotes6', 5, 0, 0.5, 'linear');
        noteTweenAlpha('byeNotes7', 6, 0, 0.5, 'linear');
        noteTweenAlpha('byeNotes8', 7, 0, 0.5, 'linear');
        doTweenAlpha('byeHUD1','healthBar',0,crochet*0.0025,'linear')
        doTweenAlpha('byeHUD2','healthBarAround',0,crochet*0.0025,'linear')
        doTweenAlpha('byeHUD3','iconP1',0,crochet*0.0025,'linear')
        doTweenAlpha('byeHUD4','iconP2',0,crochet*0.0025,'linear')
        doTweenAlpha('byeHUD5','scoreTxt',0,crochet*0.0025,'linear')
    end

    function opponentNoteHit()
        if curBeat >= 408 and curBeat < 424 or curBeat >= 440 and curBeat < 456 then
            triggerEvent('Screen Shake', '0.1, 0.005', '0.1, 0.0075')
        end

        if curBeat >= 484 and curBeat < 488 then
            triggerEvent('Screen Shake', '0.1, 0.005', '0.1, 0.0075')
        end
    end
end