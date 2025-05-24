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


        addLuaSprite('crossroadssky', false);
        addLuaSprite('crossroadsbacker', false);
        addLuaSprite('crossroadsback', false);
        addLuaSprite('crossroadsmap', false);
end

function onBeatHit()
    if curBeat == 332 then
		removeLuaSprite('crossroadsmap');
		removeLuaSprite('crossroadsback');
		removeLuaSprite('crossroadsbacker');
		removeLuaSprite('crossroadsfog');
		removeLuaSprite('crossroadssky');
		removeLuaSprite('tv');

	makeLuaSprite('pixelcrossroadsmap', 'stages/pixelcrossroadsmap', -302, 158);
	setScrollFactor('pixelcrossroadsmap', 1, 1);
	scaleObject ('pixelcrossroadsmap', 10, 10);
        setProperty('pixelcrossroadsmap.antialiasing', false);

	makeLuaSprite('pixelcrossroadsback', 'stages/pixelcrossroadsback', -302, -150);
	setScrollFactor('pixelcrossroadsback', 0.8, 0.8);
	scaleObject ('pixelcrossroadsback', 10, 10);
        setProperty('pixelcrossroadsback.antialiasing', false);

	makeLuaSprite('pixelcrossroadssky', 'stages/pixelcrossroadssky', -302, -208);
	setScrollFactor('pixelcrossroadssky', 0.05, 0.05);
	scaleObject ('pixelcrossroadssky', 10, 10);
        setProperty('pixelcrossroadssky.antialiasing', false);

        addLuaSprite('pixelcrossroadssky', false);
        addLuaSprite('pixelcrossroadsback', false);
        addLuaSprite('pixelcrossroadsmap', false);
	end
	if curBeat == 400 then
		removeLuaSprite('pixelcrossroadsmap');
		removeLuaSprite('pixelcrossroadsback');
		removeLuaSprite('pixelcrossroadsfog');
		removeLuaSprite('pixelcrossroadssky');


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


        addLuaSprite('crossroadssky', false);
        addLuaSprite('crossroadsbacker', false);
        addLuaSprite('crossroadsback', false);
        addLuaSprite('crossroadsmap', false);
end
end


