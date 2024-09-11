function onCreate()
	-- background shit
	makeLuaSprite('johnstage1', 'stages/johnstage1', -300, -100);
	setScrollFactor('johnstage1', 0.5, 0.5);


	addLuaSprite('johnstage1', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end