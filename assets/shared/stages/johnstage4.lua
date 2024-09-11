function onCreate()
	-- background shit
	makeLuaSprite('johnstage4', 'stages/johnstage4', -300, -100);
	setScrollFactor('johnstage4', 0.5, 0.5);


	addLuaSprite('johnstage4', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end