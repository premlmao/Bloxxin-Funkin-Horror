function onCreate()
	-- background shit

	makeLuaSprite('puzzlegame', 'stages/puzzlegame', -300, -100);
	setScrollFactor('puzzlegame', 1, 1);
        setProperty('puzzlegame.antialiasing', false);

	makeLuaSprite('moonyellow', 'stages/moonyellow', -300, -300);
	setScrollFactor('moonyellow', 0.02, 0.02);
        setProperty('moonyellow.antialiasing', false);

	makeLuaSprite('redsky', 'stages/redsky', -300, -100);
	setScrollFactor('redsky', 0.05, 0.05);
        setProperty('redsky.antialiasing', false);


        addLuaSprite('redsky', false);
        addLuaSprite('moonyellow', false);
        addLuaSprite('puzzlegame', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end