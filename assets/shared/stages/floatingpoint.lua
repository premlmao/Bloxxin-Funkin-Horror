function onCreate()
	-- background shit
        makeAnimatedLuaSprite('floatingpoint','stages/floatingpoint',-300,-100)
        addAnimationByPrefix('floatingpoint','dance','glitch',24,true)
        objectPlayAnimation('floatingpoint','dance',false)
        setScrollFactor('floatingpoint', 0.05, 0.05);
        setProperty('floatingpoint.antialiasing', false);

        addLuaSprite('floatingpoint', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end