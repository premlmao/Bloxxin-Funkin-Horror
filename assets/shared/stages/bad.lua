function onCreate()
	-- background shit
	makeLuaSprite('bad', 'stages/bad', -300, -300);
	setScrollFactor('bad', 0.8, 0.8);
	scaleObject ('bad', 2.5, 2.5);
        setProperty('bad.antialiasing', false);


	addLuaSprite('bad', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end