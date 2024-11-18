function onCreate()
	-- background shit
	makeLuaSprite('foolsstage', 'stages/foolsstage', -350, -50);
	setScrollFactor('foolsstage', 1, 1);


        addLuaSprite('foolsstage', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end