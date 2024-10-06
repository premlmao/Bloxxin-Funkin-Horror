function onCreate()

    makeLuaText("sigma", songName, 0, 0, 0)
    addLuaText('sigma');
    setTextSize('sigma', 15);
    setObjectCamera('sigma', 'other');
    setTextFont('sigma', 'Comic Sans MS.ttf');
    setTextColor('sigma', '#FFFFFF')
    setProperty('sigma.visible', true)
    setProperty('sigma.x', 17)
    setProperty('sigma.y', 296)

    makeLuaText("sigma3", "Step:", 0, 0, 0)
    addLuaText('sigma3');
    setTextSize('sigma3', 15);
    setObjectCamera('sigma3', 'other');
    setTextFont('sigma3', 'Comic Sans MS.ttf');
    setTextColor('sigma3', '#FFFFFF')
    setProperty('sigma3.visible', true)
    setProperty('sigma3.x', 17)
    setProperty('sigma3.y', 326)

    makeLuaText("sigma5", 'Beat:', 0, 0, 0)
    addLuaText('sigma5');
    setTextSize('sigma5', 15);
    setObjectCamera('sigma5', 'other');
    setTextFont('sigma5', 'Comic Sans MS.ttf');
    setTextColor('sigma5', '#FFFFFF')
    setProperty('sigma5.visible', true)
    setProperty('sigma5.x', 17)
    setProperty('sigma5.y', 366)
end

function onStepHit()
    makeLuaText("step", curStep, 0, 0, 0)
    addLuaText('step');
    setTextSize('step', 15);
    setObjectCamera('step', 'other');
    setTextFont('step', 'Comic Sans MS.ttf');
    setTextColor('step', '#FFFFFF')
    setProperty('step.visible', true)
    setProperty('step.x', 65)
    setProperty('step.y', 326)
end

function onBeatHit()
    makeLuaText("beat", curBeat, 0, 0, 0)
    addLuaText('beat');
    setTextSize('beat', 15);
    setObjectCamera('beat', 'other');
    setTextFont('beat', 'Comic Sans MS.ttf');
    setTextColor('beat', '#FFFFFF')
    setProperty('beat.visible', true)
    setProperty('beat.x', 65)
    setProperty('beat.y', 366)
end