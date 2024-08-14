function onCreate()

    makeLuaText("sigma3", "Step:", 0, 0, 0)
    addLuaText('sigma3');
    setTextSize('sigma3', 15);
    setObjectCamera('sigma3', 'other');
    setTextFont('sigma3', 'Gotham Black Regular.ttf');
    setTextColor('sigma3', '#FFFFFF')
    setProperty('sigma3.visible', true)
    setProperty('sigma3.x', 17)
    setProperty('sigma3.y', 695)

    makeLuaText("sigma4", '-', 0, 0, 0)
    addLuaText('sigma4');
    setTextSize('sigma4', 15);
    setObjectCamera('sigma4', 'other');
    setTextFont('sigma4', 'Gotham Black Regular.ttf');
    setTextColor('sigma4', '#FFFFFF')
    setProperty('sigma4.visible', true)
    setProperty('sigma4.x', 120)
    setProperty('sigma4.y', 696)

    makeLuaText("sigma5", 'Beat:', 0, 0, 0)
    addLuaText('sigma5');
    setTextSize('sigma5', 15);
    setObjectCamera('sigma5', 'other');
    setTextFont('sigma5', 'Gotham Black Regular.ttf');
    setTextColor('sigma5', '#FFFFFF')
    setProperty('sigma5.visible', true)
    setProperty('sigma5.x', 155)
    setProperty('sigma5.y', 696)

    makeLuaText("sigma6", '___', 0, 0, 0)
    addLuaText('sigma6');
    setTextSize('sigma6', 15);
    setObjectCamera('sigma6', 'other');
    setTextFont('sigma6', 'Gotham Black Regular.ttf')
    setTextBorder('sigma6', 0.5, 'white')
    setTextColor('sigma6', '#FFFFFF')
    setProperty('sigma6.visible', true)
    setProperty('sigma6.x', 260)
    setProperty('sigma6.y', 693)
    setProperty('sigma6.angle', 90)

    makeLuaText("sigma7", '______________________________', 0, 0, 0)
    addLuaText('sigma7');
    setTextSize('sigma7', 15);
    setObjectCamera('sigma7', 'other');
    setTextFont('sigma7', 'Gotham Black Regular.ttf');
    setTextBorder('sigma7', 0.5, 'white')
    setTextColor('sigma7', '#FFFFFF')
    setProperty('sigma7.visible', true)
    setProperty('sigma7.x', 0)
    setProperty('sigma7.y', 675)
end

function onStepHit()
    makeLuaText("step", curStep, 0, 0, 0)
    addLuaText('step');
    setTextSize('step', 15);
    setObjectCamera('step', 'other');
    setTextFont('step', 'Gotham Black Regular.ttf');
    setTextColor('step', '#FFFFFF')
    setProperty('step.visible', true)
    setProperty('step.x', 65)
    setProperty('step.y', 696)
end

function onBeatHit()
    makeLuaText("beat", curBeat, 0, 0, 0)
    addLuaText('beat');
    setTextSize('beat', 15);
    setObjectCamera('beat', 'other');
    setTextFont('beat', 'Gotham Black Regular.ttf');
    setTextColor('beat', '#FFFFFF')
    setProperty('beat.visible', true)
    setProperty('beat.x', 205)
    setProperty('beat.y', 696)
end