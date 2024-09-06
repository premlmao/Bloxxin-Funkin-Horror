function onCreate()
makeLuaSprite('black',nil,0,0)
makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
setObjectCamera('black', 'hud')
setProperty('black.alpha', 0)
screenCenter('black')
addLuaSprite('black',true)
setProperty('black.visible', false)
end

function onBeatHit()
    if curBeat == 216 then
        doTweenAlpha('byeHUD1','timeBar',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD2','songIcon',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD3','timeTxt',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD4','healthBar',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD5','healthBarAround',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD6','iconP1',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD7','iconP2',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD8','scoreTxt',0,crochet*0.005,'circIn')
    end

    if curBeat == 248 then
        noteTweenAlpha('byeNotes5', 4, 0, 1, circIn);
        noteTweenAlpha('byeNotes6', 5, 0, 1, circIn);
        noteTweenAlpha('byeNotes7', 6, 0, 1, circIn);
        noteTweenAlpha('byeNotes8', 7, 0, 1, circIn);
    end

    if curBeat == 276 then
        noteTweenAlpha('hiNotes1', 4, 1, 0.75, circIn);
        noteTweenAlpha('hiNotes2', 5, 1, 0.75, circIn);
        noteTweenAlpha('hiNotes3', 6, 1, 0.75, circIn);
        noteTweenAlpha('hiNotes4', 7, 1, 0.75, circIn);
    end

    if curBeat == 280 then
        noteTweenAlpha('byeNotes1', 0, 0, 1, circIn);
        noteTweenAlpha('byeNotes2', 1, 0, 1, circIn);
        noteTweenAlpha('byeNotes3', 2, 0, 1, circIn);
        noteTweenAlpha('byeNotes4', 3, 0, 1, circIn);
    end

    if curBeat == 312 then
        noteTweenAlpha('byeNotes1', 0, 0, 1, circIn);
        noteTweenAlpha('byeNotes2', 1, 0, 1, circIn);
        noteTweenAlpha('byeNotes3', 2, 0, 1, circIn);
        noteTweenAlpha('byeNotes4', 3, 0, 1, circIn);
        noteTweenAlpha('byeNotes5', 4, 0, 1, circIn);
        noteTweenAlpha('byeNotes6', 5, 0, 1, circIn);
        noteTweenAlpha('byeNotes7', 6, 0, 1, circIn);
        noteTweenAlpha('byeNotes8', 7, 0, 1, circIn);
    end

    if curBeat == 320 then
        doTweenAlpha('hiHUD1','timeBar',1,crochet*0.005,'circOut')
        doTweenAlpha('hiHUD2','songIcon',1,crochet*0.005,'circOut')
        doTweenAlpha('hiHUD3','timeTxt',1,crochet*0.005,'circOut')
        doTweenAlpha('hiHUD4','healthBar',1,crochet*0.005,'circOut')
        doTweenAlpha('hiHUD5','healthBarAround',1,crochet*0.005,'circOut')
        doTweenAlpha('hiHUD6','iconP1',1,crochet*0.005,'circOut')
        doTweenAlpha('hiHUD7','iconP2',1,crochet*0.005,'circOut')
        doTweenAlpha('hiHUD8','scoreTxt',1,crochet*0.005,'circOut')
        noteTweenAlpha('hiNotes1', 0, 1, 1, circIn);
        noteTweenAlpha('hiNotes2', 1, 1, 1, circIn);
        noteTweenAlpha('hiNotes3', 2, 1, 1, circIn);
        noteTweenAlpha('hiNotes4', 3, 1, 1, circIn);
        noteTweenAlpha('hiNotes5', 4, 1, 1, circIn);
        noteTweenAlpha('hiNotes6', 5, 1, 1, circIn);
        noteTweenAlpha('hiNotes7', 6, 1, 1, circIn);
        noteTweenAlpha('hiNotes8', 7, 1, 1, circIn);
    end

    if curBeat == 380 then
        doTweenAlpha('byeHUD1','timeBar',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD2','songIcon',1,crochet*0.005,'circOut')
        doTweenAlpha('byeHUD3','timeTxt',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD4','healthBar',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD5','healthBarAround',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD6','iconP1',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD7','iconP2',0,crochet*0.005,'circIn')
        doTweenAlpha('byeHUD8','scoreTxt',0,crochet*0.005,'circIn')
    end

    if curBeat == 388 then
        noteTweenAlpha('byeNotes1', 0, 0, 1, circIn);
        noteTweenAlpha('byeNotes2', 1, 0, 1, circIn);
        noteTweenAlpha('byeNotes3', 2, 0, 1, circIn);
        noteTweenAlpha('byeNotes4', 3, 0, 1, circIn);
        noteTweenAlpha('byeNotes5', 4, 0, 1, circIn);
        noteTweenAlpha('byeNotes6', 5, 0, 1, circIn);
        noteTweenAlpha('byeNotes7', 6, 0, 1, circIn);
        noteTweenAlpha('byeNotes8', 7, 0, 1, circIn);
    end
end

function onStepHit()
if curStep == 1556 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,5)
end
end