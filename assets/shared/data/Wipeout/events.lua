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

function onCountdownTick()
    noteTweenX('noteX1', 0, -1000, 0.25, 'linear')
    noteTweenX('noteX2', 1, -1000, 0.25, 'linear')
    noteTweenX('noteX3', 2, -1000, 0.25, 'linear')
    noteTweenX('noteX4', 3, -1000, 0.25, 'linear')
    noteTweenX('noteX5', 4, 2000, 0.25, 'linear')
    noteTweenX('noteX6', 5, 2000, 0.25, 'linear')
    noteTweenX('noteX7', 6, 2000, 0.25, 'linear')
    noteTweenX('noteX8', 7, 2000, 0.25, 'linear')
    noteTweenY('noteY1', 0, 150, 0.25, 'linear');
    noteTweenY('noteY2', 1, 150, 0.25, 'linear');
    noteTweenY('noteY3', 2, 150, 0.25, 'linear');
    noteTweenY('noteY4', 3, 150, 0.25, 'linear');
    noteTweenY('noteY5', 4, 150, 0.25, 'linear');
    noteTweenY('noteY6', 5, 150, 0.25, 'linear');
    noteTweenY('noteY7', 6, 150, 0.25, 'linear');
    noteTweenY('noteY8', 7, 150, 0.25, 'linear');
    if downscroll then
        noteTweenY('noteY1', 0, 470, 0.25, 'linear');
        noteTweenY('noteY2', 1, 470, 0.25, 'linear');
        noteTweenY('noteY3', 2, 470, 0.25, 'linear');
        noteTweenY('noteY4', 3, 470, 0.25, 'linear');
        noteTweenY('noteY5', 4, 470, 0.25, 'linear');
        noteTweenY('noteY6', 5, 470, 0.25, 'linear');
        noteTweenY('noteY7', 6, 470, 0.25, 'linear');
        noteTweenY('noteY8', 7, 470, 0.25, 'linear');
    end
end

function onStepHit()
    function opponentNoteHit()
        if curStep >= 895 then
            triggerEvent('Screen Shake', '0.1, 0.004,', '0.1, 0.003')
        end
    end
if curStep == 4 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,2)
end

if curStep == 12 then
    noteTweenX('NoteX1', 0, 100, 1.5, 'cubeOut')
    noteTweenX('NoteX2', 1, 210, 1.5, 'cubeOut')
    noteTweenX('NoteX3', 2, 320 ,1.5, 'cubeOut')
    noteTweenX('NoteX4', 3, 430, 1.5, 'cubeOut')
    noteTweenX('NoteX5', 4, 750, 1.5, 'cubeOut')
    noteTweenX('NoteX6', 5, 860, 1.5, 'cubeOut')
    noteTweenX('NoteX7', 6, 970, 1.5, 'cubeOut')
    noteTweenX('NoteX8', 7, 1080, 1.5, 'cubeOut')
end

if curStep == 256 or curStep == 895 then
    noteTweenY('hiNotes1', 0, 50, 1.75, 'sineInOut');
    noteTweenY('hiNotes2', 1, 50, 1.75, 'sineInOut');
    noteTweenY('hiNotes3', 2, 50, 1.75, 'sineInOut');
    noteTweenY('hiNotes4', 3, 50, 1.75, 'sineInOut');
    noteTweenY('hiNotes5', 4, 50, 1.75, 'sineInOut');
    noteTweenY('hiNotes6', 5, 50, 1.75, 'sineInOut');
    noteTweenY('hiNotes7', 6, 50, 1.75, 'sineInOut');
    noteTweenY('hiNotes8', 7, 50, 1.75, 'sineInOut');
    setHealth(50/50)
    doTweenY('hiHUD1','healthBar',641,crochet*0.0099,'cubeInOut')
    doTweenY('hiHUD2','healthBarAround',629,crochet*0.0099,'cubeInOut')
    doTweenY('hiHUD3','iconP1',554,crochet*0.0099,'cubeInOut')
    doTweenY('hiHUD4','iconP2',554,crochet*0.0099,'cubeInOut')
    doTweenY('hiHUD5','scoreTxt',689,crochet*0.0099,'cubeInOut')
    doTweenAlpha('hiHUD6', 'timeBar',1,crochet*0.0099,'linear')
    doTweenAlpha('hiHUD7', 'songIcon',1,crochet*0.0099,'linear')
    doTweenAlpha('hiHUD8', 'timeTxt',1,crochet*0.0099,'linear')
    setProperty('songIcon.visible', true)
    setProperty('timeTxt.visible', true)
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
        setProperty('songIcon.visible', true)
        setProperty('timeTxt.visible', true)
    end
end

if curStep == 396 or curStep == 639 or curStep == 783 then
    noteTweenAlpha('noteAlpha1', 0, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha2', 1, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha3', 2, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha4', 3, 0, 1, 'linear')
    doTweenY('byeHUD1','healthBar',900,crochet*0.002,'cubeInOut')
    doTweenY('byeHUD2','healthBarAround',900,crochet*0.002,'cubeInOut')
    doTweenY('byeHUD3','iconP1',900,crochet*0.002,'cubeInOut')
    doTweenY('byeHUD4','iconP2',900,crochet*0.002,'cubeInOut')
    doTweenY('byeHUD5','scoreTxt',900,crochet*0.002,'cubeInOut')
    if downscroll then
        doTweenY('byeHUD1','healthBar',-300,crochet*0.0099,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',-300,crochet*0.0099,'cubeInOut')
        doTweenY('byeHUD3','iconP1',-300,crochet*0.0099,'cubeInOut')
        doTweenY('byeHUD4','iconP2',-300,crochet*0.0099,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',-300,crochet*0.0099,'cubeInOut')
    end
end

if curStep == 402 then
    doTweenX('hudX1', 'healthBar', 600,crochet*0.0025,'cubeInOut')
    doTweenX('hudX2', 'healthBarAround', 600,crochet*0.0025,'cubeInOut')
    doTweenX('hudX3', 'iconP1', 600,crochet*0.0025,'cubeInOut')
    doTweenX('hudX4', 'iconP2', 600,crochet*0.0025,'cubeInOut')
    doTweenX('hudX5', 'scoreTxt', 265,crochet*0.0025,'cubeInOut')
    setHealth(50/50)
end

if curStep == 404 or curStep == 656 then
    doTweenY('hiHUD1','healthBar',641,crochet*0.0099,'cubeInOut')
    doTweenY('hiHUD2','healthBarAround',629,crochet*0.0099,'cubeInOut')
    doTweenY('hiHUD3','iconP1',554,crochet*0.0099,'cubeInOut')
    doTweenY('hiHUD4','iconP2',554,crochet*0.0099,'cubeInOut')
    doTweenY('hiHUD5','scoreTxt',689,crochet*0.0099,'cubeInOut')
    if downscroll then
        doTweenY('hiHUD1','healthBar',79,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',67,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD3','iconP1',4,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD4','iconP2',4,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',129,crochet*0.0099,'cubeInOut')
    end
end

if curStep == 644 then
    screenCenter('healthBar', 'x')
    screenCenter('healthBarAround', 'x')
    screenCenter('scoreTxt', 'x')
    setHealth(50/50)
end

if curStep == 656 or curStep == 879 then
    noteTweenAlpha('noteAlpha1', 0, 1, 1, 'linear')
    noteTweenAlpha('noteAlpha2', 1, 1, 1, 'linear')
    noteTweenAlpha('noteAlpha3', 2, 1, 1, 'linear')
    noteTweenAlpha('noteAlpha4', 3, 1, 1, 'linear')
end

if curStep == 783 then
    noteTweenAlpha('noteAlpha1', 0, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha2', 1, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha3', 2, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha4', 3, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha5', 4, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha6', 5, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha7', 6, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha8', 7, 0, 1, 'linear')
    noteTweenY('noteY1', 0, 150, 1.75, 'sineInOut');
    noteTweenY('noteY2', 1, 150, 1.75, 'sineInOut');
    noteTweenY('noteY3', 2, 150, 1.75, 'sineInOut');
    noteTweenY('noteY4', 3, 150, 1.75, 'sineInOut');
    noteTweenY('noteY5', 4, 150, 1.75, 'sineInOut');
    noteTweenY('noteY6', 5, 150, 1.75, 'sineInOut');
    noteTweenY('noteY7', 6, 150, 1.75, 'sineInOut');
    noteTweenY('noteY8', 7, 150, 1.75, 'sineInOut');
    if downscroll then
        noteTweenY('noteY1', 0, 470, 1.75, 'sineInOut');
        noteTweenY('noteY2', 1, 470, 1.75, 'sineInOut');
        noteTweenY('noteY3', 2, 470, 1.75, 'sineInOut');
        noteTweenY('noteY4', 3, 470, 1.75, 'sineInOut');
        noteTweenY('noteY5', 4, 470, 1.75, 'sineInOut');
        noteTweenY('noteY6', 5, 470, 1.75, 'sineInOut');
        noteTweenY('noteY7', 6, 470, 1.75, 'sineInOut');
        noteTweenY('noteY8', 7, 470, 1.75, 'sineInOut');
    end
end

if curStep == 895 then
    noteTweenAlpha('noteAlpha1', 0, 1, 1, 'linear')
    noteTweenAlpha('noteAlpha2', 1, 1, 1, 'linear')
    noteTweenAlpha('noteAlpha3', 2, 1, 1, 'linear')
    noteTweenAlpha('noteAlpha4', 3, 1, 1, 'linear')
    noteTweenAlpha('noteAlpha5', 4, 1, 1, 'linear')
    noteTweenAlpha('noteAlpha6', 5, 1, 1, 'linear')
    noteTweenAlpha('noteAlpha7', 6, 1, 1, 'linear')
    noteTweenAlpha('noteAlpha8', 7, 1, 1, 'linear')
end

if curStep == 1056 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,4)
end
end