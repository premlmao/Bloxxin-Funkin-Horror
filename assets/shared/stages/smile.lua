function onCreate()
	-- background shit
	makeLuaSprite('smile', 'stages/smile', -520, -30);
	setScrollFactor('smile', 1, 1);
        setProperty('smile.antialiasing', false);


	addLuaSprite('smile', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end