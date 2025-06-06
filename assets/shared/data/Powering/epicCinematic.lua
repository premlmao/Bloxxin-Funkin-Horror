function onCreate()

    makeLuaSprite('bigblackbartop', 'bigBlackBarTop',0,0)
    setObjectCamera('bigblackbartop', 'other')
    setScrollFactor('bigblackbartop', 0, 0)
    setProperty('bigblackbartop.y', -500)
    addLuaSprite('bigblackbartop', true)

    makeLuaSprite('bigblackbarbottom', 'bigBlackBarBottom',0,0)
    setObjectCamera('bigblackbarbottom', 'other')
    setScrollFactor('bigblackbarbottom', 0, 0)
    setProperty('bigblackbarbottom.y', 500)
    addLuaSprite('bigblackbarbottom', true)
end

function onStepHit()
    if curStep == 110 then
        doTweenY('woohooTop', 'bigblackbartop', -300, 0.5, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 300, 0.5, 'cubeOut')
    end

    if curStep == 120 then
        doTweenY('woohooTop', 'bigblackbartop', -250, 0.5, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 250, 0.5, 'cubeOut')
    end

    if curStep == 128 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 1, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 1, 'cubeOut')
    end
end