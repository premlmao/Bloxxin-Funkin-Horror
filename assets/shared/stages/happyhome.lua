function onCreate()
	-- background shit

	makeLuaSprite('happyhometv', 'stages/happyhometv', -300, -100);
	setScrollFactor('happyhometv', 1.2, 1.2);
        setProperty('happyhometv.antialiasing', false);

	makeLuaSprite('happyhome', 'stages/happyhome', -300, -100);
	setScrollFactor('happyhome', 1, 1);
        setProperty('happyhome.antialiasing', false);

	makeLuaSprite('night', 'stages/night', -300, -100);
	setScrollFactor('night', 0.05, 0.05);
        setProperty('night.antialiasing', false);


        addLuaSprite('night', false);
        addLuaSprite('happyhometv', true);
        addLuaSprite('happyhome', false);
end


