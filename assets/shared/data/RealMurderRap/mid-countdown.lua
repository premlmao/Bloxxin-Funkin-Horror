function onCreate()
    makeLuaSprite('ready', 'ready', 0, 0)
    setObjectCamera('ready', 'hud')
    screenCenter('ready', 'xy')
    addLuaSprite('ready', true)
    setProperty('ready.visible', false)

    makeLuaSprite('set', 'set', 0, 0)
    setObjectCamera('set', 'hud')
    screenCenter('set', 'xy')
    addLuaSprite('set', true)
    setProperty('set.visible', false)

    makeLuaSprite('go', 'go', 0, 0)
    setObjectCamera('go', 'hud')
    screenCenter('go', 'xy')
    addLuaSprite('go', true)
    setProperty('go.visible', false)
end

function onStepHit()
    if curStep == 372 or curStep == 1012 then
        setProperty('ready.visible', true)
        setProperty('ready.alpha', 1)
        doTweenAlpha('ready', 'ready', 0, crochet / 1000, 'cubeInOut')
    end
    if curStep == 400 then
        setProperty('ready.visible', false)
        setProperty('ready.alpha', 1)
    end
    if curStep == 376 or curStep == 1017 then
        setProperty('set.visible', true)
        setProperty('set.alpha', 1)
        doTweenAlpha('set', 'set', 0, crochet / 1000, 'cubeInOut')
    end
    if curStep == 404 then
        setProperty('set.visible', false)
        setProperty('set.alpha', 1)
    end
    if curStep == 380 or curStep == 1021 then
        setProperty('go.visible', true)
        setProperty('go.alpha', 1)
        doTweenAlpha('go', 'go', 0, crochet / 1000, 'cubeInOut')
    end
    if curStep == 408 then
        setProperty('go.visible', false)
        setProperty('go.alpha', 1)
    end
end