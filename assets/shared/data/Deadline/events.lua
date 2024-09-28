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
    setProperty('iconP1.y', 900)
    setProperty('iconP2.y', 900)
    setProperty('scoreTxt.y', 900)

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
    noteTweenX('noteX1', 0, -1000, 0.1, 'backInOut');
    noteTweenX('noteX2', 1, -1000, 0.1, 'backInOut');
    noteTweenX('noteX3', 2, -1000, 0.1, 'backInOut');
    noteTweenX('noteX4', 3, -1000, 0.1, 'backInOut');
    noteTweenY('noteY5', 4, -1000, 0.1, 'backInOut');
    noteTweenY('noteY6', 5, -1000, 0.1, 'backInOut');
    noteTweenY('noteY7', 6, -1000, 0.1, 'backInOut');
    noteTweenY('noteY8', 7, -1000, 0.1, 'backInOut');
    noteTweenAlpha('alphaNotes1', 0, 0, 0.6, 'linear');
    noteTweenAlpha('alphaNotes2', 1, 0, 0.6, 'linear');
    noteTweenAlpha('alphaNotes3', 2, 0, 0.6, 'linear');
    noteTweenAlpha('alphaNotes4', 3, 0, 0.6, 'linear');
    if downscroll then
        noteTweenY('noteY5', 4, 1000, 0.1, 'backInOut');
        noteTweenY('noteY6', 5, 1000, 0.1, 'backInOut');
        noteTweenY('noteY7', 6, 1000, 0.1, 'backInOut');
        noteTweenY('noteY8', 7, 1000, 0.1, 'backInOut');
    end
end

function onBeatHit()
    if curBeat == 340 then
    function onUpdatePost()
        setProperty('camHUD.y', math.sin((getSongPosition() / 200) * (curBpm / 35) * 1.0) * 0.6);
        setProperty('camHUD.angle', math.sin((getSongPosition() / 250) * (curBpm / 65) * -1.0) * 0.6);
        setProperty('camGame.y', math.sin((getSongPosition() / 100) * (curBpm / 35) * 1.0) * 0.4);
        setProperty('camGame.angle', math.sin((getSongPosition() / 150) * (curBpm / 65) * -1.0) * 0.4);
            end
        end
    if curBeat == 4 then
    noteTweenY('noteY1', 0, 150, 5, 'backInOut');
    noteTweenY('noteY2', 1, 150, 5, 'backInOut');
    noteTweenY('noteY3', 2, 150, 5, 'backInOut');
    noteTweenY('noteY4', 3, 150, 5, 'backInOut');
    noteTweenY('noteY5', 4, 150, 5, 'backInOut');
    noteTweenY('noteY6', 5, 150, 5, 'backInOut');
    noteTweenY('noteY7', 6, 150, 5, 'backInOut');
    noteTweenY('noteY8', 7, 150, 5, 'backInOut');
    if downscroll then
        noteTweenY('noteY1', 0, 470, 5, 'backInOut');
        noteTweenY('noteY2', 1, 470, 5, 'backInOut');
        noteTweenY('noteY3', 2, 470, 5, 'backInOut');
        noteTweenY('noteY4', 3, 470, 5, 'backInOut');
        noteTweenY('noteY5', 4, 470, 5, 'backInOut');
        noteTweenY('noteY6', 5, 470, 5, 'backInOut');
        noteTweenY('noteY7', 6, 470, 5, 'backInOut');
        noteTweenY('noteY8', 7, 470, 5, 'backInOut');
    end
    end

    if curBeat == 40 or curBeat == 304 then
        noteTweenY('hiNotes1', 0, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes2', 1, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes3', 2, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes4', 3, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes5', 4, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes6', 5, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes7', 6, 50, 1.75, 'sineInOut');
        noteTweenY('hiNotes8', 7, 50, 1.75, 'sineInOut');
        noteTweenX('NoteX0', 0, 100, 1.75, 'sineInOut')
        noteTweenX('NoteX1', 1, 210, 1.75, 'sineInOut')
        noteTweenX('NoteX2', 2, 320 ,1.75, 'sineInOut')
        noteTweenX('NoteX3', 3, 430, 1.75, 'sineInOut')
        noteTweenAlpha('alphaNotes1', 0, 1, 0.1, 'linear');
        noteTweenAlpha('alphaNotes2', 1, 1, 0.1, 'linear');
        noteTweenAlpha('alphaNotes3', 2, 1, 0.1, 'linear');
        noteTweenAlpha('alphaNotes4', 3, 1, 0.1, 'linear');
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

    if curBeat == 200 then
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

    if curBeat == 264 then
        noteTweenY('noteY1', 0, 200, 1, 'cubeOut');
        noteTweenY('noteY2', 1, 200, 1, 'cubeOut');
        noteTweenY('noteY3', 2, 200, 1, 'cubeOut');
        noteTweenY('noteY4', 3, 200, 1, 'cubeOut');
        noteTweenY('noteY5', 4, 200, 1, 'cubeOut');
        noteTweenY('noteY6', 5, 200, 1, 'cubeOut');
        noteTweenY('noteY7', 6, 200, 1, 'cubeOut');
        noteTweenY('noteY8', 7, 200, 1, 'cubeOut');
        noteTweenAlpha('alphaNotes1', 0, 0, 0.4, 'linear');
        noteTweenAlpha('alphaNotes2', 1, 0, 0.4, 'linear');
        noteTweenAlpha('alphaNotes3', 2, 0, 0.4, 'linear');
        noteTweenAlpha('alphaNotes4', 3, 0, 0.4, 'linear');
        noteTweenAlpha('alphaNotes5', 4, 0, 0.4, 'linear');
        noteTweenAlpha('alphaNotes6', 5, 0, 0.4, 'linear');
        noteTweenAlpha('alphaNotes7', 6, 0, 0.4, 'linear');
        noteTweenAlpha('alphaNotes8', 7, 0, 0.4, 'linear');
        doTweenY('hiHUD1','healthBar',900,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',900,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD3','iconP1',900,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD4','iconP2',900,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',900,crochet*0.0099,'cubeInOut')
        doTweenAlpha('hiHUD6', 'timeBar',0,crochet*0.0099,'linear')
        doTweenAlpha('hiHUD7', 'songIcon',0,crochet*0.0099,'linear')
        doTweenAlpha('hiHUD8', 'timeTxt',0,crochet*0.0099,'linear')
        if downscroll then
            noteTweenY('noteY1', 0, 420, 1, 'cubeOut');
            noteTweenY('noteY2', 1, 420, 1, 'cubeOut');
            noteTweenY('noteY3', 2, 420, 1, 'cubeOut');
            noteTweenY('noteY4', 3, 420, 1, 'cubeOut');
            noteTweenY('noteY5', 4, 420, 1, 'cubeOut');
            noteTweenY('noteY6', 5, 420, 1, 'cubeOut');
            noteTweenY('noteY7', 6, 420, 1, 'cubeOut');
            noteTweenY('noteY8', 7, 420, 1, 'cubeOut');
            doTweenY('hiHUD1','healthBar',-300,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',-300,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD3','iconP1',-300,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD4','iconP2',-300,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',-300,crochet*0.0099,'cubeInOut')
        end
    end
    if curBeat == 280 then
        noteTweenY('noteY1', 0, 150, 1, 'cubeOut');
        noteTweenY('noteY2', 1, 150, 1, 'cubeOut');
        noteTweenY('noteY3', 2, 150, 1, 'cubeOut');
        noteTweenY('noteY4', 3, 150, 1, 'cubeOut');
        noteTweenY('noteY5', 4, 150, 1, 'cubeOut');
        noteTweenY('noteY6', 5, 150, 1, 'cubeOut');
        noteTweenY('noteY7', 6, 150, 1, 'cubeOut');
        noteTweenY('noteY8', 7, 150, 1, 'cubeOut');
        noteTweenAlpha('alphaNotes1', 0, 1, 0.4, 'linear');
        noteTweenAlpha('alphaNotes2', 1, 1, 0.4, 'linear');
        noteTweenAlpha('alphaNotes3', 2, 1, 0.4, 'linear');
        noteTweenAlpha('alphaNotes4', 3, 1, 0.4, 'linear');
        noteTweenAlpha('alphaNotes5', 4, 1, 0.4, 'linear');
        noteTweenAlpha('alphaNotes6', 5, 1, 0.4, 'linear');
        noteTweenAlpha('alphaNotes7', 6, 1, 0.4, 'linear');
        noteTweenAlpha('alphaNotes8', 7, 1, 0.4, 'linear');
        if downscroll then
            noteTweenY('noteY1', 0, 470, 1, 'cubeOut');
            noteTweenY('noteY2', 1, 470, 1, 'cubeOut');
            noteTweenY('noteY3', 2, 470, 1, 'cubeOut');
            noteTweenY('noteY4', 3, 470, 1, 'cubeOut');
            noteTweenY('noteY5', 4, 470, 1, 'cubeOut');
            noteTweenY('noteY6', 5, 470, 1, 'cubeOut');
            noteTweenY('noteY7', 6, 470, 1, 'cubeOut');
            noteTweenY('noteY8', 7, 470, 1, 'cubeOut');
        end
    end
    if curBeat == 332 then
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
    if curBeat == 338 then
        noteTweenAlpha('alphaNotes1', 0, 1, 0.4, 'linear');
        noteTweenAlpha('alphaNotes2', 1, 1, 0.4, 'linear');
        noteTweenAlpha('alphaNotes3', 2, 1, 0.4, 'linear');
        noteTweenAlpha('alphaNotes4', 3, 1, 0.4, 'linear');
        noteTweenAlpha('alphaNotes5', 4, 1, 0.4, 'linear');
        noteTweenAlpha('alphaNotes6', 5, 1, 0.4, 'linear');
        noteTweenAlpha('alphaNotes7', 6, 1, 0.4, 'linear');
        noteTweenAlpha('alphaNotes8', 7, 1, 0.4, 'linear');
        noteTweenX('noteX1', 0, -1000, 0.4, 'backInOut');
        noteTweenX('noteX2', 1, -1000, 0.4, 'backInOut');
        noteTweenX('noteX3', 2, -1000, 0.4, 'backInOut');
        noteTweenX('noteX4', 3, -1000, 0.4, 'backInOut');
        noteTweenX('noteX5', 4, 2000, 0.4, 'backInOut');
        noteTweenX('noteX6', 5, 2000, 0.4, 'backInOut');
        noteTweenX('noteX7', 6, 2000, 0.4, 'backInOut');
        noteTweenX('noteX8', 7, 2000, 0.4, 'backInOut');
    end

    if curBeat == 433 then
        doTweenY('johnnydope', 'dad', 1000, 2, 'sineInOut')
        doTweenY('bf', 'boyfriend', 1000, 2, 'sineInOut')
        noteTweenAlpha('alphaNotes1', 0, 0, 0.4, 'linear');
        noteTweenAlpha('alphaNotes2', 1, 0, 0.4, 'linear');
        noteTweenAlpha('alphaNotes3', 2, 0, 0.4, 'linear');
        noteTweenAlpha('alphaNotes4', 3, 0, 0.4, 'linear');
        noteTweenAlpha('alphaNotes5', 4, 0, 0.4, 'linear');
        noteTweenAlpha('alphaNotes6', 5, 0, 0.4, 'linear');
        noteTweenAlpha('alphaNotes7', 6, 0, 0.4, 'linear');
        noteTweenAlpha('alphaNotes8', 7, 0, 0.4, 'linear');
    end 
end

function onStepHit()
    function opponentNoteHit()
        if curStep >= 1230 and curStep < 1235 or curStep >= 1238 and curStep < 1239 or curStep >= 1242 and curStep < 1248 then
        triggerEvent('Screen Shake', '0.1, 0.004,', '0.1, 0.003')
    end
    if curStep >= 1327 and curStep < 1360 then
        triggerEvent('Screen Shake', '0.1, 0.004,', '0.1, 0.003')
    end
    if curStep >= 1407 then
        triggerEvent('Screen Shake', '0.1, 0.004,', '0.1, 0.003')
    end
end
if curStep == 1375 then
        noteTweenX('noteX5', 4, 650, 1, 'backInOut')
end
if curStep == 1385 then
    noteTweenX('noteX6', 5, 760, 1, 'backInOut')
end
if curStep == 1395 then
    noteTweenX('noteX7', 6, 870, 1, 'backInOut')
end
if curStep == 1405 then
    noteTweenX('noteX8', 7, 980, 1, 'backInOut')
end
end