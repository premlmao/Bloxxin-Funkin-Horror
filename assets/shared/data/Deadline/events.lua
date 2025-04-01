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
end
end

function onSongStart()
    for i = 0,3 do
        noteTweenX('noteX'..i, i, -1000, 0.1, 'backInOut');
        noteTweenAlpha('alphaNotes'..i, i, 0, 0.6, 'linear');
    end
    for i = 4,7 do
        noteTweenY('noteY'..i, i, -1000, 0.1, 'backInOut');
    end
    if downscroll then
        for i = 4,7 do
            noteTweenY('noteY'..i, i, 1000, 0.1, 'backInOut');
        end
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
        for i = 0,7 do
            noteTweenY('noteY'..i, i, 150, 5, 'backInOut');
        end
    if downscroll then
        for i = 0,7 do
            noteTweenY('noteY'..i, i, 470, 5, 'backInOut');
        end
    end
    end

    if curBeat == 40 or curBeat == 304 then
        for i = 0,7 do
            noteTweenY('noteY'..i, i, 50, 1.75, 'sineInOut');
        end
        for i = 0,3 do
            noteTweenX('noteX'..i, i, 100*i+110, 1.75, 'sineInOut')
            noteTweenAlpha('alphaNotes'..i, i, 1, 0.1, 'linear')
        end
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
        for i = 0,7 do
            noteTweenY('noteY'..i, i, 570, 1.75, 'sineInOut');
        end
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
        for i = 0,7 do
            noteTweenY('noteY'..i, i, 200, 1, 'cubeOut')
            noteTweenAlpha('alphaNotes'..i, i, 0, 0.4, 'linear')
        end
        doTweenY('hiHUD1','healthBar',900,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',900,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD3','iconP1',900,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD4','iconP2',900,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',900,crochet*0.0099,'cubeInOut')
        doTweenAlpha('hiHUD6', 'timeBar',0,crochet*0.0099,'linear')
        doTweenAlpha('hiHUD7', 'songIcon',0,crochet*0.0099,'linear')
        doTweenAlpha('hiHUD8', 'timeTxt',0,crochet*0.0099,'linear')
        if downscroll then
            for i = 0,7 do
                noteTweenY('noteY'..i, i, 420, 1, 'cubeOut')
            end
            doTweenY('hiHUD1','healthBar',-300,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',-300,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD3','iconP1',-300,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD4','iconP2',-300,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',-300,crochet*0.0099,'cubeInOut')
        end
    end
    if curBeat == 280 then
        for i = 0,7 do
            noteTweenY('noteY'..i, i, 150, 1, 'cubeOut')
            noteTweenAlpha('alphaNotes'..i, i, 1, 0.4, 'linear')
        end
        if downscroll then
            for i = 0,7 do
                noteTweenY('noteY'..i, i, 470, 1, 'cubeOut')
            end
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
        for i = 0,3 do
            noteTweenX('noteX'..i, i, -1000, 0.4, 'backInOut')
            noteTweenAlpha('alphaNotes'..i, i, 1, 0.4, 'linear')
        end
        for i in 4,7 do
            noteTweenY('noteY'..i, i, -1000, 0.4, 'backInOut')
            noteTweenAngle('noteAngle'..i, i, 360, 1, 'cubeOut')
        end
        if downscroll then
            for i in 4,7 do
                noteTweenY('noteY'..i, i, 1000, 0.4, 'backInOut')
            end
        end
    end

    if curBeat == 341 then
        doTweenY('johnnydope', 'dad', -2000, 0.5, 'sineInOut')
        doTweenY('boyfriend', 'boyfriend', -2000, 0.5, 'sineInOut')
    end

    if curBeat == 346 then
        doTweenY('johnnydope', 'dad', 320, 2, 'cubeOut')
        doTweenY('boyfriend', 'boyfriend', 320, 2, 'cubeOut')
    end

    if curBeat == 433 then
        doTweenY('johnnydope', 'dad', 1000, 2, 'sineInOut')
        doTweenY('boyfriend', 'boyfriend', 1000, 2, 'sineInOut')
        for i = 0,7 do
            noteTweenAlpha('alphaNotes'..i, i, 0, 0.4, 'linear')
        end
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
if curStep == 1391 then
    noteTweenY('noteY5', 4, 50, 1, 'cubeInOut')
    noteTweenX('noteX5', 4, 650, 0.2, 'cubeInOut')
    if downscroll then
        noteTweenY('noteY5', 4, 570, 1, 'cubeInOut');
    end
end
if curStep == 1393 then
    noteTweenAngle('noteAngle5', 4, 0, 1.5, 'cubeOut')
end
if curStep == 1394 then
    noteTweenY('noteY6', 5, 50, 1, 'cubeInOut')
    noteTweenX('noteX6', 5, 760, 0.2, 'cubeInOut')
    if downscroll then
        noteTweenY('noteY6', 5, 570, 1, 'cubeInOut');
    end
end
if curStep == 1396 then
    noteTweenAngle('noteAngle6', 5, 0, 1.5, 'cubeOut')
end
if curStep == 1397 then
    noteTweenY('noteY7', 6, 50, 1, 'cubeInOut')
    noteTweenX('noteX7', 6, 870, 1, 'backInOut')
    if downscroll then
        noteTweenY('noteY7', 6, 570, 1, 'cubeInOut');
    end
end
if curStep == 1399 then
    noteTweenAngle('noteAngle7', 6, 0, 1.5, 'cubeOut')
end
if curStep == 1400 then
    noteTweenY('noteY8', 7, 50, 1, 'cubeInOut')
    noteTweenX('noteX8', 7, 980, 1, 'backInOut')
    if downscroll then
        noteTweenY('noteY8', 7, 570, 1, 'cubeInOut');
    end
end
if curStep == 1402 then
    noteTweenAngle('noteAngle8', 7, 0, 1.5, 'cubeOut')
end
end