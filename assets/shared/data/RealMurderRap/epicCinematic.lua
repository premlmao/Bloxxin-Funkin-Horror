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

function onBeatHit()
    if curBeat == 60 then
    doTweenY('woohooTop', 'bigblackbartop', -500, 2, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 500, 2, 'cubeOut')
    end
end

function onStepHit()
if curStep == 10 then
    doTweenY('woohooTop', 'bigblackbartop', -250, 2.25, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 250, 2.25, 'cubeOut')
end
if curStep == 368 or curStep == 1007 then
    doTweenY('woohooTop', 'bigblackbartop', -350, 0.3, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 350, 0.3, 'cubeOut')
end
if curStep == 372 or curStep == 1012 then
    doTweenY('woohooTop', 'bigblackbartop', -250, 0.3, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 250, 0.3, 'cubeOut')
end
if curStep == 376 or curStep == 1017 then
    doTweenY('woohooTop', 'bigblackbartop', -200, 0.3, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 200, 0.3, 'cubeOut')
end
if curStep == 380 or curStep == 1021 then
    doTweenY('woohooTop', 'bigblackbartop', -350, 0.3, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 350, 0.3, 'cubeOut')
end
if curStep == 384 or curStep == 1023 then
    doTweenY('woohooTop', 'bigblackbartop', -500, 0.3, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 500, 0.3, 'cubeOut')
end
if curStep == 512 then
    doTweenY('woohooTop', 'bigblackbartop', -250, 1, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 250, 1, 'cubeOut')
end
if curStep == 767 then
    doTweenY('woohooTop', 'bigblackbartop', -250, 2.5, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 250, 2.5, 'cubeOut')
end
if curStep == 863 then
    doTweenY('woohooTop', 'bigblackbartop', -500, 3, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 500, 3, 'cubeOut')
end
if curStep == 1023 then
    doTweenY('woohooTop', 'bigblackbartop', -250, 1, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 250, 1, 'cubeOut')
end
if curStep == 1087 then
    doTweenY('woohooTop', 'bigblackbartop', -300, 1, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 300, 1, 'cubeOut')
end
if curStep == 1215 then
    doTweenY('woohooTop', 'bigblackbartop', -250, 1, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 250, 1, 'cubeOut')
end
end

