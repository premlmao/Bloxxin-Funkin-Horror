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

function onCountdownTick()
    noteTweenY('noteY1', 0, 150, 1, 'cubeOut')
    noteTweenY('noteY2', 1, 150, 1, 'cubeOut')
    noteTweenY('noteY3', 2, 150, 1, 'cubeOut')
    noteTweenY('noteY4', 3, 150, 1, 'cubeOut')
    noteTweenY('noteY5', 4, 150, 1, 'cubeOut')
    noteTweenY('noteY6', 5, 150, 1, 'cubeOut')
    noteTweenY('noteY7', 6, 150, 1, 'cubeOut')
    noteTweenY('noteY8', 7, 150, 1, 'cubeOut')
    if downscroll then
        noteTweenY('noteY1', 0, 470, 1, 'cubeOut')
        noteTweenY('noteY2', 1, 470, 1, 'cubeOut')
        noteTweenY('noteY3', 2, 470, 1, 'cubeOut')
        noteTweenY('noteY4', 3, 470, 1, 'cubeOut')
        noteTweenY('noteY5', 4, 470, 1, 'cubeOut')
        noteTweenY('noteY6', 5, 470, 1, 'cubeOut')
        noteTweenY('noteY7', 6, 470, 1, 'cubeOut')
        noteTweenY('noteY8', 7, 470, 1, 'cubeOut')
    end
end

function onBeatHit()
    if curBeat == 60 then
        noteTweenY('noteY1', 0, 50, 1, 'cubeOut')
        noteTweenY('noteY2', 1, 50, 1, 'cubeOut')
        noteTweenY('noteY3', 2, 50, 1, 'cubeOut')
        noteTweenY('noteY4', 3, 50, 1, 'cubeOut')
        noteTweenY('noteY5', 4, 50, 1, 'cubeOut')
        noteTweenY('noteY6', 5, 50, 1, 'cubeOut')
        noteTweenY('noteY7', 6, 50, 1, 'cubeOut')
        noteTweenY('noteY8', 7, 50, 1, 'cubeOut')
        setHealth(50/50)
        doTweenY('hiHUD1','healthBar',641,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.0075,'cubeInOut')
        if downscroll then
        noteTweenY('noteY1', 0, 570, 1, 'cubeOut')
        noteTweenY('noteY2', 1, 570, 1, 'cubeOut')
        noteTweenY('noteY3', 2, 570, 1, 'cubeOut')
        noteTweenY('noteY4', 3, 570, 1, 'cubeOut')
        noteTweenY('noteY5', 4, 570, 1, 'cubeOut')
        noteTweenY('noteY6', 5, 570, 1, 'cubeOut')
        noteTweenY('noteY7', 6, 570, 1, 'cubeOut')
        noteTweenY('noteY8', 7, 570, 1, 'cubeOut')
        doTweenY('hiHUD1','healthBar',79,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',67,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD3','iconP1',4,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD4','iconP2',4,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',129,crochet*0.0075,'cubeInOut')
        end
    end
    if curBeat == 192 then
        doTweenAlpha('byeHUD', 'camHUD', 0, 1, 'linear')
    end
    if curBeat == 222 then
        doTweenAlpha('byeHUD', 'camHUD', 1, 1, 'linear')
    end
    if curBeat == 352 then
        noteTweenY('noteY1', 0, 150, 1, 'cubeOut')
        noteTweenY('noteY2', 1, 150, 1, 'cubeOut')
        noteTweenY('noteY3', 2, 150, 1, 'cubeOut')
        noteTweenY('noteY4', 3, 150, 1, 'cubeOut')
        noteTweenY('noteY5', 4, 150, 1, 'cubeOut')
        noteTweenY('noteY6', 5, 150, 1, 'cubeOut')
        noteTweenY('noteY7', 6, 150, 1, 'cubeOut')
        noteTweenY('noteY8', 7, 150, 1, 'cubeOut')
        doTweenY('hiHUD1','healthBar',900,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',900,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD3','iconP1',900,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD4','iconP2',900,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',900,crochet*0.0075,'cubeInOut')
        if downscroll then
            noteTweenY('noteY1', 0, 470, 1, 'cubeOut')
            noteTweenY('noteY2', 1, 470, 1, 'cubeOut')
            noteTweenY('noteY3', 2, 470, 1, 'cubeOut')
            noteTweenY('noteY4', 3, 470, 1, 'cubeOut')
            noteTweenY('noteY5', 4, 470, 1, 'cubeOut')
            noteTweenY('noteY6', 5, 470, 1, 'cubeOut')
            noteTweenY('noteY7', 6, 470, 1, 'cubeOut')
            noteTweenY('noteY8', 7, 470, 1, 'cubeOut')
            doTweenY('hiHUD1','healthBar',-300,crochet*0.0075,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',-300,crochet*0.0075,'cubeInOut')
            doTweenY('hiHUD3','iconP1',-300,crochet*0.0075,'cubeInOut')
            doTweenY('hiHUD4','iconP2',-300,crochet*0.0075,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',-300,crochet*0.0075,'cubeInOut')
        end
    end
end

function onUpdatePost()
    setProperty('camHUD.y', math.sin((getSongPosition() / 200) * (curBpm / 35) * 1.0) * 0.6);
    setProperty('camHUD.angle', math.sin((getSongPosition() / 250) * (curBpm / 65) * -1.0) * 0.6);
    doTweenAlpha('bye1', 'songIcon', 0, 0.1, 'linear')
    doTweenAlpha('bye2', 'timeTxt', 0, 0.1, 'linear')
    if curSection >= 15 or curSection >= 55 then
        doTweenAlpha('bye1', 'songIcon', 1, 1, 'linear')
        doTweenAlpha('bye2', 'timeTxt', 1, 1, 'linear')
    end
    if curSection >= 48 then
        doTweenAlpha('bye1', 'songIcon', 0, 0.1, 'linear')
        doTweenAlpha('bye2', 'timeTxt', 0, 0.1, 'linear')
    end
    if curSection >= 88 then
        doTweenAlpha('bye1', 'songIcon', 0, 1, 'linear')
        doTweenAlpha('bye2', 'timeTxt', 0, 1, 'linear')
    end
end