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
    doTweenAlpha('byeHUD1','timeBar',0,crochet*0.002,'linear')
    doTweenAlpha('byeHUD2','timeTxt',0,crochet*0.002,'linear')
    doTweenAlpha('byeHUD3','healthBar',0,crochet*0.002,'linear')
    doTweenAlpha('byeHUD4','healthBarAround',0,crochet*0.002,'linear')
    doTweenAlpha('byeHUD5','iconP1',0,crochet*0.002,'linear')
    doTweenAlpha('byeHUD6','iconP2',0,crochet*0.002,'linear')
    doTweenAlpha('byeHUD7','scoreTxt',0,crochet*0.002,'linear')
    noteTweenAlpha('hiNotes1', 0, 0, 1, linear);
    noteTweenAlpha('hiNotes2', 1, 0, 1, linear);
    noteTweenAlpha('hiNotes3', 2, 0, 1, linear);
    noteTweenAlpha('hiNotes4', 3, 0, 1, linear);
    noteTweenAlpha('hiNotes5', 4, 0, 1, linear);
    noteTweenAlpha('hiNotes6', 5, 0, 1, linear);
    noteTweenAlpha('hiNotes7', 6, 0, 1, linear);
    noteTweenAlpha('hiNotes8', 7, 0, 1, linear);
    end
    
    function onBeatHit()
    if curBeat == 30 then
        noteTweenAlpha('hiNotes1', 0, 1, 1, linear);
        noteTweenAlpha('hiNotes2', 1, 1, 1, linear);
        noteTweenAlpha('hiNotes3', 2, 1, 1, linear);
        noteTweenAlpha('hiNotes4', 3, 1, 1, linear);
        noteTweenAlpha('hiNotes5', 4, 1, 1, linear);
        noteTweenAlpha('hiNotes6', 5, 1, 1, linear);
        noteTweenAlpha('hiNotes7', 6, 1, 1, linear);
        noteTweenAlpha('hiNotes8', 7, 1, 1, linear);
    end

    if curBeat == 104 then
        doTweenAlpha('hiHUD1','timeBar',1,crochet*0.002,'linear')
        doTweenAlpha('hiHUD2','timeTxt',1,crochet*0.002,'linear')
        doTweenAlpha('hiHUD3','healthBar',1,crochet*0.002,'linear')
        doTweenAlpha('hiHUD4','healthBarAround',1,crochet*0.002,'linear')
        doTweenAlpha('hiHUD5','iconP1',1,crochet*0.002,'linear')
        doTweenAlpha('hiHUD6','iconP2',1,crochet*0.002,'linear')
        doTweenAlpha('hiHUD7','scoreTxt',1,crochet*0.002,'linear')
    end

    if curBeat == 232 then
        doTweenAlpha('byeHUD1','timeBar',0,crochet*0.002,'linear')
        doTweenAlpha('byeHUD2','timeTxt',0,crochet*0.002,'linear')
        doTweenAlpha('byeHUD3','healthBar',0,crochet*0.002,'linear')
        doTweenAlpha('byeHUD4','healthBarAround',0,crochet*0.002,'linear')
        doTweenAlpha('byeHUD5','iconP1',0,crochet*0.002,'linear')
        doTweenAlpha('byeHUD6','iconP2',0,crochet*0.002,'linear')
        doTweenAlpha('byeHUD7','scoreTxt',0,crochet*0.002,'linear')
        noteTweenAlpha('byeNotes1', 0, 0, 0.2, linear);
        noteTweenAlpha('byeNotes2', 1, 0, 0.2, linear);
        noteTweenAlpha('byeNotes3', 2, 0, 0.2, linear);
        noteTweenAlpha('byeNotes4', 3, 0, 0.2, linear);
        noteTweenAlpha('byeNotes5', 4, 0, 0.2, linear);
        noteTweenAlpha('byeNotes6', 5, 0, 0.2, linear);
        noteTweenAlpha('byeNotes7', 6, 0, 0.2, linear);
        noteTweenAlpha('byeNotes8', 7, 0, 0.2, linear);
    end
    
    if curBeat == 240 then
        doTweenAlpha('hiHUD1','timeBar',1,crochet*0.002,'linear')
        doTweenAlpha('hiHUD2','timeTxt',1,crochet*0.002,'linear')
        doTweenAlpha('hiHUD3','healthBar',1,crochet*0.002,'linear')
        doTweenAlpha('hiHUD4','healthBarAround',1,crochet*0.002,'linear')
        doTweenAlpha('hiHUD5','iconP1',1,crochet*0.002,'linear')
        doTweenAlpha('hiHUD6','iconP2',1,crochet*0.002,'linear')
        doTweenAlpha('hiHUD7','scoreTxt',1,crochet*0.002,'linear')
        noteTweenAlpha('hiNotes1', 0, 1, 0.2, linear);
        noteTweenAlpha('hiNotes2', 1, 1, 0.2, linear);
        noteTweenAlpha('hiNotes3', 2, 1, 0.2, linear);
        noteTweenAlpha('hiNotes4', 3, 1, 0.2, linear);
        noteTweenAlpha('hiNotes5', 4, 1, 0.2, linear);
        noteTweenAlpha('hiNotes6', 5, 1, 0.2, linear);
        noteTweenAlpha('hiNotes7', 6, 1, 0.2, linear);
        noteTweenAlpha('hiNotes8', 7, 1, 0.2, linear);
    end

    if curBeat == 304 then
        noteTweenAlpha('byeNotes5', 0, 0, 0.5, linear);
        noteTweenAlpha('byeNotes6', 1, 0, 0.5, linear);
        noteTweenAlpha('byeNotes7', 2, 0, 0.5, linear);
        noteTweenAlpha('byeNotes8', 3, 0, 0.5, linear);
        doTweenAlpha('byeHUD1','timeBar',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD2','timeTxt',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD3','healthBar',0.25,crochet*0.005,'linear')
        doTweenAlpha('byeHUD4','healthBarAround',0.25,crochet*0.005,'linear')
        doTweenAlpha('byeHUD5','iconP1',0.25,crochet*0.005,'linear')
        doTweenAlpha('byeHUD6','iconP2',0.25,crochet*0.005,'linear')
        doTweenAlpha('byeHUD7','scoreTxt',0,crochet*0.005,'linear')
    end

    if curBeat == 440 then
        doTweenAlpha('byeHUD1','timeBar',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD2','timeTxt',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD3','healthBar',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD4','healthBarAround',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD5','iconP1',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD6','iconP2',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD7','scoreTxt',0,crochet*0.005,'linear')
        noteTweenAlpha('byeNotes1', 0, 0, 0.2, linear);
        noteTweenAlpha('byeNotes2', 1, 0, 0.2, linear);
        noteTweenAlpha('byeNotes3', 2, 0, 0.2, linear);
        noteTweenAlpha('byeNotes4', 3, 0, 0.2, linear);
        noteTweenAlpha('byeNotes5', 4, 0, 0.2, linear);
        noteTweenAlpha('byeNotes6', 5, 0, 0.2, linear);
        noteTweenAlpha('byeNotes7', 6, 0, 0.2, linear);
        noteTweenAlpha('byeNotes8', 7, 0, 0.2, linear);
    end
        
    function onStepHit()
    if curStep == 7 then
    setProperty('black.visible', true)
    doTweenAlpha('silly','black',0,6)
    end
    end
end