function onCreate()
	-- lol this one code is always kept in these backgrounds :fire: -A coder

        makeAnimatedLuaSprite('proveitperspectiveback','stages/proveitperspectiveback',-200,-100)
        addAnimationByPrefix('proveitperspectiveback','dance','shake',5,true)
        objectPlayAnimation('proveitperspectiveback','dance',false)
        setScrollFactor('proveitperspectiveback', 0.3, 0.3);
	scaleObject ('proveitperspectiveback', 1.75, 1.75);
        setProperty('proveitperspectiveback.antialiasing', false);

        makeAnimatedLuaSprite('proveitperspective','stages/proveitperspective',-300,-100)
        addAnimationByPrefix('proveitperspective','dance','float',10,true)
        objectPlayAnimation('proveitperspective','dance',false)
        setScrollFactor('proveitperspective', 1, 1);
        scaleObject ('proveitperspective', 1.75, 1.75);
        setProperty('proveitperspective.antialiasing', false);


	addLuaSprite('proveitperspectiveback', false);
        addLuaSprite('proveitperspective', false);
end