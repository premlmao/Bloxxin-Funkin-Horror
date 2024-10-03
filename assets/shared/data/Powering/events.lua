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
    setProperty('skipCountdown', true)
end
function onStepHit()
    if curStep == 52 then
        noteTweenY('hiNotes1', 0, 100, 2.25, 'backInOut');
        noteTweenY('hiNotes2', 1, 100, 2.25, 'backInOut');
        noteTweenY('hiNotes3', 2, 100, 2.25, 'backInOut');
        noteTweenY('hiNotes4', 3, 100, 2.25, 'backInOut');
        noteTweenY('hiNotes5', 4, 100, 2.25, 'backInOut');
        noteTweenY('hiNotes6', 5, 100, 2.25, 'backInOut');
        noteTweenY('hiNotes7', 6, 100, 2.25, 'backInOut');
        noteTweenY('hiNotes8', 7, 100, 2.25, 'backInOut');
    end
end
function onBeatHit()
    if curBeat >= 4 and curBeat < 100 or curBeat == 168 then
        function opponentNoteHit()
            triggerEvent('Screen Shake', '0.1, 0.005', '0.1, 0.003')
        end
    end
    if curBeat == 100 then
        function opponentNoteHit()
            triggerEvent('Screen Shake', '0.1, 0.0025,', '0.1, 0.0015')
        end
    end
    if curBeat == 36 then
        noteTweenY('hiNotes1', 0, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes2', 1, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes3', 2, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes4', 3, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes5', 4, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes6', 5, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes7', 6, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes8', 7, 50, 1.75, 'sineInOut');
        setHealth(50/50)
        doTweenY('hiHUD1','healthBar',641,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.0075,'cubeInOut')
        doTweenAlpha('hiHUD6', 'timeBar',1,crochet*0.0075,'linear')
        doTweenAlpha('hiHUD7', 'songIcon',1,crochet*0.0075,'linear')
        doTweenAlpha('hiHUD8', 'timeTxt',1,crochet*0.0075,'linear')
    end
    if curBeat == 92 then
        doTweenY('byeHUD1','healthBar',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.0025,'cubeInOut')
    end
    if curBeat == 96 then
        doTweenX('hudX1', 'healthBar', 600,crochet*0.0025,'cubeInOut')
        doTweenX('hudX2', 'healthBarAround', 600,crochet*0.0025,'cubeInOut')
        doTweenX('hudX3', 'iconP1', 600,crochet*0.0025,'cubeInOut')
        doTweenX('hudX4', 'iconP2', 600,crochet*0.0025,'cubeInOut')
        doTweenX('hudX5', 'scoreTxt', 265,crochet*0.0025,'cubeInOut')
    end
    if curBeat == 100 then
        doTweenY('hiHUD1','healthBar',641,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.0075,'cubeInOut')
        setHealth(50/50)
    end

    if curBeat == 160 then
        doTweenY('byeHUD1','healthBar',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.0025,'cubeInOut')
    end
    if curBeat == 164 then
        screenCenter('healthBar', 'x')
        screenCenter('healthBarAround', 'x')
        screenCenter('scoreTxt', 'x')
        setHealth(50/50)
    end
    if curBeat == 168 then
        doTweenY('hiHUD1','healthBar',641,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
    end
    if curBeat == 232 then
        noteTweenY('hiNotes5', 4, 150, 1, 'backInOut');
        noteTweenY('hiNotes6', 5, 150, 1, 'backInOut');
        noteTweenY('hiNotes7', 6, 150, 1, 'backInOut');
        noteTweenY('hiNotes8', 7, 150, 1, 'backInOut');
        noteTweenX('NoteX4', 4, 100, 1, 'backInOut')
        noteTweenX('NoteX5', 5, 210, 1, 'backInOut')
        noteTweenX('NoteX6', 6, 320, 1, 'backInOut')
        noteTweenX('NoteX7', 7, 430, 1, 'backInOut')
        doTweenY('byeHUD1','healthBar',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.0025,'cubeInOut')
    end
    if curBeat == 296 then
        noteTweenX('NoteX4', 4, 750, 1, 'cubeInOut')
        noteTweenX('NoteX5', 5, 860, 1, 'cubeInOut')
        noteTweenX('NoteX6', 6, 970, 1, 'cubeInOut')
        noteTweenX('NoteX7', 7, 1080, 1, 'cubeInOut')
        noteTweenY('hiNotes5', 4, 50, 1, 'sineInOut');
        noteTweenY('hiNotes6', 5, 50, 1, 'sineInOut');
        noteTweenY('hiNotes7', 6, 50, 1, 'sineInOut');
        noteTweenY('hiNotes8', 7, 50, 1, 'sineInOut');
        doTweenY('hiHUD1','healthBar',641,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
    end

    if curBeat == 364 then
        doTweenY('byeHUD1','healthBar',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.0025,'cubeInOut')
        noteTweenY('hiNotes5', 4, 150, 1, 'backInOut');
        noteTweenY('hiNotes6', 5, 150, 1, 'backInOut');
        noteTweenY('hiNotes7', 6, 150, 1, 'backInOut');
        noteTweenY('hiNotes8', 7, 150, 1, 'backInOut');
    end

    if curBeat == 448 then
        doTweenAlpha('byeHUD6', 'timeBar',0,crochet*0.0075,'linear')
        doTweenAlpha('byeHUD7', 'songIcon',0,crochet*0.0075,'linear')
        doTweenAlpha('byeHUD8', 'timeTxt',0,crochet*0.0075,'linear')
        noteTweenAlpha('alphaNotes4', 4, 0, 1, 'linear')
        noteTweenAlpha('alphaNotes5', 5, 0, 1, 'linear')
        noteTweenAlpha('alphaNotes6', 6, 0, 1, 'linear')
        noteTweenAlpha('alphaNotes7', 7, 0, 1, 'linear')
    end
end