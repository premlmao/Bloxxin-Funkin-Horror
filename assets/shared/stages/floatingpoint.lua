function onCreate()
	-- background shit
        makeAnimatedLuaSprite('floatingpoint','stages/floatingpoint',-320,-120)
        addAnimationByPrefix('floatingpoint','dance','glitch',24,true)
        objectPlayAnimation('floatingpoint','dance',false)
        setScrollFactor('floatingpoint', 0.05, 0.05);
        setProperty('floatingpoint.antialiasing', false);
        setProperty('floatingpoint.scale', 1.2);

        addLuaSprite('floatingpoint', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end