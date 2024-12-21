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
    if curStep == 267 or curStep == 666 then
        doTweenY('woohooTop', 'bigblackbartop', -250, 2, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 250, 2, 'cubeOut')
    end

    if curStep == 400 or curStep == 720 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 2, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 2, 'cubeOut')
    end

    if curStep == 704 then
        doTweenY('woohooTop', 'bigblackbartop', -200, 1, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 200, 1, 'cubeOut')
    end

    if curStep == 928 then
        doTweenY('woohooTop', 'bigblackbartop', 0, 3, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 0, 3, 'cubeOut')
    end

    if curStep == 960 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 3, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 3, 'cubeOut')
    end

    if curStep == 1840 then
        doTweenY('woohooTop', 'bigblackbartop', 0, 0.5, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 0, 0.5, 'cubeOut')
    end

    function opponentNoteHit()
        if curStep >= 1216 then
        triggerEvent('Screen Shake', '0.1, 0.0075', '0.1, 0.0075')
        end
    end
end