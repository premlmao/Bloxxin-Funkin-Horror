function onCreate()
    makeLuaSprite('black',nil,0,0)
    makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
    setObjectCamera('black', 'hud')
    setProperty('black.alpha', 1)
    screenCenter('black')
    addLuaSprite('black',true)
    setProperty('black.visible', true)
    end
    
    function onSongStart()
    doTweenAlpha('byeHUD1','timeBar',0,crochet*0.002,'circIn')
    doTweenAlpha('byeHUD2','timeTxt',0,crochet*0.002,'circIn')
    doTweenAlpha('byeHUD3','healthBar',0,crochet*0.002,'circIn')
    doTweenAlpha('byeHUD4','healthBarAround',0,crochet*0.002,'circIn')
    doTweenAlpha('byeHUD5','iconP1',0,crochet*0.002,'circIn')
    doTweenAlpha('byeHUD6','iconP2',0,crochet*0.002,'circIn')
    doTweenAlpha('byeHUD7','scoreTxt',0,crochet*0.002,'circIn')
    noteTweenAlpha('hiNotes1', 0, 0, 1, circIn);
    noteTweenAlpha('hiNotes2', 1, 0, 1, circIn);
    noteTweenAlpha('hiNotes3', 2, 0, 1, circIn);
    noteTweenAlpha('hiNotes4', 3, 0, 1, circIn);
    noteTweenAlpha('hiNotes5', 4, 0, 1, circIn);
    noteTweenAlpha('hiNotes6', 5, 0, 1, circIn);
    noteTweenAlpha('hiNotes7', 6, 0, 1, circIn);
    noteTweenAlpha('hiNotes8', 7, 0, 1, circIn);
    end
    
    function onBeatHit()
    if curBeat == 30 then
        noteTweenAlpha('hiNotes1', 0, 1, 1, circIn);
        noteTweenAlpha('hiNotes2', 1, 1, 1, circIn);
        noteTweenAlpha('hiNotes3', 2, 1, 1, circIn);
        noteTweenAlpha('hiNotes4', 3, 1, 1, circIn);
        noteTweenAlpha('hiNotes5', 4, 1, 1, circIn);
        noteTweenAlpha('hiNotes6', 5, 1, 1, circIn);
        noteTweenAlpha('hiNotes7', 6, 1, 1, circIn);
        noteTweenAlpha('hiNotes8', 7, 1, 1, circIn);
    end

    if curBeat == 104 then
        doTweenAlpha('hiHUD1','timeBar',1,crochet*0.002,'circOut')
        doTweenAlpha('hiHUD2','timeTxt',1,crochet*0.002,'circOut')
        doTweenAlpha('hiHUD3','healthBar',1,crochet*0.002,'circOut')
        doTweenAlpha('hiHUD4','healthBarAround',1,crochet*0.002,'circOut')
        doTweenAlpha('hiHUD5','iconP1',1,crochet*0.002,'circOut')
        doTweenAlpha('hiHUD6','iconP2',1,crochet*0.002,'circOut')
        doTweenAlpha('hiHUD7','scoreTxt',1,crochet*0.002,'circOut')
    end

    if curBeat == 232 then
        doTweenAlpha('byeHUD1','timeBar',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD2','timeTxt',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD3','healthBar',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD4','healthBarAround',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD5','iconP1',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD6','iconP2',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD7','scoreTxt',0,crochet*0.005,'circIn')
        noteTweenAlpha('byeNotes1', 0, 0, 0.2, circIn);
        noteTweenAlpha('byeNotes2', 1, 0, 0.2, circIn);
        noteTweenAlpha('byeNotes3', 2, 0, 0.2, circIn);
        noteTweenAlpha('byeNotes4', 3, 0, 0.2, circIn);
        noteTweenAlpha('byeNotes5', 4, 0, 0.2, circIn);
        noteTweenAlpha('byeNotes6', 5, 0, 0.2, circIn);
        noteTweenAlpha('byeNotes7', 6, 0, 0.2, circIn);
        noteTweenAlpha('byeNotes8', 7, 0, 0.2, circIn);
    end
    
    if curBeat == 240 then
        doTweenAlpha('hiHUD1','timeBar',1,crochet*0.002,'circOut')
        doTweenAlpha('hiHUD2','timeTxt',1,crochet*0.002,'circOut')
        doTweenAlpha('hiHUD3','healthBar',1,crochet*0.002,'circOut')
        doTweenAlpha('hiHUD4','healthBarAround',1,crochet*0.002,'circOut')
        doTweenAlpha('hiHUD5','iconP1',1,crochet*0.002,'circOut')
        doTweenAlpha('hiHUD6','iconP2',1,crochet*0.002,'circOut')
        doTweenAlpha('hiHUD7','scoreTxt',1,crochet*0.002,'circOut')
        noteTweenAlpha('hiNotes1', 0, 1, 0.2, circIn);
        noteTweenAlpha('hiNotes2', 1, 1, 0.2, circIn);
        noteTweenAlpha('hiNotes3', 2, 1, 0.2, circIn);
        noteTweenAlpha('hiNotes4', 3, 1, 0.2, circIn);
        noteTweenAlpha('hiNotes5', 4, 1, 0.2, circIn);
        noteTweenAlpha('hiNotes6', 5, 1, 0.2, circIn);
        noteTweenAlpha('hiNotes7', 6, 1, 0.2, circIn);
        noteTweenAlpha('hiNotes8', 7, 1, 0.2, circIn);
    end

    if curBeat == 304 then
        noteTweenAlpha('byeNotes5', 0, 0, 0.2, circIn);
        noteTweenAlpha('byeNotes6', 1, 0, 0.2, circIn);
        noteTweenAlpha('byeNotes7', 2, 0, 0.2, circIn);
        noteTweenAlpha('byeNotes8', 3, 0, 0.2, circIn);
        doTweenAlpha('byeHUD1','timeBar',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD2','timeTxt',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD3','healthBar',0.25,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD4','healthBarAround',0.25,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD5','iconP1',0.25,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD6','iconP2',0.25,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD7','scoreTxt',0,crochet*0.005,'circIn')
    end

    if curBeat == 440 then
        doTweenAlpha('byeHUD1','timeBar',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD2','timeTxt',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD3','healthBar',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD4','healthBarAround',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD5','iconP1',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD6','iconP2',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD7','scoreTxt',0,crochet*0.005,'circIn')
        noteTweenAlpha('byeNotes1', 0, 0, 0.2, circIn);
        noteTweenAlpha('byeNotes2', 1, 0, 0.2, circIn);
        noteTweenAlpha('byeNotes3', 2, 0, 0.2, circIn);
        noteTweenAlpha('byeNotes4', 3, 0, 0.2, circIn);
        noteTweenAlpha('byeNotes5', 4, 0, 0.2, circIn);
        noteTweenAlpha('byeNotes6', 5, 0, 0.2, circIn);
        noteTweenAlpha('byeNotes7', 6, 0, 0.2, circIn);
        noteTweenAlpha('byeNotes8', 7, 0, 0.2, circIn);
    end
        
    function onStepHit()
    if curStep == 7 then
    setProperty('black.visible', true)
    doTweenAlpha('silly','black',0,6)
    end
    end
end