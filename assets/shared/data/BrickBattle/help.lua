function onCreate()
    -------------- help --------------
    makeLuaText("help1", 'Uh oh!         is not fooling around now!', 0, 0, 0)
    addLuaText('help1');
    setTextSize('help1', 35);
    setObjectCamera('help1', 'other');
    setTextFont('help1', 'vcr.ttf');
    setTextColor('help1', '#FFFFFF')
    setTextBorder('help1', 2.5, 'black')
    setProperty('help1.alpha', 0)
    setProperty('help1.x', 215)
    setProperty('help1.y', 200)
    makeLuaText("helpAbad", 'Abaddon', 0, 0, 0)
    addLuaText('helpAbad');
    setTextSize('helpAbad', 35);
    setObjectCamera('helpAbad', 'other');
    setTextFont('helpAbad', 'vcr.ttf');
    setTextColor('helpAbad', '#db0f0f')
    setTextBorder('helpAbad', 2.5, 'black')
    setProperty('helpAbad.alpha', 0)
    setProperty('helpAbad.x', 360)
    setProperty('helpAbad.y', 200)
    
    makeLuaText("help2", 'He now drains your health much more severely.', 0, 0, 0)
    addLuaText('help2');
    setTextSize('help2', 35);
    setObjectCamera('help2', 'other');
    setTextFont('help2', 'vcr.ttf');
    setTextColor('help2', '#FFFFFF')
    setTextBorder('help2', 2.5, 'black')
    setProperty('help2.alpha', 0)
    setProperty('help2.x', 175)
    setProperty('help2.y', 300)

    makeLuaText("help3", 'Keep an eye on your health bar!', 0, 0, 0)
    addLuaText('help3');
    setTextSize('help3', 35);
    setObjectCamera('help3', 'other');
    setTextFont('help3', 'vcr.ttf');
    setTextColor('help3', '#ff0000')
    setTextBorder('help3', 2.5, 'black')
    setProperty('help3.alpha', 0)
    setProperty('help3.x', 325)
    setProperty('help3.y', 400)

    makeLuaText("help4", 'Good luck, and do not die.', 0, 0, 0)
    addLuaText('help4');
    setTextSize('help4', 35);
    setObjectCamera('help4', 'other');
    setTextFont('help4', 'vcr.ttf');
    setTextColor('help4', '#FFFFFF')
    setTextBorder('help4', 2.5, 'black')
    setProperty('help4.alpha', 0)
    setProperty('help4.x', 375)
    setProperty('help4.y', 300)
end

function onStepHit()
    if curStep == 1824 then
    doTweenAlpha('help1','help1', 1, 1, 'linear')
    doTweenAlpha('helpAbad','helpAbad', 1, 1, 'linear')
    end
    if curStep == 1839 then
    doTweenAlpha('help2','help2', 1, 1, 'linear')
    end
    if curStep == 1855 then
    doTweenAlpha('help3','help3', 1, 1, 'linear')
    end
    if curStep == 1887 then
        doTweenAlpha('help1','help1', 0, 1, 'linear')
        doTweenAlpha('helpAbad','helpAbad', 0, 1, 'linear')
        doTweenAlpha('help2','help2', 0, 1, 'linear')
        doTweenAlpha('help3','help3', 0, 1, 'linear')
    end
    if curStep == 1903 then
        doTweenAlpha('help4','help4', 1, 1, 'linear')
    end
    if curStep == 1935 then
        doTweenAlpha('help4','help4', 0, 1, 'linear')
        setHealth(50/50)
    end
end