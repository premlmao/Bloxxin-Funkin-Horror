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
    noteTweenY('noteY1', 0, 150, 0.25, linear)
    noteTweenY('noteY2', 1, 150, 0.25, linear)
    noteTweenY('noteY3', 2, 150, 0.25, linear)
    noteTweenY('noteY4', 3, 150, 0.25, linear)
    noteTweenY('noteY5', 4, 150, 0.25, linear)
    noteTweenY('noteY6', 5, 150, 0.25, linear)
    noteTweenY('noteY7', 6, 150, 0.25, linear)
    noteTweenY('noteY8', 7, 150, 0.25, linear)
    noteTweenAlpha('noteAlpha1', 0, 0, 0.4, linear)
    noteTweenAlpha('noteAlpha2', 1, 0, 0.4, linear)
    noteTweenAlpha('noteAlpha3', 2, 0, 0.4, linear)
    noteTweenAlpha('noteAlpha4', 3, 0, 0.4, linear)
    noteTweenAlpha('noteAlpha5', 4, 0, 0.4, linear)
    noteTweenAlpha('noteAlpha6', 5, 0, 0.4, linear)
    noteTweenAlpha('noteAlpha7', 6, 0, 0.4, linear)
    noteTweenAlpha('noteAlpha8', 7, 0, 0.4, linear)
end

function onBeatHit()
    if curBeat == 28 then
        noteTweenAlpha('noteAlpha1', 0, 1, 1, linear)
        noteTweenAlpha('noteAlpha2', 1, 1, 1, linear)
        noteTweenAlpha('noteAlpha3', 2, 1, 1, linear)
        noteTweenAlpha('noteAlpha4', 3, 1, 1, linear)
    end

    if curBeat == 44 then
        noteTweenAlpha('noteAlpha5', 4, 1, 0.5, linear)
        noteTweenAlpha('noteAlpha6', 5, 1, 0.5, linear)
        noteTweenAlpha('noteAlpha7', 6, 1, 0.5, linear)
        noteTweenAlpha('noteAlpha8', 7, 1, 0.5, linear)
    end

    if curBeat == 92 then
        noteTweenY('noteY1', 0, 50, 1, linear)
        noteTweenY('noteY2', 1, 50, 1, linear)
        noteTweenY('noteY3', 2, 50, 1, linear)
        noteTweenY('noteY4', 3, 50, 1, linear)
        noteTweenY('noteY5', 4, 50, 1, linear)
        noteTweenY('noteY6', 5, 50, 1, linear)
        noteTweenY('noteY7', 6, 50, 1, linear)
        noteTweenY('noteY8', 7, 50, 1, linear)
        doTweenY('hiHUD1','healthBar',641,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
    end
end

function onStepHit()
if curStep == 1728 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,7)
end
end
