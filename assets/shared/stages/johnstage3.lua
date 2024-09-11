function onCreate()
	-- background shit
	makeLuaSprite('johnstage3', 'stages/johnstage3', -300, -100);
	setScrollFactor('johnstage3', 0.5, 0.5);


	addLuaSprite('johnstage3', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end