function onCreate()
	-- background shit

	makeLuaSprite('crossroadsmap', 'stages/crossroadsmap', -1300, -730);
	setScrollFactor('crossroadsmap', 1, 1);
        setProperty('crossroadsmap.antialiasing', false);
	scaleObject ('crossroadsmap', 3, 3);

	makeLuaSprite('crossroadsback', 'stages/crossroadsback', -1300, -750);
	setScrollFactor('crossroadsback', 0.8, 0.8);
        setProperty('crossroadsback.antialiasing', false);
	scaleObject ('crossroadsback', 3, 3);

	makeLuaSprite('crossroadsbacker', 'stages/crossroadsbacker', -1150, -750);
	setScrollFactor('crossroadsbacker', 0.2, 0.2);
        setProperty('crossroadsbacker.antialiasing', false);
	scaleObject ('crossroadsbacker', 3, 3);

	makeLuaSprite('crossroadssky', 'stages/crossroadssky', -1300, -750);
	setScrollFactor('crossroadssky', 0.05, 0.05);
        setProperty('crossroadssky.antialiasing', false);
	scaleObject ('crossroadssky', 3, 3);

	makeLuaSprite('redsky', 'stages/redsky', -1300, -750);
	setScrollFactor('redsky', 0.05, 0.05);
        setProperty('redsky.antialiasing', false);
	scaleObject ('redsky', 3, 3);


        addLuaSprite('redsky', false);
        addLuaSprite('crossroadssky', false);
        addLuaSprite('crossroadsbacker', false);
        addLuaSprite('crossroadsback', false);
        addLuaSprite('crossroadsmap', false);
end

function onBeatHit()
    if curBeat == 100 then

        doTweenAlpha('sky', 'crossroadssky', 0, 12, 'cubeInOut')

end
    if curBeat == 132 then

        makeAnimatedLuaSprite('1x1fly','stages/1x1fly',490,-720)
        addAnimationByPrefix('1x1fly','dance','kratos',24,true)
        objectPlayAnimation('1x1fly','dance',false)
        setScrollFactor('1x1fly', 0.8, 0.8);
	scaleObject ('1x1fly', 3, 3);
        setProperty('1x1fly.antialiasing', false);

        addLuaSprite('1x1fly', false);
end

    if curBeat == 136 then
		removeLuaSprite('crossroadsmap');
		removeLuaSprite('crossroadsback');
		removeLuaSprite('crossroadsbacker');
		removeLuaSprite('1x1fly');

	makeLuaSprite('crossroadsbacker2', 'stages/crossroadsbacker2', -1150, -750);
	setScrollFactor('crossroadsbacker2', 0.2, 0.2);
        setProperty('crossroadsbacker2.antialiasing', false);
	scaleObject ('crossroadsbacker2', 3, 3);

        addLuaSprite('crossroadsbacker2', false);

        doTweenAlpha('evilsky', 'redsky', 0, 25, 'cubeInOut')
        doTweenY('tower', 'crossroadsbacker2', -100, 30, 'cubeInOut')

end

    if curBeat == 244 then
		removeLuaSprite('redsky');
		removeLuaSprite('crossroadsbacker2');

	makeLuaSprite('crossroadsfiremap', 'stages/crossroadsfiremap', -1300, -730);
	setScrollFactor('crossroadsfiremap', 1, 1);
        setProperty('crossroadsfiremap.antialiasing', false);
	scaleObject ('crossroadsfiremap', 3, 3);

        makeAnimatedLuaSprite('crossroadsfireback','stages/crossroadsfireback',-1300,-750)
        addAnimationByPrefix('crossroadsfireback','dance','fire',24,true)
        objectPlayAnimation('crossroadsfireback','dance',false)
        setScrollFactor('crossroadsfireback', 0.8, 0.8);
	scaleObject ('crossroadsfireback', 3, 3);
        setProperty('crossroadsfireback.antialiasing', false);


        addLuaSprite('crossroadsfireback', false);
        addLuaSprite('crossroadsfiremap', false);
end
end


