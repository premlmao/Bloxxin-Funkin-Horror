local timeString

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
setProperty('songIcon.alpha', 0)
setProperty('timeTxt.alpha', 0)
setProperty('songIcon.visible', false)
setProperty('timeTxt.visible', false)

downscroll = getPropertyFromClass('backend.ClientPrefs', 'data.downScroll')
if downscroll then
    setProperty('healthBar.y', -300)
    setProperty('healthBarAround.y', -300)
    setProperty('iconP1.y', -300)
    setProperty('iconP2.y', -300)
    setProperty('scoreTxt.y', -300)
    setProperty('songIcon.alpha', 0)
    setProperty('timeTxt.alpha', 0)
    setProperty('songIcon.visible', false)
    setProperty('timeTxt.visible', false)
end
end
function opponentNoteHit(_, _, type)
    if getHealth() >= 0.01 then
        setHealth(getHealth() - 0.01)
    end
    if curSection >= 129 then
    triggerEvent('Screen Shake', '0.1, 0.004,', '0.1, 0.003')
    if getHealth() >= 0.015 then
        setHealth(getHealth() - 0.015)
    end
    end
end

function goodNoteHit()
    if curSection >= 129 then
        if getHealth() >= 0.025 then
            setHealth(getHealth() + 0.025)
        end
    end
end

function onSongStart()
    noteTweenAlpha('noteAlpha1', 0, 0, 0.2, 'linear')
    noteTweenAlpha('noteAlpha2', 1, 0, 0.2, 'linear')
    noteTweenAlpha('noteAlpha3', 2, 0, 0.2, 'linear')
    noteTweenAlpha('noteAlpha4', 3, 0, 0.2, 'linear')
    noteTweenX('NoteX1', 0, 750, 0.2, 'linear')
    noteTweenX('NoteX2', 1, 860, 0.2, 'linear')
    noteTweenX('NoteX3', 2, 970, 0.2, 'linear')
    noteTweenX('NoteX4', 3, 1080, 0.2, 'linear')
    noteTweenY('noteY1', 0, 100, 0.2, 'linear')
    noteTweenY('noteY2', 1, 100, 0.2, 'linear')
    noteTweenY('noteY3', 2, 100, 0.2, 'linear')
    noteTweenY('noteY4', 3, 100, 0.2, 'linear')
    noteTweenY('noteY5', 4, 100, 0.2, 'linear')
    noteTweenY('noteY6', 5, 100, 0.2, 'linear')
    noteTweenY('noteY7', 6, 100, 0.2, 'linear')
    noteTweenY('noteY8', 7, 100, 0.2, 'linear')
    if downscroll then
        noteTweenY('noteY1', 0, 520, 0.2, 'linear')
        noteTweenY('noteY2', 1, 520, 0.2, 'linear')
        noteTweenY('noteY3', 2, 520, 0.2, 'linear')
        noteTweenY('noteY4', 3, 520, 0.2, 'linear')
        noteTweenY('noteY5', 4, 520, 0.2, 'linear')
        noteTweenY('noteY6', 5, 520, 0.2, 'linear')
        noteTweenY('noteY7', 6, 520, 0.2, 'linear')
        noteTweenY('noteY8', 7, 520, 0.2, 'linear')
    end
end

function onStepHit()
    if curSection >= 114 then
        setTextString('scoreTxt', 'Score: '..getRandomInt(0, 2000000)..' | Misses: '..getRandomInt(0, 3000)..' | Rating: '..getProperty('ratingName')..' ('..getRandomInt(1, 100)..'%)')
        function onUpdatePost()
            if not getProperty('startingSong') and getTextString('timeTxt') ~= timeString then
                setTextString('timeTxt', timeString)
            end
            if curSection >= 187 then
                setTextString('scoreTxt', 'Score: '..getRandomInt(0, 10000)..' | Misses: '..getRandomInt(0, 1000)..' | Rating: '..getProperty('ratingName')..' ('..getRandomInt(1, 100)..'%)')
                setTextString('timeTxt', ''..getRandomInt(0, 59)..':'..getRandomInt(0, 59))
            end
        end
        timeString = getRandomInt(0, 157)..':'..getRandomInt(0, 143)
    end
if curStep == 32 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,4)
end

if curStep == 432 then
    noteTweenAlpha('noteAlpha1', 0, 1, 1, 'linear')
    noteTweenAlpha('noteAlpha2', 1, 1, 1, 'linear')
    noteTweenAlpha('noteAlpha3', 2, 1, 1, 'linear')
    noteTweenAlpha('noteAlpha4', 3, 1, 1, 'linear')
    noteTweenX('NoteX1', 0, 100, 1, 'cubeOut')
    noteTweenX('NoteX2', 1, 210, 1, 'cubeOut')
    noteTweenX('NoteX3', 2, 320, 1, 'cubeOut')
    noteTweenX('NoteX4', 3, 430, 1, 'cubeOut')
    
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
if curStep == 959 then
    doTweenAlpha('hiHUD1','healthBar', 0.25, 1,'cubeInOut')
    doTweenAlpha('hiHUD2','healthBarAround', 0.25, 1, 'cubeInOut')
    doTweenAlpha('hiHUD3','iconP1', 0.25, 1,'cubeInOut')
    doTweenAlpha('hiHUD4','iconP2', 0.25, 1,'cubeInOut')
    doTweenAlpha('hiHUD5','scoreTxt', 0.25, 1,'cubeInOut')
    doTweenAlpha('hiHUD6', 'timeBar',0.25, 1,'cubeInOut')
    doTweenAlpha('hiHUD7', 'songIcon',0.25, 1,'cubeInOut')
    doTweenAlpha('hiHUD8', 'timeTxt',0.25, 1,'cubeInOut')
end

if curStep == 1087 then
    doTweenAlpha('hiHUD1','healthBar', 1, 1,'cubeInOut')
    doTweenAlpha('hiHUD2','healthBarAround', 1, 1, 'cubeInOut')
    doTweenAlpha('hiHUD3','iconP1', 1, 1,'cubeInOut')
    doTweenAlpha('hiHUD4','iconP2', 1, 1,'cubeInOut')
    doTweenAlpha('hiHUD5','scoreTxt', 1, 1,'cubeInOut')
    doTweenAlpha('hiHUD6', 'timeBar', 1, 1,'cubeInOut')
    doTweenAlpha('hiHUD7', 'songIcon', 1, 1,'cubeInOut')
    doTweenAlpha('hiHUD8', 'timeTxt', 1, 1,'cubeInOut')
end

if curStep == 1727 then
    noteTweenAlpha('noteAlpha1', 0, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha2', 1, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha3', 2, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha4', 3, 0, 1, 'linear')
end

if curStep == 448 then
    setHealth(50/50)
    doTweenY('hiHUD1','healthBar',648,crochet*0.0075,'cubeInOut')
    doTweenY('hiHUD2','healthBarAround',629,crochet*0.0075,'cubeInOut')
    doTweenY('hiHUD3','iconP1',554,crochet*0.0075,'cubeInOut')
    doTweenY('hiHUD4','iconP2',554,crochet*0.0075,'cubeInOut')
    doTweenY('hiHUD5','scoreTxt',689,crochet*0.0075,'cubeInOut')
    doTweenAlpha('hiHUD6', 'timeBar',1,crochet*0.0075,'linear')
    doTweenAlpha('hiHUD7', 'songIcon',1,crochet*0.0075,'linear')
    doTweenAlpha('hiHUD8', 'timeTxt',1,crochet*0.0075,'linear')
    setProperty('songIcon.visible', true)
    setProperty('timeTxt.visible', true)
    if downscroll then
    doTweenY('hiHUD1','healthBar',79,crochet*0.0075,'cubeInOut')
    doTweenY('hiHUD2','healthBarAround',67,crochet*0.0075,'cubeInOut')
    doTweenY('hiHUD3','iconP1',4,crochet*0.0075,'cubeInOut')
    doTweenY('hiHUD4','iconP2',4,crochet*0.0075,'cubeInOut')
    doTweenY('hiHUD5','scoreTxt',129,crochet*0.0075,'cubeInOut')
    setProperty('songIcon.visible', true)
    setProperty('timeTxt.visible', true)
    end
end

if curStep == 1768 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,1)
end

if curStep == 1952 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,0.01)
end

if curStep == 2848 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,4)
end

if curStep == 2992 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,1)
end

if curStep == 3650 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,4)
end
end