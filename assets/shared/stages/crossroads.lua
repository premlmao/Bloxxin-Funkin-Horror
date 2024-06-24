function onCreate()
	-- background shit

	makeLuaSprite('tv', 'stages/tv', -1100, -500);
	setScrollFactor('tv', 0, 0);
	scaleObject ('tv', 1.75, 1.75);

	makeLuaSprite('crossroadsmap', 'stages/crossroadsmap', -300, -80);
	setScrollFactor('crossroadsmap', 1, 1);

	makeLuaSprite('crossroadsback', 'stages/crossroadsback', -300, -100);
	setScrollFactor('crossroadsback', 0.8, 0.8);

	makeLuaSprite('crossroadsfog', 'stages/crossroadsfog', -300, -100);
	setScrollFactor('crossroadsfog', 0.5, 0.5);

	makeLuaSprite('crossroadssky', 'stages/crossroadssky', -300, -100);
	setScrollFactor('crossroadssky', 0.05, 0.05);


        addLuaSprite('crossroadsfog', true);
        addLuaSprite('tv', true);
        addLuaSprite('crossroadssky', false);
        addLuaSprite('crossroadsback', false);
        addLuaSprite('crossroadsmap', false);
end

function onBeatHit()
    if curBeat == 192 then
		removeLuaSprite('crossroadsmap');
		removeLuaSprite('crossroadsback');
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
	if curBeat == 256 then
		removeLuaSprite('pixelcrossroadsmap');
		removeLuaSprite('pixelcrossroadsback');
		removeLuaSprite('pixelcrossroadsfog');
		removeLuaSprite('pixelcrossroadssky');

	makeLuaSprite('tv', 'stages/tv', -1100, -500);
	setScrollFactor('tv', 0, 0);
	scaleObject ('tv', 1.75, 1.75);

	makeLuaSprite('crossroadsmap', 'stages/crossroadsmap', -300, -80);
	setScrollFactor('crossroadsmap', 1, 1);

	makeLuaSprite('crossroadsback', 'stages/crossroadsback', -300, -100);
	setScrollFactor('crossroadsback', 0.8, 0.8);

	makeLuaSprite('crossroadsfog', 'stages/crossroadsfog', -300, -100);
	setScrollFactor('crossroadsfog', 0.5, 0.5);

	makeLuaSprite('crossroadssky', 'stages/crossroadssky', -300, -100);
	setScrollFactor('crossroadssky', 0.05, 0.05);

        addLuaSprite('crossroadsfog', true);
        addLuaSprite('tv', true);
        addLuaSprite('crossroadssky', false);
        addLuaSprite('crossroadsback', false);
        addLuaSprite('crossroadsmap', false);
end
end


