function onCreate()
	-- background shit

	makeAnimatedLuaSprite('classicfog','stages/classicfog',-400,-100)
        addAnimationByPrefix('classicfog', 'grin', 'fog', 10, true);
        objectPlayAnimation('classicfog','grin',true)
	setScrollFactor('classicfog', 1.2, 1.2);
        setProperty('classicfog.antialiasing', false);

	makeLuaSprite('torturechamberfloor', 'stages/torturechamberfloor', -300, -100);
	setScrollFactor('torturechamberfloor', 1, 1);

	makeLuaSprite('torturechamber', 'stages/torturechamber', -300, -130);
	setScrollFactor('torturechamber', 0.7, 0.7);

	makeLuaSprite('torturechamberback', 'stages/torturechamberback', -300, -185);
	setScrollFactor('torturechamberback', 0.2, 0.2);

        addLuaSprite('torturechamberback', false);
        addLuaSprite('torturechamber', false);
        addLuaSprite('torturechamberfloor', false);
	addLuaSprite('classicfog', true);
end

function onBeatHit()
    if curBeat == 68 then
		removeLuaSprite('classicfog');
end

    if curBeat == 100 then
        removeLuaSprite('torturechamberback', false);
        removeLuaSprite('torturechamber', false);
        removeLuaSprite('torturechamberfloor', false);

	makeLuaSprite('spiritprofile', 'stages/spiritprofile', -300, -100);
	setScrollFactor('spiritprofile', 1, 1);

        addLuaSprite('spiritprofile', false);
end

    if curBeat == 164 then
		removeLuaSprite('spiritprofile');

        addLuaSprite('torturechamberback', false);
        addLuaSprite('torturechamber', false);
        addLuaSprite('torturechamberfloor', false);
end
end