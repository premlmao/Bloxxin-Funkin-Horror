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
    if curBeat == 40 or curBeat == 304 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 3, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 3, 'cubeOut')
    end

    if curBeat == 264 then
        doTweenY('woohooTop', 'bigblackbartop', -200, 1, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 200, 1, 'cubeOut')
    end

    if curBeat == 280 then
        doTweenY('woohooTop', 'bigblackbartop', -250, 1, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 250, 1, 'cubeOut')
    end

    if curBeat == 336 then
        doTweenY('woohooTop', 'bigblackbartop', 0, 2, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 0, 2, 'cubeOut')
    end

    if curBeat == 342 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 2, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 2, 'cubeOut')
    end

    if curBeat == 464 then
        doTweenY('woohooTop', 'bigblackbartop', 0, 2, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 0, 2, 'cubeOut')
    end
end
