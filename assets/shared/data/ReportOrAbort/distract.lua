function onCreate()
    makeAnimatedLuaSprite('distractor', 'coolkiddistract')
    addAnimationByPrefix('distractor', 'spin', 'spin', 24, true);
    setProperty('distractor.visible', false)
    setProperty('distractor.scale.x', 1.1)
    setProperty('distractor.scale.y', 1.1)
    setProperty('distractor.x', 795)
    setProperty('distractor.y', 200)
    setObjectCamera('distractor', 'hud')
    addLuaSprite('distractor', true)
end

function onStepHit()
    if curStep == 1600 then
        setProperty('distractor.visible', true)
        playAnim('distractor', 'spin', true)
    end
    if curStep == 2144 then
        removeLuaSprite('distractor', true)
    end
end