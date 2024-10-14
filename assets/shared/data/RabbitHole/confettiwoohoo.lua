function onCreate()
    makeAnimatedLuaSprite('confetti', 'partyguys')
    addAnimationByPrefix('confetti', 'whee', 'whee', 24, true);
    setProperty('confetti.visible', false)
    setProperty('confetti.scale.x', 1)
    setProperty('confetti.scale.y', 1)
    setProperty('confetti.x', -150)
    setObjectCamera('confetti', 'hud')
    addLuaSprite('confetti', true)
end

function onStepHit()
    if curStep == 116 then
        setProperty('confetti.visible', true)
        playAnim('confetti', 'whee', true)
    end
    if curStep == 127 then
        removeLuaSprite('confetti', true)
    end
end