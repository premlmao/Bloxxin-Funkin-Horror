function onCreate()
	-- background shit

	makeLuaSprite('ndslobby', 'stages/ndslobby', -300, -100);
	setScrollFactor('ndslobby', 1, 1);
        setProperty('ndslobby.antialiasing', false);

	makeLuaSprite('night', 'stages/night', -300, -100);
	setScrollFactor('night', 0.05, 0.05);
        setProperty('night.antialiasing', false);


        addLuaSprite('night', false);
        addLuaSprite('ndslobby', false);
end