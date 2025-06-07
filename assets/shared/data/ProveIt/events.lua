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
    setProperty('timeTxt.visible', false)
    setProperty('songIcon.visible', false)
    
    downscroll = getPropertyFromClass('backend.ClientPrefs', 'data.downScroll')
    if downscroll then
        setProperty('healthBar.y', -300)
        setProperty('healthBarAround.y', -300)
        setProperty('iconP1.y', -300)
        setProperty('iconP2.y', -300)
        setProperty('scoreTxt.y', -300)
        setProperty('songIcon.visible', false)
    end
    end
    
    function onSongStart()
    noteTweenAlpha('byeNotes1', 0, 0, 1, 'linear');
    noteTweenAlpha('byeNotes2', 1, 0, 1, 'linear');
    noteTweenAlpha('byeNotes3', 2, 0, 1, 'linear');
    noteTweenAlpha('byeNotes4', 3, 0, 1, 'linear');
    noteTweenAlpha('byeNotes5', 4, 0, 1, 'linear');
    noteTweenAlpha('byeNotes6', 5, 0, 1, 'linear');
    noteTweenAlpha('byeNotes7', 6, 0, 1, 'linear');
    noteTweenAlpha('byeNotes8', 7, 0, 1, 'linear');
    end
    
    function onBeatHit()
        function onUpdatePost()
            if curBeat == 104 or curBeat == 180 or curBeat == 240 then
                setProperty('timeTxt.visible', true)
                setProperty('songIcon.visible', true)
                doTweenAlpha('hiHUD7', 'songIcon',1,crochet*0.005,'linear')
                doTweenAlpha('hiHUD8', 'timeTxt',1,crochet*0.005,'linear')
            end
            if curBeat == 168 or curBeat == 232 or curBeat == 304 then
                setProperty('timeTxt.visible', false)
                setProperty('songIcon.visible', false)
                doTweenAlpha('byeHUD6','timeTxt',0,crochet*0.005,'linear')
                doTweenAlpha('byeHUD7','songIcon',0,crochet*0.005,'linear')
            end
        end
    if curBeat == 30 then
        noteTweenAlpha('hiNotes1', 0, 1, 1, 'linear');
        noteTweenAlpha('hiNotes2', 1, 1, 1, 'linear');
        noteTweenAlpha('hiNotes3', 2, 1, 1, 'linear');
        noteTweenAlpha('hiNotes4', 3, 1, 1, 'linear');
        noteTweenAlpha('hiNotes5', 4, 1, 1, 'linear');
        noteTweenAlpha('hiNotes6', 5, 1, 1, 'linear');
        noteTweenAlpha('hiNotes7', 6, 1, 1, 'linear');
        noteTweenAlpha('hiNotes8', 7, 1, 1, 'linear');
    end

    if curBeat == 104 then
        setHealth(50/50)
        doTweenY('hiHUD1','healthBar',648,crochet*0.005,'cubeInOut')
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

    if curBeat == 168 then
        doTweenY('byeHUD1','healthBar',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.002,'cubeInOut')
        if downscroll then
            doTweenY('byeHUD1','healthBar',-300,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',-300,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD3','iconP1',-300,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD4','iconP2',-300,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',-300,crochet*0.002,'cubeInOut')
        end
    end

    if curBeat == 232 then
        doTweenY('byeHUD1','healthBar',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.002,'cubeInOut')
        doTweenAlpha('byeHUD6','timeBar',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD7','songIcon',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD8', 'timeTxt',0,crochet*0.005,'linear')
        noteTweenAlpha('byeNotes1', 0, 0, 0.2, 'linear');
        noteTweenAlpha('byeNotes2', 1, 0, 0.2, 'linear');
        noteTweenAlpha('byeNotes3', 2, 0, 0.2, 'linear');
        noteTweenAlpha('byeNotes4', 3, 0, 0.2, 'linear');
        noteTweenAlpha('byeNotes5', 4, 0, 0.2, 'linear');
        noteTweenAlpha('byeNotes6', 5, 0, 0.2, 'linear');
        noteTweenAlpha('byeNotes7', 6, 0, 0.2, 'linear');
        noteTweenAlpha('byeNotes8', 7, 0, 0.2, 'linear');
        if downscroll then
            doTweenY('byeHUD1','healthBar',-300,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',-300,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD3','iconP1',-300,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD4','iconP2',-300,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',-300,crochet*0.002,'cubeInOut')
        end
    end
    
    if curBeat == 240 then
        setHealth(50/50)
        doTweenY('hiHUD1','healthBar',648,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
        doTweenAlpha('hiHUD6', 'timeBar',1,crochet*0.005,'linear')
        doTweenAlpha('hiHUD7', 'songIcon',1,crochet*0.005,'linear')
        doTweenAlpha('hiHUD8', 'timeTxt',1,crochet*0.005,'linear')
        noteTweenAlpha('hiNotes1', 0, 1, 0.2, 'linear');
        noteTweenAlpha('hiNotes2', 1, 1, 0.2, 'linear');
        noteTweenAlpha('hiNotes3', 2, 1, 0.2, 'linear');
        noteTweenAlpha('hiNotes4', 3, 1, 0.2, 'linear');
        noteTweenAlpha('hiNotes5', 4, 1, 0.2, 'linear');
        noteTweenAlpha('hiNotes6', 5, 1, 0.2, 'linear');
        noteTweenAlpha('hiNotes7', 6, 1, 0.2, 'linear');
        noteTweenAlpha('hiNotes8', 7, 1, 0.2, 'linear');
        if downscroll then
            doTweenY('hiHUD1','healthBar',79,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',67,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD3','iconP1',4,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD4','iconP2',4,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',129,crochet*0.005,'cubeInOut')
        end
    end

    if curBeat == 300 then
        doTweenY('byeHUD1','healthBar',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.002,'cubeInOut')
        doTweenAlpha('byeHUD6','timeBar',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD7','songIcon',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD8', 'timeTxt',0,crochet*0.005,'linear')
        if downscroll then
            doTweenY('byeHUD1','healthBar',-300,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',-300,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD3','iconP1',-300,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD4','iconP2',-300,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',-300,crochet*0.002,'cubeInOut')
        end
    end

    if curBeat == 302 then
        doTweenX('hudX1', 'healthBar', 600,crochet*0.0025,'cubeInOut')
        doTweenX('hudX2', 'healthBarAround', 600,crochet*0.0025,'cubeInOut')
        doTweenX('hudX3', 'iconP1', 600,crochet*0.0025,'cubeInOut')
        doTweenX('hudX4', 'iconP2', 600,crochet*0.0025,'cubeInOut')
        doTweenX('hudX5', 'scoreTxt', 265,crochet*0.0025,'cubeInOut')   
    end

    if curBeat == 304 then
        noteTweenAlpha('byeNotes5', 0, 0, 0.5, 'linear');
        noteTweenAlpha('byeNotes6', 1, 0, 0.5, 'linear');
        noteTweenAlpha('byeNotes7', 2, 0, 0.5, 'linear');
        noteTweenAlpha('byeNotes8', 3, 0, 0.5, 'linear');
        doTweenAlpha('byeHUD1','timeBar',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD2','songIcon',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD3','timeTxt',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD4','healthBar',0.5,crochet*0.005,'linear')
        doTweenAlpha('byeHUD5','healthBarAround',0.5,crochet*0.005,'linear')
        doTweenAlpha('byeHUD6','iconP1',0.5,crochet*0.005,'linear')
        doTweenAlpha('byeHUD7','iconP2',0.5,crochet*0.005,'linear')
        doTweenAlpha('byeHUD8','scoreTxt',0.5,crochet*0.005,'linear')
        doTweenY('hiHUD1','healthBar',648,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
        setHealth(50/50)
        if downscroll then
            doTweenY('hiHUD1','healthBar',79,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',67,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD3','iconP1',4,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD4','iconP2',4,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',129,crochet*0.005,'cubeInOut')
        end
    end

    if curBeat == 440 then
        doTweenY('byeHUD1','healthBar',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.002,'cubeInOut')
        if downscroll then
            doTweenY('byeHUD1','healthBar',-300,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',-300,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD3','iconP1',-300,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD4','iconP2',-300,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',-300,crochet*0.002,'cubeInOut')
        end
    end

    if curBeat == 456 then
        noteTweenY('byeNotesY1', 4, -2000, 3, 'backInOut');
        noteTweenY('byeNotesY2', 5, -2000, 3, 'backInOut');
        noteTweenY('byeNotesY3', 6, -2000, 3, 'backInOut');
        noteTweenY('byeNotesY4', 7, -2000, 3, 'backInOut');
        if downscroll then
            noteTweenY('byeNotesY1', 4, 4000, 3, 'backInOut');
            noteTweenY('byeNotesY2', 5, 4000, 3, 'backInOut');
            noteTweenY('byeNotesY3', 6, 4000, 3, 'backInOut');
            noteTweenY('byeNotesY4', 7, 4000, 3, 'backInOut');
        end
    end
end
        
function onStepHit()
if curStep == 10 then
    setObjectCamera('black', 'hud')
doTweenAlpha('silly','black',0,6)
end

if curStep == 267 or curStep == 666 then
    noteTweenY('notesY1', 0, 150, 1, 'backInOut');
    noteTweenY('notesY2', 1, 150, 1, 'backInOut');
    noteTweenY('notesY3', 2, 150, 1, 'backInOut');
    noteTweenY('notesY4', 3, 150, 1, 'backInOut');
    noteTweenY('notesY5', 4, 150, 1, 'backInOut');
    noteTweenY('notesY6', 5, 150, 1, 'backInOut');
    noteTweenY('notesY7', 6, 150, 1, 'backInOut');
    noteTweenY('notesY8', 7, 150, 1, 'backInOut');
    if downscroll then
        noteTweenY('notesY1', 0, 470, 1, 'backInOut');
        noteTweenY('notesY2', 1, 470, 1, 'backInOut');
        noteTweenY('notesY3', 2, 470, 1, 'backInOut');
        noteTweenY('notesY4', 3, 470, 1, 'backInOut');
        noteTweenY('notesY5', 4, 470, 1, 'backInOut');
        noteTweenY('notesY6', 5, 470, 1, 'backInOut');
        noteTweenY('notesY7', 6, 470, 1, 'backInOut');
        noteTweenY('notesY8', 7, 470, 1, 'backInOut');
    end
end

if curStep == 400 or curStep == 720 then
    noteTweenY('notesY1', 0, 50, 1, 'backInOut');
    noteTweenY('notesY2', 1, 50, 1, 'backInOut');
    noteTweenY('notesY3', 2, 50, 1, 'backInOut');
    noteTweenY('notesY4', 3, 50, 1, 'backInOut');
    noteTweenY('notesY5', 4, 50, 1, 'backInOut');
    noteTweenY('notesY6', 5, 50, 1, 'backInOut');
    noteTweenY('notesY7', 6, 50, 1, 'backInOut');
    noteTweenY('notesY8', 7, 50, 1, 'backInOut');
    if downscroll then
        noteTweenY('notesY1', 0, 570, 1, 'backInOut');
        noteTweenY('notesY2', 1, 570, 1, 'backInOut');
        noteTweenY('notesY3', 2, 570, 1, 'backInOut');
        noteTweenY('notesY4', 3, 570, 1, 'backInOut');
        noteTweenY('notesY5', 4, 570, 1, 'backInOut');
        noteTweenY('notesY6', 5, 570, 1, 'backInOut');
        noteTweenY('notesY7', 6, 570, 1, 'backInOut');
        noteTweenY('notesY8', 7, 570, 1, 'backInOut');
    end
end

if curStep == 704 then
    noteTweenY('notesY1', 0, 200, 1, 'cubeOut');
    noteTweenY('notesY2', 1, 200, 1, 'cubeOut');
    noteTweenY('notesY3', 2, 200, 1, 'cubeOut');
    noteTweenY('notesY4', 3, 200, 1, 'cubeOut');
    noteTweenY('notesY5', 4, 200, 1, 'cubeOut');
    noteTweenY('notesY6', 5, 200, 1, 'cubeOut');
    noteTweenY('notesY7', 6, 200, 1, 'cubeOut');
    noteTweenY('notesY8', 7, 200, 1, 'cubeOut');
    if downscroll then
        noteTweenY('notesY1', 0, 420, 1, 'cubeOut');
        noteTweenY('notesY2', 1, 420, 1, 'cubeOut');
        noteTweenY('notesY3', 2, 420, 1, 'cubeOut');
        noteTweenY('notesY4', 3, 420, 1, 'cubeOut');
        noteTweenY('notesY5', 4, 420, 1, 'cubeOut');
        noteTweenY('notesY6', 5, 420, 1, 'cubeOut');
        noteTweenY('notesY7', 6, 420, 1, 'cubeOut');
        noteTweenY('notesY8', 7, 420, 1, 'cubeOut');
    end
end


function opponentNoteHit()
    if curStep >= 704 and curStep < 719 then
        triggerEvent('Screen Shake', '0.1, 0.004,', '0.1, 0.003')
    end
    end
end