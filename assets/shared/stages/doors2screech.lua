function onCreate()
	-- lol this one code is always kept in these backgrounds :fire: -A coder

        makeAnimatedLuaSprite('doors2screech','stages/doors2screech',-100,-400)
        addAnimationByPrefix('doors2screech','dance','walk',15,true)
        objectPlayAnimation('doors2screech','dance',false)
        setScrollFactor('doors2screech', 0.9, 0.9);
	scaleObject ('doors2screech', 1.75, 1.75);
        setProperty('doors2screech.antialiasing', false);


	addLuaSprite('doors2screech', false);
end