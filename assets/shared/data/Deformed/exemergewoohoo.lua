function onCreate()

    makeAnimatedLuaSprite('oofexe', 'icons/icon-oofexegameicon')
    addAnimationByPrefix('oofexe', 'idle', 'idle', 24, true);
    addAnimationByPrefix('oofexe', 'defeat', 'defeat', 24, true);
    addAnimationByPrefix('oofexe', 'left', 'left', 24, true);
    addAnimationByPrefix('oofexe', 'right', 'right', 24, true);
    addAnimationByPrefix('oofexe', 'up', 'up', 24, true);
    addAnimationByPrefix('oofexe', 'down', 'down', 24, true);
    setObjectCamera('oofexe', 'hud')
    addLuaSprite('oofexe', false)
end

function onBeatHit()
    if curBeat == 12 then
        setObjectOrder('oofexe', getObjectOrder('healthBar') + 1)
        addLuaSprite('oofexe', true)
    end
end

function onUpdatePost()
    setProperty('oofexe.antialiasing', true)
    setProperty('iconP2.alpha', 1)
    setProperty('oofexe.x', getProperty('iconP2.x'))
    setProperty('oofexe.y', getProperty('iconP2.y'))
    setProperty('oofexe.scale.x', getProperty('iconP2.scale.x'))
	setProperty('oofexe.scale.y', getProperty('iconP2.scale.y'))

    if getProperty('dad.animation.curAnim.name') == 'singLEFT' then

        objectPlayAnimation('oofexe', 'left')
        runHaxeCode([[
            import openfl.Lib;
            Lib.application.window.title = "want to pl6y?";
        ]])
    elseif getProperty('dad.animation.curAnim.name') == 'singRIGHT' then

        objectPlayAnimation('oofexe', 'right')
        runHaxeCode([[
            import openfl.Lib;
            Lib.application.window.title = "5      1  7    0   3   7 0";
        ]])
    elseif getProperty('dad.animation.curAnim.name') == 'singUP' then

        objectPlayAnimation('oofexe', 'up')
        runHaxeCode([[
            import openfl.Lib;
            Lib.application.window.title = ".";
        ]])
    elseif getProperty('dad.animation.curAnim.name') == 'singDOWN' then

        objectPlayAnimation('oofexe', 'down')
        runHaxeCode([[
            import openfl.Lib;
            Lib.application.window.title = "Join us";
        ]])
    elseif getProperty('dad.animation.curAnim.name') == 'idle' then

        objectPlayAnimation('oofexe', 'idle')
        runHaxeCode([[
            import openfl.Lib;
            Lib.application.window.title = "";
        ]])
    end

    if getProperty('healthBar.percent') > 80 then
        setProperty('oofexe.alpha', 0)
        setProperty('iconP2.alpha', 1)
    else
        setProperty('oofexe.alpha', 1)
        setProperty('iconP2.alpha', 0)
    end
end