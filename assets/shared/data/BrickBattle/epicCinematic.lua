function onCreate()

    makeLuaSprite('bigblackbartop', 'bigBlackBarTop',0,0)
    setObjectCamera('bigblackbartop', 'other')
    setScrollFactor('bigblackbartop', 0, 0)
    setProperty('bigblackbartop.y', 0)
    addLuaSprite('bigblackbartop', true)

    makeLuaSprite('bigblackbarbottom', 'bigBlackBarBottom',0,0)
    setObjectCamera('bigblackbarbottom', 'other')
    setScrollFactor('bigblackbarbottom', 0, 0)
    setProperty('bigblackbarbottom.y', 0)
    addLuaSprite('bigblackbarbottom', true)
end

function onStepHit()
    if curStep == 32 then
        doTweenY('bigblackbartop', 'bigblackbartop', -300, 2, 'cubeOut')
        doTweenY('bigblackbarbottom', 'bigblackbarbottom', 300, 2, 'cubeOut')
    end
    if curStep == 432 then
        doTweenY('bigblackbartop', 'bigblackbartop', -500, 2, 'cubeOut')
        doTweenY('bigblackbarbottom', 'bigblackbarbottom', 500, 2, 'cubeOut')
    end
end
