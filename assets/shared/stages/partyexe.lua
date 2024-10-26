function onCreate()
	-- background shit
	makeLuaSprite('partyexehouse', 'stages/partyexehouse', -360, -40);
	setScrollFactor('partyexehouse', 1, 1);
        setProperty('partyexehouse.antialiasing', false);

	makeLuaSprite('partyexehousefront', 'stages/partyexehousefront', -360, -40);
	setScrollFactor('partyexehousefront', 1, 1);
        setProperty('partyexehousefront.antialiasing', false);

	makeLuaSprite('sky', 'stages/sky', -300, -100);
	setScrollFactor('sky', 0.2, 0.2);
        setProperty('sky.antialiasing', false);

	addLuaSprite('sky', false);
	addLuaSprite('partyexehouse', false);
	addLuaSprite('partyexehousefront', true);
end

function onBeatHit()
    if curBeat == 158 then
		removeLuaSprite('sky');
		removeLuaSprite('partyexehouse');
		removeLuaSprite('partyexehousefront');

        makeLuaSprite('partyexevirus', 'stages/partyexevirus', -470, -100);
	setScrollFactor('partyexevirus', 1, 1);
        setProperty('partyexevirus.antialiasing', false);

	addLuaSprite('partyexevirus', false);

end
    if curBeat == 226 then
		removeLuaSprite('partyexevirus');

        makeLuaSprite('partyexelungs', 'stages/partyexelungs', -470, -100);
	setScrollFactor('partyexelungs', 1, 1);
        setProperty('partyexelungs.antialiasing', false);

	addLuaSprite('partyexelungs', false);
end
end