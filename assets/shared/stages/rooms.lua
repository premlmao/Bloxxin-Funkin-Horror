function onCreate()
	-- background shit

        makeAnimatedLuaSprite('roomswalk','stages/roomswalk',300,0)
        addAnimationByPrefix('roomswalk','dance','walk',10,true)
        objectPlayAnimation('roomswalk','dance',false)
        setScrollFactor('roomswalk', 0.7, 0.7);
        setProperty('roomswalk.antialiasing', false);

        addLuaSprite('roomswalk', false);
end

function onBeatHit()
    if curBeat == 88 then
		removeLuaSprite('roomswalk');

        makeAnimatedLuaSprite('rooms','stages/rooms',-700,90)
        addAnimationByPrefix('rooms','dance','run',20,true)
        objectPlayAnimation('rooms','dance',false)
        setScrollFactor('rooms', 1, 1);
	scaleObject ('rooms', 2.5, 2.5);
        setProperty('rooms.antialiasing', false);

        makeAnimatedLuaSprite('robloxbflegs','stages/robloxbflegs',650,800)
        addAnimationByPrefix('robloxbflegs','dance','run',20,true)
        objectPlayAnimation('robloxbflegs','dance',false)
        setScrollFactor('robloxbflegs', 1, 1);
	scaleObject ('robloxbflegs', 2.5, 2.5);
        setProperty('robloxbflegs.antialiasing', false);


        addLuaSprite('rooms', false);
        addLuaSprite('robloxbflegs', false);
end

    if curBeat == 222 then
		removeLuaSprite('rooms');
		removeLuaSprite('robloxbflegs');

        makeLuaSprite('roomslocker', 'stages/roomslocker', -300, -100);
	setScrollFactor('roomslocker', 1, 1);
        setProperty('roomslocker.antialiasing', false);

	addLuaSprite('roomslocker', false);
end

    if curBeat == 350 then
		removeLuaSprite('roomslocker');

        makeLuaSprite('rooms200locker', 'stages/rooms200locker', -300, -100);
	setScrollFactor('rooms200locker', 1, 1);
        setProperty('rooms200locker.antialiasing', false);

        addLuaSprite('rooms200locker', true);
end

    if curBeat == 414 then
		removeLuaSprite('rooms200locker');

        makeAnimatedLuaSprite('runpovrooms','stages/runpovrooms',-300,-100)
        addAnimationByPrefix('runpovrooms','dance','roomspov run',15,true)
        objectPlayAnimation('runpovrooms','dance',false)
        setScrollFactor('runpovrooms', 1, 1);
	scaleObject ('runpovrooms', 2.5, 2.5);
        setProperty('runpovrooms.antialiasing', false);

        addLuaSprite('runpovrooms', false);
end
end