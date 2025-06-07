function onCreate()
makeLuaSprite('black',nil,0,0)
makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
setObjectCamera('black', 'hud')
setProperty('black.alpha', 0)
screenCenter('black')
addLuaSprite('black',true)
setProperty('black.visible', false)

setProperty('healthBar.y', 900)
setProperty('healthBarAround.y', 900)
setProperty('.y', 900)
setProperty('iconP1.y', 900)
setProperty('iconP2.y', 900)
setProperty('scoreTxt.y', 900)
setProperty('songIcon.visible', false)
setProperty('timeTxt.visible', false)

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

function onBeatHit()
    if curBeat == 44 then
        setHealth(50/50)
        doTweenY('hiHUD1','healthBar',648,crochet*0.0099,'cubeInOut')
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

    if curBeat == 112 then
        noteTweenY('noteY1', 0, 150, 1, 'sineInOut');
        noteTweenY('noteY2', 1, 150, 1, 'sineInOut');
        noteTweenY('noteY3', 2, 150, 1, 'sineInOut');
        noteTweenY('noteY4', 3, 150, 1, 'sineInOut');
        noteTweenY('noteY5', 4, 150, 1, 'sineInOut');
        noteTweenY('noteY6', 5, 150, 1, 'sineInOut');
        noteTweenY('noteY7', 6, 150, 1, 'sineInOut');
        noteTweenY('noteY8', 7, 150, 1, 'sineInOut');
        doTweenY('hiHUD1','healthBar',900,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',900,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD3','iconP1',900,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD4','iconP2',900,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',900,crochet*0.0099,'cubeInOut')
        doTweenAlpha('hiHUD6', 'timeBar',0,crochet*0.0099,'linear')
        doTweenAlpha('hiHUD7', 'songIcon',0,crochet*0.0099,'linear')
        doTweenAlpha('hiHUD8', 'timeTxt',0,crochet*0.0099,'linear')
        if downscroll then
            noteTweenY('noteY1', 0, 470, 1, 'sineInOut');
            noteTweenY('noteY2', 1, 470, 1, 'sineInOut');
            noteTweenY('noteY3', 2, 470, 1, 'sineInOut');
            noteTweenY('noteY4', 3, 470, 1, 'sineInOut');
            noteTweenY('noteY5', 4, 470, 1, 'sineInOut');
            noteTweenY('noteY6', 5, 470, 1, 'sineInOut');
            noteTweenY('noteY7', 6, 470, 1, 'sineInOut');
            noteTweenY('noteY8', 7, 470, 1, 'sineInOut');
            doTweenY('hiHUD1','healthBar',-300,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',-300,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD3','iconP1',-300,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD4','iconP2',-300,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',-300,crochet*0.0099,'cubeInOut')
        end
    end
    if curBeat == 176 then
        noteTweenY('hiNotes1', 0, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes2', 1, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes3', 2, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes4', 3, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes5', 4, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes6', 5, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes7', 6, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes8', 7, 50, 1.75, 'sineInOut');
        setHealth(50/50)
        doTweenY('hiHUD1','healthBar',648,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.0099,'cubeInOut')
        doTweenAlpha('hiHUD6', 'timeBar',1,crochet*0.0099,'linear')
        doTweenAlpha('hiHUD7', 'songIcon',1,crochet*0.0099,'linear')
        doTweenAlpha('hiHUD8', 'timeTxt',1,crochet*0.0099,'linear')
        if downscroll then
            noteTweenY('hiNotes1', 0, 570, 1.75, 'sineInOut');
            noteTweenY('hiNotes2', 1, 570, 1.75, 'sineInOut');
            noteTweenY('hiNotes3', 2, 570, 1.75, 'sineInOut');
            noteTweenY('hiNotes4', 3, 570, 1.75, 'sineInOut');
            noteTweenY('hiNotes5', 4, 570, 1.75, 'sineInOut');
            noteTweenY('hiNotes6', 5, 570, 1.75, 'sineInOut');
            noteTweenY('hiNotes7', 6, 570, 1.75, 'sineInOut');
            noteTweenY('hiNotes8', 7, 570, 1.75, 'sineInOut');
            doTweenY('hiHUD1','healthBar',79,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',67,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD3','iconP1',4,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD4','iconP2',4,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',129,crochet*0.0099,'cubeInOut')
        end
    end
    if curBeat == 216 then
        doTweenAlpha('byeHUD1','timeBar',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD2','songIcon',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD3','timeTxt',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD4','healthBar',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD5','healthBarAround',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD6','iconP1',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD7','iconP2',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD8','scoreTxt',0,crochet*0.005,'linear')
    end

    if curBeat == 248 then
        noteTweenAlpha('byeNotes5', 4, 0, 1, 'linear');
        noteTweenAlpha('byeNotes6', 5, 0, 1, 'linear');
        noteTweenAlpha('byeNotes7', 6, 0, 1, 'linear');
        noteTweenAlpha('byeNotes8', 7, 0, 1, 'linear');
    end

    if curBeat == 252 then
        doTweenY('hiHUD1','healthBar',900,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',900,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD3','iconP1',900,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD4','iconP2',900,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',900,crochet*0.0099,'cubeInOut')
        doTweenAlpha('hiHUD6', 'timeBar',0,crochet*0.0099,'linear')
        doTweenAlpha('hiHUD7', 'songIcon',0,crochet*0.0099,'linear')
        doTweenAlpha('hiHUD8', 'timeTxt',0,crochet*0.0099,'linear')
        if downscroll then
            doTweenY('hiHUD1','healthBar',-300,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',-300,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD3','iconP1',-300,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD4','iconP2',-300,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',-300,crochet*0.0099,'cubeInOut')
        end
    end

    if curBeat == 276 then
        noteTweenAlpha('hiNotes1', 4, 1, 0.75, 'linear');
        noteTweenAlpha('hiNotes2', 5, 1, 0.75, 'linear');
        noteTweenAlpha('hiNotes3', 6, 1, 0.75, 'linear');
        noteTweenAlpha('hiNotes4', 7, 1, 0.75, 'linear');
    end

    if curBeat == 280 then
        noteTweenAlpha('byeNotes1', 0, 0, 1, 'linear');
        noteTweenAlpha('byeNotes2', 1, 0, 1, 'linear');
        noteTweenAlpha('byeNotes3', 2, 0, 1, 'linear');
        noteTweenAlpha('byeNotes4', 3, 0, 1, 'linear');
    end

    if curBeat == 312 then
        noteTweenAlpha('byeNotes1', 0, 0, 1, 'linear');
        noteTweenAlpha('byeNotes2', 1, 0, 1, 'linear');
        noteTweenAlpha('byeNotes3', 2, 0, 1, 'linear');
        noteTweenAlpha('byeNotes4', 3, 0, 1, 'linear');
        noteTweenAlpha('byeNotes5', 4, 0, 1, 'linear');
        noteTweenAlpha('byeNotes6', 5, 0, 1, 'linear');
        noteTweenAlpha('byeNotes7', 6, 0, 1, 'linear');
        noteTweenAlpha('byeNotes8', 7, 0, 1, 'linear');
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
        noteTweenAlpha('hiNotes1', 0, 1, 1, 'linear');
        noteTweenAlpha('hiNotes2', 1, 1, 1, 'linear');
        noteTweenAlpha('hiNotes3', 2, 1, 1, 'linear');
        noteTweenAlpha('hiNotes4', 3, 1, 1, 'linear');
        noteTweenAlpha('hiNotes5', 4, 1, 1, 'linear');
        noteTweenAlpha('hiNotes6', 5, 1, 1, 'linear');
        noteTweenAlpha('hiNotes7', 6, 1, 1, 'linear');
        noteTweenAlpha('hiNotes8', 7, 1, 1, 'linear');
    end

    if curBeat == 380 then
        doTweenAlpha('byeHUD1','timeBar',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD2','songIcon',1,crochet*0.005,'circOut')
        doTweenAlpha('byeHUD3','timeTxt',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD4','healthBar',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD5','healthBarAround',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD6','iconP1',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD7','iconP2',0,crochet*0.005,'linear')
        doTweenAlpha('byeHUD8','scoreTxt',0,crochet*0.005,'linear')
    end

    if curBeat == 388 then
        noteTweenAlpha('byeNotes1', 0, 0, 1, 'linear');
        noteTweenAlpha('byeNotes2', 1, 0, 1, 'linear');
        noteTweenAlpha('byeNotes3', 2, 0, 1, 'linear');
        noteTweenAlpha('byeNotes4', 3, 0, 1, 'linear');
        noteTweenAlpha('byeNotes5', 4, 0, 1, 'linear');
        noteTweenAlpha('byeNotes6', 5, 0, 1, 'linear');
        noteTweenAlpha('byeNotes7', 6, 0, 1, 'linear');
        noteTweenAlpha('byeNotes8', 7, 0, 1, 'linear');
    end
end

function onStepHit()
    function opponentNoteHit()
        if curStep >= 192 and curStep < 259 or curStep >= 335 and curStep < 387 then
        triggerEvent('Screen Shake', '0.1, 0.004,', '0.1, 0.003')
        end
    end
    if curStep == 1439 or curStep == 1504 or curStep == 1535 or curStep == 1544 then
        noteTweenX('NoteX1', 0, 750, 0.5, 'cubeOut')
        noteTweenX('NoteX2', 1, 860, 0.5, 'cubeOut')
        noteTweenX('NoteX3', 2, 970, 0.5, 'cubeOut')
        noteTweenX('NoteX4', 3, 1080, 0.5, 'cubeOut')
        noteTweenX('NoteX5', 4, 100, 0.5, 'cubeOut')
        noteTweenX('NoteX6', 5, 210, 0.5, 'cubeOut')
        noteTweenX('NoteX7', 6, 320, 0.5, 'cubeOut')
        noteTweenX('NoteX8', 7, 430, 0.5, 'cubeOut')
    end

    if curStep == 1447 or curStep == 1511 or curStep == 1540 or curStep == 1547 then
        noteTweenX('NoteX1', 0, 100, 0.5, 'cubeOut')
        noteTweenX('NoteX2', 1, 210, 0.5, 'cubeOut')
        noteTweenX('NoteX3', 2, 320 ,0.5, 'cubeOut')
        noteTweenX('NoteX4', 3, 430, 0.5, 'cubeOut')
        noteTweenX('NoteX5', 4, 750, 0.5, 'cubeOut')
        noteTweenX('NoteX6', 5, 860, 0.5, 'cubeOut')
        noteTweenX('NoteX7', 6, 970, 0.5, 'cubeOut')
        noteTweenX('NoteX8', 7, 1080, 0.5, 'cubeOut')
    end

    if curStep == 1551 then
        noteTweenX('xMove1', 0, 415, 1.5, 'cubeOut');
        noteTweenX('xMove2', 1, 525, 1.5, 'cubeOut');
        noteTweenX('xMove3', 2, 635, 1.5, 'cubeOut');
        noteTweenX('xMove4', 3, 745, 1.5, 'cubeOut');
        noteTweenX('xMove5', 4, 415, 1.5, 'cubeOut');
        noteTweenX('xMove6', 5, 525, 1.5, 'cubeOut');
        noteTweenX('xMove7', 6, 635, 1.5, 'cubeOut');
        noteTweenX('xMove8', 7, 745, 1.5, 'cubeOut');
    end
if curStep == 1556 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,5)
end
end