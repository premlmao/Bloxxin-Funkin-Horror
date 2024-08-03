function onCreate()
	-- background shit

	makeLuaSprite('stalkedstage', 'stages/stalkedstage', -500, -150);
	setScrollFactor('stalkedstage', 0.3, 0.3);
        setProperty('stalkedstage.antialiasing', false);

	makeAnimatedLuaSprite('classicfog','stages/classicfog',-700,-100)
        addAnimationByPrefix('classicfog', 'grin', 'fog', 10, true);
        objectPlayAnimation('classicfog','grin',true)
	setScrollFactor('classicfog', 1.2, 1.2);
        setProperty('classicfog.antialiasing', false);


        addLuaSprite('stalkedstage', false);
        addLuaSprite('classicfog', true);
end