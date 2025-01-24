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

function onBeatHit()
    if curBeat == 328 then
		removeLuaSprite('ndslobby');

	makeLuaSprite('ndslobbycorrupt', 'stages/ndslobbycorrupt', -300, -100);
	setScrollFactor('ndslobbycorrupt', 1, 1);
        setProperty('ndslobbycorrupt.antialiasing', false);

        addLuaSprite('ndslobbycorrupt', false);
end
end