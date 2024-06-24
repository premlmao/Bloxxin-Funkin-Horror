function onCreate()
	-- background shit

	makeLuaSprite('puzzlegame', 'stages/puzzlegame', -300, -100);
	setScrollFactor('puzzlegame', 1, 1);

	makeLuaSprite('mooncorrupted', 'stages/mooncorrupted', -300, -100);
	setScrollFactor('mooncorrupted', 0.02, 0.02);

	makeLuaSprite('night', 'stages/night', -300, -100);
	setScrollFactor('night', 0.05, 0.05);


        addLuaSprite('night', false);
        addLuaSprite('mooncorrupted', false);
        addLuaSprite('puzzlegame', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end