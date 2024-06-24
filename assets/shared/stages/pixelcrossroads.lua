function onCreate()
	-- background shit

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
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end