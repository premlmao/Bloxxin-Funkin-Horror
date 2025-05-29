function onCreate()
	-- background shit

	makeLuaSprite('happyhometv', 'stages/happyhometv', -1300, -730);
	setScrollFactor('happyhometv', 1.2, 1.2);
        setProperty('happyhometv.antialiasing', false);
	scaleObject ('happyhometv', 3, 3);

	makeLuaSprite('happyhome', 'stages/happyhome', -1300, -730);
	setScrollFactor('happyhome', 1, 1);
        setProperty('happyhome.antialiasing', false);
	scaleObject ('happyhome', 3, 3);

	makeLuaSprite('nightlight', 'stages/nightlight', -1300, -750);
	setScrollFactor('nightlight', 0.05, 0.05);
        setProperty('nightlight.antialiasing', false);
	scaleObject ('nightlight', 3, 3);


        addLuaSprite('nightlight', false);
        addLuaSprite('happyhometv', true);
        addLuaSprite('happyhome', false);
end


