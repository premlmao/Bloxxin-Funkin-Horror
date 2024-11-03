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
        doTweenY('hiHUD1','healthBar',641,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
        doTweenAlpha('hiHUD6', 'timeBar',1,crochet*0.005,'linear')
    end

    if curBeat == 168 then
        doTweenY('byeHUD1','healthBar',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.002,'cubeInOut')
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
    end
    
    if curBeat == 240 then
        setHealth(50/50)
        doTweenY('hiHUD1','healthBar',641,crochet*0.005,'cubeInOut')
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
        doTweenY('hiHUD1','healthBar',641,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
        setHealth(50/50)
    end

    if curBeat == 440 then
        doTweenY('byeHUD1','healthBar',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.002,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.002,'cubeInOut')
    end

    if curBeat == 456 then
        noteTweenY('byeNotesY1', 4, -2000, 1.5, 'backInOut');
        noteTweenY('byeNotesY2', 5, -2000, 1.5, 'backInOut');
        noteTweenY('byeNotesY3', 6, -2000, 1.5, 'backInOut');
        noteTweenY('byeNotesY4', 7, -2000, 1.5, 'backInOut');
    end
end
        
function onStepHit()
if curStep == 10 then
    setObjectCamera('black', 'hud')
doTweenAlpha('silly','black',0,6)
end

function opponentNoteHit()
    if curStep >= 704 and curStep < 719 then
        triggerEvent('Screen Shake', '0.1, 0.004,', '0.1, 0.003')
    end
    end
end