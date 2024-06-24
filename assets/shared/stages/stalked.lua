function onCreate()
	-- background shit

	makeAnimatedLuaSprite('stalkedstage','stages/stalkedstage',-500,-150)
        addAnimationByPrefix('stalkedstage', 'grin', 'bop', 10, false);
	setScrollFactor('stalkedstage', 0.3, 0.3);
        setProperty('stalkedstage.antialiasing', false);

	makeAnimatedLuaSprite('classicfog','stages/classicfog',-700,-100)
        addAnimationByPrefix('classicfog', 'grin', 'fog', 15, false);
	setScrollFactor('classicfog', 1.2, 1.2);
        setProperty('classicfog.antialiasing', false);

        addLuaSprite('stalkedstage', false);
        addLuaSprite('classicfog', true);
end

function onBeatHit()
	objectPlayAnimation('stalkedstage','grin',true)
end