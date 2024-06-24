function onCreate()
	-- background shit
	makeLuaSprite('forest', 'stages/forest', -300, -100);
	setScrollFactor('forest', 0.8, 0.8);

	makeLuaSprite('forestfloor', 'stages/forestfloor', -300, -100);
	setScrollFactor('forestfloor', 1, 1);

	makeLuaSprite('foresttree', 'stages/foresttree', -300, -100);
	setScrollFactor('foresttree', 1.7, 1.7);


	addLuaSprite('foresttree', true);
	addLuaSprite('forest', false);
	addLuaSprite('forestfloor', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end