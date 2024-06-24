function onCreate()
	-- lol this one code is always kept in these backgrounds :fire: -A coder

        makeLuaSprite('night', 'stages/night', -300, -100);
	setScrollFactor('night', 0.05, 0.05);
        setProperty('night.antialiasing', false);

        makeLuaSprite('mooncorrupted', 'stages/mooncorrupted', -300, -100);
	setScrollFactor('mooncorrupted', 0.02, 0.02);
        setProperty('mooncorrupted.antialiasing', false);

        makeLuaSprite('sfothbridge2', 'stages/sfothbridge2', -300, -100);
	setScrollFactor('sfothbridge2', 1, 1);
        setProperty('sfothbridge2.antialiasing', false);

        makeAnimatedLuaSprite('messanger','stages/messanger',400,280)
        addAnimationByPrefix('messanger','dance','jiggy',20,true)
        objectPlayAnimation('messanger','dance',false)
        setScrollFactor('messanger', 1, 1);
	scaleObject ('messanger', 1.1, 1.1);
        setProperty('messanger.antialiasing', false);

        makeAnimatedLuaSprite('messanger2','stages/messanger2',1200,330)
        addAnimationByPrefix('messanger2','dance','jiggy',20,true)
        objectPlayAnimation('messanger2','dance',false)
        setScrollFactor('messanger2', 1, 1);
	scaleObject ('messanger2', 1.2, 1.2);
        setProperty('messanger2.antialiasing', false);

        makeAnimatedLuaSprite('messanger3','stages/messanger3',500,200)
        addAnimationByPrefix('messanger3','dance','jiggy',20,true)
        objectPlayAnimation('messanger3','dance',false)
        setScrollFactor('messanger3', 1, 1);
	scaleObject ('messanger3', 1.2, 1.2);
        setProperty('messanger3.antialiasing', false);

	addLuaSprite('night', false);
	addLuaSprite('mooncorrupted', false);
        addLuaSprite('sfothbridge2', false);
	addLuaSprite('messanger', false);
	addLuaSprite('messanger2', false);
	addLuaSprite('messanger3', false);
end