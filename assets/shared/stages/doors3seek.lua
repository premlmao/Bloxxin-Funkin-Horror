function onCreate()
	-- lol this one code is always kept in these backgrounds :fire: -A coder

        makeAnimatedLuaSprite('doors3seek','stages/doors3seek',-300,-200)
        addAnimationByPrefix('doors3seek','dance','raining',15,true)
        objectPlayAnimation('doors3seek','dance',false)
        setScrollFactor('doors3seek', 1, 1);
	scaleObject ('doors3seek', 1.75, 1.75);
        setProperty('doors3seek.antialiasing', false);


	addLuaSprite('doors3seek', false);
end