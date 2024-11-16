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
    doTweenY('woohooTop', 'bigblackbartop', -250, 2, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 250, 2, 'cubeOut')
end

function onBeatHit()
    if curBeat == 60 or curBeat == 220 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 2, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 2, 'cubeOut')
    end
    if curBeat == 192 or curBeat == 352 then
        doTweenY('woohooTop', 'bigblackbartop', -250, 2, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 250, 2, 'cubeOut')
    end
    if curBeat == 420 then
        doTweenY('woohooTop', 'bigblackbartop', 0, 5, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 0, 5, 'cubeOut')
    end
end
