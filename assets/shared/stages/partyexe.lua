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

	addLuaSprite('sky', false);
	addLuaSprite('partyexehouse', false);
	addLuaSprite('partyexehousefront', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end