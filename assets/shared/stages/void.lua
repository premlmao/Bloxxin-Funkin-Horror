function onCreate()
    makeAnimatedLuaSprite('voidsky','stages/voidsky',-420,-100);
    addAnimationByPrefix('voidsky','dance','spin',10,true);
    objectPlayAnimation('voidsky','dance',false);
    setScrollFactor('voidsky', 0.05, 0.05);
    setProperty('voidsky.antialiasing', false);

    makeLuaSprite('voidpillarfront', 'stages/voidpillarfront', -580, 100);
    setScrollFactor('voidpillarfront', 1.5, 1.5);
    setProperty('voidsky.antialiasing', false);

    makeLuaSprite('voidpillarback', 'stages/voidpillarback', -490, 0);
    setScrollFactor('voidpillarback', 0.8, 0.8);
    setProperty('voidsky.antialiasing', false);

    makeLuaSprite('voidpillarbacker', 'stages/voidpillarbacker', -420, -100);
    setScrollFactor('voidpillarbacker', 0.3, 0.3);
    setProperty('voidsky.antialiasing', false);

    makeLuaSprite('voidstand', 'stages/voidstand', -500, -20);
    setScrollFactor('voidstand', 1, 1);
    setProperty('voidsky.antialiasing', false);

    makeLuaSprite('voidfog', 'stages/voidfog', -300, -150);
    setScrollFactor('voidfog', 0, 0);

      addLuaSprite('voidsky', false);
      addLuaSprite('voidpillarfront', true);
      addLuaSprite('voidpillarback', false);
      addLuaSprite('voidpillarbacker', false);
      addLuaSprite('voidstand', false);
      addLuaSprite('voidfog', true);
end

function onBeatHit()
    if curBeat == 336 then
        makeAnimatedLuaSprite('voidstatic','stages/voidstatic',-120,100);
        addAnimationByPrefix('voidstatic','dance','static',10,true);
        objectPlayAnimation('voidstatic','dance',false);
        setScrollFactor('voidstatic', 0.8, 0.8);
	scaleObject ('voidstatic', 0.75, 0.75);
        setProperty('voidstatic.antialiasing', false);

        addLuaSprite('voidstatic', true);
end
    if curBeat == 400 then
        removeLuaSprite('voidstatic');
end
end