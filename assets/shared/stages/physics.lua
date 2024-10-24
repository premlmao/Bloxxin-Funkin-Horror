function onCreate()
	-- background shit

	makeLuaSprite('physicsstage', 'stages/physicsstage', 700, 410);
	setScrollFactor('physicsstage', 1, 1);
        setProperty('physicsstage.antialiasing', false);

	makeLuaSprite('white', 'stages/white', -300, -200);
	setScrollFactor('white', 0.05, 0.05);

        addLuaSprite('white', false);
        addLuaSprite('physicsstage', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end