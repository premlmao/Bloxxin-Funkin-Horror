function onCreate()

    makeLuaSprite('bigblackbartop', 'bigBlackBarTop',0,0)
    setObjectCamera('bigblackbartop', 'other')
    setScrollFactor('bigblackbartop', 0, 0)
    addLuaSprite('bigblackbartop', true)

    makeLuaSprite('bigblackbarbottom', 'bigBlackBarBottom',0,0)
    setObjectCamera('bigblackbarbottom', 'other')
    setScrollFactor('bigblackbarbottom', 0, 0)
    addLuaSprite('bigblackbarbottom', true)
end

function onCountdownTick()
    setProperty('camHUD.alpha', 1)
    doTweenY('woohooTop', 'bigblackbartop', -275, 1.25, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 275, 1.25, 'cubeOut')
    noteTweenX('noteX1', 0, -1000, 0.1, 'backInOut');
    noteTweenX('noteX2', 1, -1000, 0.1, 'backInOut');
    noteTweenX('noteX3', 2, -1000, 0.1, 'backInOut');
    noteTweenX('noteX4', 3, -1000, 0.1, 'backInOut');
    noteTweenY('hiNotes5', 4, -1000, 0.25, 'linear');
    noteTweenY('hiNotes6', 5, -1000, 0.25, 'linear');
    noteTweenY('hiNotes7', 6, -1000, 0.25, 'linear');
    noteTweenY('hiNotes8', 7, -1000, 0.25, 'linear');
end

function onBeatHit()
    if curBeat == 4 then
    doTweenY('woohooTop', 'bigblackbartop', -300, 1.25, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 300, 1.25, 'cubeOut')
    end

    if curBeat == 36 then
    doTweenY('woohooTop', 'bigblackbartop', -500, 1.25, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 500, 1.25, 'cubeOut')
    end

    if curBeat == 232 then
    doTweenY('woohooTop', 'bigblackbartop', -250, 2.5, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 250, 2.5, 'cubeOut')
    end

    if curBeat == 296 then
    doTweenY('woohooTop', 'bigblackbartop', -500, 2, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 500, 2, 'cubeOut')
    end
    if curBeat == 364 then
    doTweenY('woohooTop', 'bigblackbartop', -250, 2.5, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 250, 2.5, 'cubeOut')
    end

    if curBeat == 448 then
    doTweenY('woohooTop', 'bigblackbartop', -0, 2.5, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 0, 2.5, 'cubeOut')
    end
end