function onCreate()
	-- background shit

	makeLuaSprite('puzzlegame', 'stages/puzzlegame', -1300, -730);
	setScrollFactor('puzzlegame', 1, 1);
        setProperty('puzzlegame.antialiasing', false);
	scaleObject ('puzzlegame', 3, 3);

	makeLuaSprite('moonyellow', 'stages/moonyellow', -1300, -730);
	setScrollFactor('moonyellow', 0.02, 0.02);
        setProperty('moonyellow.antialiasing', false);
	scaleObject ('moonyellow', 3, 3);

	makeLuaSprite('night', 'stages/night', -1300, -750);
	setScrollFactor('night', 0.05, 0.05);
        setProperty('night.antialiasing', false);
	scaleObject ('night', 3, 3);


        addLuaSprite('night', false);
        addLuaSprite('moonyellow', false);
        addLuaSprite('puzzlegame', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end