function onCreate()
	-- lol this one code is always kept in these backgrounds :fire: -A coder

        makeLuaSprite('night', 'stages/night', -300, -100);
	setScrollFactor('night', 0.05, 0.05);

        makeLuaSprite('moon', 'stages/moon', -300, -100);
	setScrollFactor('moon', 0.02, 0.02);

        makeAnimatedLuaSprite('sfothrain','stages/sfothrain',-300,-100)
        addAnimationByPrefix('sfothrain','dance','raining',40,true)
        objectPlayAnimation('sfothrain','dance',false)
        setScrollFactor('sfothrain', 1.5, 1.5);
	scaleObject ('sfothrain', 1.75, 1.75);
        setProperty('sfothrain.antialiasing', false);

        makeAnimatedLuaSprite('sfothbridge','stages/sfothbridge',-400,-250)
        addAnimationByPrefix('sfothbridge','dance','splash',50,true)
        objectPlayAnimation('sfothbridge','dance',false)
        setScrollFactor('sfothbridge', 1, 1);
	scaleObject ('sfothbridge', 1.75, 1.75);
        setProperty('sfothbridge.antialiasing', false);

        makeLuaSprite('sfothback', 'stages/sfothback', -300, -100);
	setScrollFactor('sfothback', 0.2, 0.2);

        makeLuaSprite('sfothfog', 'stages/sfothfog', -300, -100);
	setScrollFactor('sfothfog', 0.5, 0.5);


	addLuaSprite('night', false);
	addLuaSprite('moon', false);
        addLuaSprite('sfothrain', true);
	addLuaSprite('sfothback', false);
        addLuaSprite('sfothbridge', false);
	addLuaSprite('sfothfog', false);
end