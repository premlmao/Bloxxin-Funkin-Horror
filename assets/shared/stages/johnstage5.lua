function onCreate()
	-- background shit
	makeLuaSprite('johnstage5', 'stages/johnstage5', -300, -100);
	setScrollFactor('johnstage5', 0.5, 0.5);


	addLuaSprite('johnstage5', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end