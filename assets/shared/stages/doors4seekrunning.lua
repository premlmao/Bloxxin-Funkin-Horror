function onCreate()
	-- lol this one code is always kept in these backgrounds :fire: -A coder

        makeAnimatedLuaSprite('doors4seekrunning','stages/doors4seekrunning',-300,-100)
        addAnimationByPrefix('doors4seekrunning','dance','running',15,true)
        objectPlayAnimation('doors4seekrunning','dance',false)
        setScrollFactor('doors4seekrunning', 1, 1);
	scaleObject ('doors4seekrunning', 1.75, 1.75);
        setProperty('doors4seekrunning.antialiasing', false);


	addLuaSprite('doors4seekrunning', false);
end