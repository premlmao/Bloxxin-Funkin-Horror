function onCreate()
	-- background shit
	makeLuaSprite('johnstage2', 'stages/johnstage2', -300, -100);
	setScrollFactor('johnstage2', 0.5, 0.5);


	addLuaSprite('johnstage2', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end