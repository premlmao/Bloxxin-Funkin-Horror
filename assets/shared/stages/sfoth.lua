function onCreate()
	-- lol this one code is always kept in these backgrounds :fire: -A coder

        makeLuaSprite('sfothsky', 'stages/sfothsky', -300, -100);
	setScrollFactor('sfothsky', 0.05, 0.05);
        setProperty('sfothsky.antialiasing', false);

        makeLuaSprite('moon', 'stages/moon', -300, -100);
	setScrollFactor('moon', 0.02, 0.02);
        setProperty('moon.antialiasing', false);

        makeAnimatedLuaSprite('sfothrain','stages/sfothrain',-300,-100)
        addAnimationByPrefix('sfothrain','dance','raining',40,true)
        objectPlayAnimation('sfothrain','dance',false)
        setScrollFactor('sfothrain', 1.5, 1.5);
	scaleObject ('sfothrain', 1.75, 1.75);
        setProperty('sfothrain.antialiasing', false);

        makeLuaSprite('sfothbridge', 'stages/sfothbridge', -300, -100);
	setScrollFactor('sfothbridge', 1, 1);
        setProperty('sfothbridge.antialiasing', false);

        makeLuaSprite('sfothback', 'stages/sfothback', -300, -100);
	setScrollFactor('sfothback', 0.2, 0.2);
        setProperty('sfothback.antialiasing', false);

        makeLuaSprite('sfothbacker', 'stages/sfothbacker', -300, -100);
	setScrollFactor('sfothbacker', 0.1, 0.1);
        setProperty('sfothbacker.antialiasing', false);

        makeLuaSprite('sfothfog', 'stages/sfothfog', -300, -100);
	setScrollFactor('sfothfog', 0.5, 0.5);

	addLuaSprite('sfothsky', false);
	addLuaSprite('moon', false);
        addLuaSprite('sfothrain', true);
	addLuaSprite('sfothbacker', false);
	addLuaSprite('sfothback', false);
        addLuaSprite('sfothbridge', false);
	addLuaSprite('sfothfog', true);
end

function onBeatHit()
    if curBeat == 462 then
		removeLuaSprite('sfothsky');
		removeLuaSprite('moon');
                removeLuaSprite('sfothrain');
              	removeLuaSprite('sfothbacker');
		removeLuaSprite('sfothback');
		removeLuaSprite('sfothbridge');
		removeLuaSprite('sfothfog');

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
end