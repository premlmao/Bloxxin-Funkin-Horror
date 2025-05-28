function onCreate()
	-- background shit

	makeLuaSprite('torturechamberfloor', 'stages/torturechamberfloor', -1300, -730);
	setScrollFactor('torturechamberfloor', 1, 1);
        setProperty('torturechamberfloor.antialiasing', false);
	scaleObject ('torturechamberfloor', 3, 3);

	makeLuaSprite('torturechamberback', 'stages/torturechamberback', -1300, -800);
	setScrollFactor('torturechamberback', 0.5, 0.5);
        setProperty('torturechamberback.antialiasing', false);
	scaleObject ('torturechamberback', 3, 3);

        addLuaSprite('torturechamberback', false); 
        addLuaSprite('torturechamberfloor', false);
end

function onBeatHit()
    if curBeat == 100 then
        removeLuaSprite('torturechamberback', false);
        removeLuaSprite('torturechamberfloor', false);

	makeLuaSprite('spiritprofile', 'stages/spiritprofile', -300, -100);
	setScrollFactor('spiritprofile', 1, 1);
        setProperty('spiritprofile.antialiasing', false);

        addLuaSprite('spiritprofile', false);
end

    if curBeat == 164 then
		removeLuaSprite('spiritprofile');

        addLuaSprite('torturechamberback', false);
        addLuaSprite('torturechamberfloor', false);
end
end