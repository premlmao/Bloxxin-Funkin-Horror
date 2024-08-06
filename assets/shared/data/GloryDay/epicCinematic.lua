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

function onSongStart()
    doTweenY('woohooTop', 'bigblackbartop', -250, 1, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 250, 1, 'cubeOut')
end

function onBeatHit()
    if curBeat == 96 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 1.75, 'cubeOut')
            doTweenY('woohoobottom', 'bigblackbarbottom', 500, 1.75, 'cubeOut')
    end

    if curBeat == 236 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 1.75, 'cubeOut')
            doTweenY('woohoobottom', 'bigblackbarbottom', 500, 1.75, 'cubeOut')
    end
end

function onStepHit()
    if curStep == 800 then
            doTweenY('woohooTop', 'bigblackbartop', -300, 0.75, 'cubeOut')
            doTweenY('woohoobottom', 'bigblackbarbottom', 300, 0.75, 'cubeOut')
    end
end
