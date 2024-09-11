function onCreate()
	-- background shit

        makeAnimatedLuaSprite('rooms','stages/rooms',-700,90)
        addAnimationByPrefix('rooms','dance','run',20,true)
        objectPlayAnimation('rooms','dance',false)
        setScrollFactor('rooms', 1, 1);
	scaleObject ('rooms', 2.5, 2.5);
        setProperty('rooms.antialiasing', false);

        makeAnimatedLuaSprite('robloxbflegs','stages/robloxbflegs',650,800)
        addAnimationByPrefix('robloxbflegs','dance','run',20,true)
        objectPlayAnimation('robloxbflegs','dance',false)
        setScrollFactor('robloxbflegs', 1, 1);
	scaleObject ('robloxbflegs', 2.5, 2.5);
        setProperty('robloxbflegs.antialiasing', false);


        addLuaSprite('rooms', false);
        addLuaSprite('robloxbflegs', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end