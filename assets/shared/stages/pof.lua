function onCreate()
	-- lol this one code is always kept in these backgrounds :fire: -A coder

        makeLuaSprite('sky', 'stages/sky', -300, -100);
	setScrollFactor('sky', 0.05, 0.05);
        setProperty('sky.antialiasing', false);

	makeLuaSprite('pofplate', 'stages/pofplate', -300, -100);
	setScrollFactor('pofplate', 1, 1);
        setProperty('pofplate.antialiasing', false);


	addLuaSprite('sky', false);
        addLuaSprite('pofplate', false);
end


function onBeatHit()
    if curBeat == 96 then
		removeLuaSprite('sky');
		removeLuaSprite('pofplate');

        makeAnimatedLuaSprite('floatingpoint','stages/floatingpoint',-320,-120)
        addAnimationByPrefix('floatingpoint','dance','glitch',24,true)
        objectPlayAnimation('floatingpoint','dance',false)
        setScrollFactor('floatingpoint', 0.05, 0.05);
        setProperty('floatingpoint.antialiasing', false);

	makeLuaSprite('pofplate', 'stages/pofplate', -300, -100);
	setScrollFactor('pofplate', 1, 1);
        setProperty('pofplate.antialiasing', false);

        addLuaSprite('floatingpoint', false);
        addLuaSprite('pofplate', false);
end
    if curBeat == 160 then

	makeLuaSprite('pofmines', 'stages/pofmines', -300, -100);
	setScrollFactor('pofmines', 1, 1);
        setProperty('pofmines.antialiasing', false);

        addLuaSprite('pofmines', false);
end
end

