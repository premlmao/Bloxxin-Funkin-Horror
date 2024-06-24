function onCreate()
	-- background shit
	makeLuaSprite('computer', 'stages/computer', -300, -100);
	setScrollFactor('computer', 1, 1);


        addLuaSprite('computer', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end