function onCreate()
makeLuaSprite('black',nil,0,0)
makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
setObjectCamera('black', 'game')
setProperty('black.alpha', 0)
screenCenter('black')
addLuaSprite('black',true)
setProperty('camHUD.alpha', 1)
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

function onUpdatePost()
    doTweenAlpha('songIcon', 'songIcon', 0, 0.1)
    doTweenAlpha('timeTxt', 'timeTxt', 0, 0.1)
    if curSection >= 33 or curSection >= 61 or curSection >= 101 then
        doTweenAlpha('hiHUD7', 'songIcon',1,crochet*0.005,'linear')
        doTweenAlpha('hiHUD8', 'timeTxt',1,crochet*0.005,'linear')
    end
    if curSection >= 50 or curSection >= 100 then
        doTweenAlpha('hiHUD7', 'songIcon',0,crochet*0.005,'linear')
        doTweenAlpha('hiHUD8', 'timeTxt',0,crochet*0.005,'linear')
    end
end

function onSongStart()
    noteTweenX('noteX1', 0, -100, 0.2, 'linear')
    noteTweenX('noteX2', 1, 0, 0.2, 'linear')
    noteTweenX('noteX3', 2, 100, 0.2, 'linear')
    noteTweenX('noteX4', 3, 200, 0.2, 'linear')
    noteTweenX('noteX5', 4, 860, 0.2, 'linear')
    noteTweenX('noteX6', 5, 970, 0.2, 'linear')
    noteTweenX('noteX7', 6, 1080, 0.2, 'linear')
    noteTweenX('noteX8', 7, 1190, 0.2, 'linear')
    noteTweenY('noteY1', 0, 150, 0.2, 'linear')
    noteTweenY('noteY2', 1, 150, 0.2, 'linear')
    noteTweenY('noteY3', 2, 150, 0.2, 'linear')
    noteTweenY('noteY4', 3, 150, 0.2, 'linear')
    noteTweenY('noteY5', 4, 150, 0.2, 'linear')
    noteTweenY('noteY6', 5, 150, 0.2, 'linear')
    noteTweenY('noteY7', 6, 150, 0.2, 'linear')
    noteTweenY('noteY8', 7, 150, 0.2, 'linear')
    noteTweenAlpha('noteAlpha1', 0, 0, 0.2, 'linear')
    noteTweenAlpha('noteAlpha2', 1, 0, 0.2, 'linear')
    noteTweenAlpha('noteAlpha3', 2, 0, 0.2, 'linear')
    noteTweenAlpha('noteAlpha4', 3, 0, 0.2, 'linear')
    noteTweenAlpha('noteAlpha5', 4, 0, 0.2, 'linear')
    noteTweenAlpha('noteAlpha6', 5, 0, 0.2, 'linear')
    noteTweenAlpha('noteAlpha7', 6, 0, 0.2, 'linear')
    noteTweenAlpha('noteAlpha8', 7, 0, 0.2, 'linear')
    if downscroll then
        noteTweenY('noteY1', 0, 470, 0.2, 'linear')
        noteTweenY('noteY2', 1, 470, 0.2, 'linear')
        noteTweenY('noteY3', 2, 470, 0.2, 'linear')
        noteTweenY('noteY4', 3, 470, 0.2, 'linear')
        noteTweenY('noteY5', 4, 470, 0.2, 'linear')
        noteTweenY('noteY6', 5, 470, 0.2, 'linear')
        noteTweenY('noteY7', 6, 470, 0.2, 'linear')
        noteTweenY('noteY8', 7, 470, 0.2, 'linear')
    end
end

function onBeatHit()
    if curBeat == 16 then
        noteTweenX('noteX4', 3, 430, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha4', 3, 1, 1, 'cubeOut')
        noteTweenX('noteX5', 4, 750, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha5', 4, 1, 1, 'cubeOut')
    end
    if curBeat == 20 then
        noteTweenX('noteX3', 2, 320, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha3', 2, 1, 1, 'cubeOut')
        noteTweenX('noteX6', 5, 860, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha6', 5, 1, 1, 'cubeOut')
    end
    if curBeat == 24 then
        noteTweenX('noteX2', 1, 210, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha2', 1, 1, 1, 'cubeOut')
        noteTweenX('noteX7', 6, 970, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha7', 6, 1, 1, 'cubeOut')
    end
    if curBeat == 28 then
        noteTweenX('noteX1', 0, 100, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha1', 0, 1, 1, 'cubeOut')
        noteTweenX('noteX8', 7, 1080, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha8', 7, 1, 1, 'cubeOut')
    end

    if curBeat == 132 then
        noteTweenY('noteY1', 0, 50, 2, 'cubeOut')
        noteTweenY('noteY2', 1, 50, 2, 'cubeOut')
        noteTweenY('noteY3', 2, 50, 2, 'cubeOut')
        noteTweenY('noteY4', 3, 50, 2, 'cubeOut')
        noteTweenY('noteY5', 4, 50, 2, 'cubeOut')
        noteTweenY('noteY6', 5, 50, 2, 'cubeOut')
        noteTweenY('noteY7', 6, 50, 2, 'cubeOut')
        noteTweenY('noteY8', 7, 50, 2, 'cubeOut')
        doTweenY('hiHUD1','healthBar',648,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
        if downscroll then
            noteTweenY('noteY1', 0, 570, 2, 'cubeOut')
            noteTweenY('noteY2', 1, 570, 2, 'cubeOut')
            noteTweenY('noteY3', 2, 570, 2, 'cubeOut')
            noteTweenY('noteY4', 3, 570, 2, 'cubeOut')
            noteTweenY('noteY5', 4, 570, 2, 'cubeOut')
            noteTweenY('noteY6', 5, 570, 2, 'cubeOut')
            noteTweenY('noteY7', 6, 570, 2, 'cubeOut')
            noteTweenY('noteY8', 7, 570, 2, 'cubeOut')
            doTweenY('hiHUD1','healthBar',79,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',67,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD3','iconP1',4,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD4','iconP2',4,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',129,crochet*0.005,'cubeInOut')
        end
    end
    if curBeat == 200 then
        noteTweenY('noteY1', 0, 150, 2, 'cubeOut')
        noteTweenY('noteY2', 1, 150, 2, 'cubeOut')
        noteTweenY('noteY3', 2, 150, 2, 'cubeOut')
        noteTweenY('noteY4', 3, 150, 2, 'cubeOut')
        noteTweenY('noteY5', 4, 150, 2, 'cubeOut')
        noteTweenY('noteY6', 5, 150, 2, 'cubeOut')
        noteTweenY('noteY7', 6, 150, 2, 'cubeOut')
        noteTweenY('noteY8', 7, 150, 2, 'cubeOut')
        noteTweenAlpha('noteAlpha1', 0, 0, 2, 'cubeOut')
        noteTweenAlpha('noteAlpha2', 1, 0, 2, 'cubeOut')
        noteTweenAlpha('noteAlpha3', 2, 0, 2, 'cubeOut')
        noteTweenAlpha('noteAlpha4', 3, 0, 2, 'cubeOut')
        noteTweenAlpha('noteAlpha5', 4, 0, 2, 'cubeOut')
        noteTweenAlpha('noteAlpha6', 5, 0, 2, 'cubeOut')
        noteTweenAlpha('noteAlpha8', 7, 0, 2, 'cubeOut')
        doTweenY('hiHUD1','healthBar',900,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',900,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD3','iconP1',900,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD4','iconP2',900,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',900,crochet*0.005,'cubeInOut')
        if downscroll then
            noteTweenY('noteY1', 0, 470, 2, 'cubeOut')
            noteTweenY('noteY2', 1, 470, 2, 'cubeOut')
            noteTweenY('noteY3', 2, 470, 2, 'cubeOut')
            noteTweenY('noteY4', 3, 470, 2, 'cubeOut')
            noteTweenY('noteY5', 4, 470, 2, 'cubeOut')
            noteTweenY('noteY6', 5, 470, 2, 'cubeOut')
            noteTweenY('noteY7', 6, 470, 2, 'cubeOut')
            noteTweenY('noteY8', 7, 470, 2, 'cubeOut')
            doTweenY('hiHUD1','healthBar',-300,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',-300,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD3','iconP1',-300,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD4','iconP2',-300,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',-300,crochet*0.005,'cubeInOut')
        end
    end
    if curBeat == 204 then
        noteTweenAlpha('noteAlpha7', 6, 0, 4, 'linear')
    end

    if curBeat == 320 then
        noteTweenAlpha('noteAlpha1', 0, 0, 2, 'cubeOut')
        noteTweenAlpha('noteAlpha2', 1, 0, 2, 'cubeOut')
        noteTweenAlpha('noteAlpha3', 2, 0, 2, 'cubeOut')
        noteTweenAlpha('noteAlpha4', 3, 0, 2, 'cubeOut')
        noteTweenAlpha('noteAlpha5', 4, 0, 2, 'cubeOut')
        noteTweenAlpha('noteAlpha6', 5, 0, 2, 'cubeOut')
        noteTweenAlpha('noteAlpha7', 6, 0, 2, 'cubeOut')
        noteTweenAlpha('noteAlpha8', 7, 0, 2, 'cubeOut')
    end

    if curBeat == 328 then
        noteTweenY('noteY1', 0, 50, 2, 'cubeOut')
        noteTweenY('noteY2', 1, 50, 2, 'cubeOut')
        noteTweenY('noteY3', 2, 50, 2, 'cubeOut')
        noteTweenY('noteY4', 3, 50, 2, 'cubeOut')
        noteTweenY('noteY5', 4, 50, 2, 'cubeOut')
        noteTweenY('noteY6', 5, 50, 2, 'cubeOut')
        noteTweenY('noteY7', 6, 50, 2, 'cubeOut')
        noteTweenY('noteY8', 7, 50, 2, 'cubeOut')
        if downscroll then
            noteTweenY('noteY1', 0, 570, 2, 'cubeOut')
            noteTweenY('noteY2', 1, 570, 2, 'cubeOut')
            noteTweenY('noteY3', 2, 570, 2, 'cubeOut')
            noteTweenY('noteY4', 3, 570, 2, 'cubeOut')
            noteTweenY('noteY5', 4, 570, 2, 'cubeOut')
            noteTweenY('noteY6', 5, 570, 2, 'cubeOut')
            noteTweenY('noteY7', 6, 570, 2, 'cubeOut')
            noteTweenY('noteY8', 7, 570, 2, 'cubeOut')
        end
    end
    
    if curBeat == 330 then
        noteTweenAlpha('noteAlpha1', 0, 1, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha2', 1, 1, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha3', 2, 1, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha4', 3, 1, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha5', 4, 1, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha6', 5, 1, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha7', 6, 1, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha8', 7, 1, 1, 'cubeOut')
        doTweenY('hiHUD1','healthBar',648,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
        if downscroll then
            doTweenY('hiHUD1','healthBar',79,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',67,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD3','iconP1',4,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD4','iconP2',4,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',129,crochet*0.005,'cubeInOut')
        end
    end

    if curBeat == 396 then
        noteTweenAlpha('noteAlpha1', 0, 0, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha2', 1, 0, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha3', 2, 0, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha4', 3, 0, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha5', 4, 0, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha6', 5, 0, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha7', 6, 0, 1, 'cubeOut')
        noteTweenAlpha('noteAlpha8', 7, 0, 1, 'cubeOut')
        doTweenAlpha('hiHUD1','healthBar',0,crochet*0.005,'cubeInOut')
        doTweenAlpha('hiHUD2','healthBarAround',0,crochet*0.005,'cubeInOut')
        doTweenAlpha('hiHUD3','iconP1',0,crochet*0.005,'cubeInOut')
        doTweenAlpha('hiHUD4','iconP2',0,crochet*0.005,'cubeInOut')
        doTweenAlpha('hiHUD5','scoreTxt',0,crochet*0.005,'cubeInOut')
    end

    if curBeat == 402 then
        noteTweenAlpha('noteAlpha5', 4, 1, 1.5, 'cubeOut')
        noteTweenAlpha('noteAlpha6', 5, 1, 1.5, 'cubeOut')
        noteTweenAlpha('noteAlpha7', 6, 1, 1.5, 'cubeOut')
        noteTweenAlpha('noteAlpha8', 7, 1, 1.5, 'cubeOut')
    end

    if curBeat == 436 then
        doTweenAlpha('camHUD', 'camHUD', 0, crochet*0.005, 'cubeOut')
    end
end

function opponentNoteHit()
    if curSection >= 34 and curSection < 79 then
    triggerEvent('Screen Shake', '0.1, 0.006', '0.1, 0.006')
    if getHealth() >= 0.02 then
        setHealth(getHealth() - 0.02)
    end
end
if curSection >= 50 then
   if getHealth() >= 0.0000001 then
        setHealth(getHealth() - 0.0000001)
    end
end
    if curSection >= 82 then
        triggerEvent('Screen Shake', ' , ', ' , ')
    end
end

function onStepHit()
if curStep == 944 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',1,2)
end

if curStep == 987 then
    noteTweenAlpha('noteAlpha5', 4, 1, 1, 'linear')
    noteTweenAlpha('noteAlpha6', 5, 1, 1, 'linear')
    noteTweenAlpha('noteAlpha7', 6, 1, 1, 'linear')
    noteTweenAlpha('noteAlpha8', 7, 1, 1, 'linear')
end

if curStep == 1004 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',0,0.2)
end

if curStep == 1760 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',1,2)
end
end