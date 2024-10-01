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
    setProperty('timeTxt.visible', false)
end
end

function onSongStart()
    noteTweenAlpha('noteAlpha1', 0, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha2', 1, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha3', 2, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha4', 3, 0, 1, 'linear')
    noteTweenX('NoteX4', 4, 100, 0.5, 'cubeInOut')
    noteTweenX('NoteX5', 5, 210, 0.5, 'cubeInOut')
    noteTweenX('NoteX6', 6, 320, 0.5, 'cubeInOut')
    noteTweenX('NoteX7', 7, 430, 0.5, 'cubeInOut')
    noteTweenY('noteY5', 4, 150, 0.25, 'linear');
    noteTweenY('noteY6', 5, 150, 0.25, 'linear');
    noteTweenY('noteY7', 6, 150, 0.25, 'linear');
    noteTweenY('noteY8', 7, 150, 0.25, 'linear');
    if downscroll then
        noteTweenY('noteY5', 4, 470, 0.25, 'linear');
        noteTweenY('noteY6', 5, 470, 0.25, 'linear');
        noteTweenY('noteY7', 6, 470, 0.25, 'linear');
        noteTweenY('noteY8', 7, 470, 0.25, 'linear');
    end
end

function onBeatHit()
    function opponentNoteHit()
        if curBeat >= 92 then
            triggerEvent('Screen Shake', '0.1, 0.007,', '0.1, 0.005')
        end
    end
    if curBeat == 92 then
        noteTweenY('hiNotes5', 4, 50, 2, 'sineInOut');
        noteTweenY('hiNotes6', 5, 50, 2, 'sineInOut');
        noteTweenY('hiNotes7', 6, 50, 2, 'sineInOut');
        noteTweenY('hiNotes8', 7, 50, 2, 'sineInOut');
        noteTweenX('NoteX5', 4, 750, 2, 'sineInOut')
        noteTweenX('NoteX6', 5, 860, 2, 'sineInOut')
        noteTweenX('NoteX7', 6, 970, 2, 'sineInOut')
        noteTweenX('NoteX8', 7, 1080, 2, 'sineInOut')
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
            noteTweenY('hiNotes5', 4, 570, 2, 'sineInOut');
            noteTweenY('hiNotes6', 5, 570, 2, 'sineInOut');
            noteTweenY('hiNotes7', 6, 570, 2, 'sineInOut');
            noteTweenY('hiNotes8', 7, 570, 2, 'sineInOut');
            doTweenY('hiHUD1','healthBar',79,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',67,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD3','iconP1',4,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD4','iconP2',4,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',129,crochet*0.0099,'cubeInOut')
        end
    end
end

function onStepHit()
    if curStep == 128 then
    setProperty('black.visible', true)
    doTweenAlpha('silly','black',0,2)
    end
end