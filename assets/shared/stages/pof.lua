function onCreate()
	-- lol this one code is always kept in these backgrounds :fire: -A coder

        makeLuaSprite('sky', 'stages/sky', -300, -100);
	setScrollFactor('sky', 0.05, 0.05);
        setProperty('sky.antialiasing', false);

	makeLuaSprite('pofplate', 'stages/pofplate', -300, -100);
	setScrollFactor('pofplate', 1, 1);
        setProperty('pofplate.antialiasing', false);


	addLuaSprite('sky', false);
        addLuaSprite('pofplate', false);
end