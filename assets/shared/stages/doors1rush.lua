function onCreate()
	-- lol this one code is always kept in these backgrounds :fire: -A coder

        makeAnimatedLuaSprite('doors1rush','stages/doors1rush',-300,-100)
        addAnimationByPrefix('doors1rush','dance','rush',15,true)
        objectPlayAnimation('doors1rush','dance',false)
        setScrollFactor('doors1rush', 1, 1);
	scaleObject ('doors1rush', 1.75, 1.75);
        setProperty('doors1rush.antialiasing', false);

	addLuaSprite('doors1rush', false);
end

function onBeatHit()
    if curBeat == 232 then
		removeLuaSprite('doors1rush');

        makeAnimatedLuaSprite('doors3seek','stages/doors3seek',-300,-200)
        addAnimationByPrefix('doors3seek','dance','raining',15,true)
        objectPlayAnimation('doors3seek','dance',false)
        setScrollFactor('doors3seek', 1, 1);
	scaleObject ('doors3seek', 1.75, 1.75);
        setProperty('doors3seek.antialiasing', false);

	addLuaSprite('doors3seek', false);
end
    if curBeat == 344 then
		removeLuaSprite('doors3seek');

        makeAnimatedLuaSprite('doors4seekrunning','stages/doors4seekrunning',-300,-100)
        addAnimationByPrefix('doors4seekrunning','dance','running',15,true)
        objectPlayAnimation('doors4seekrunning','dance',false)
        setScrollFactor('doors4seekrunning', 1, 1);
	scaleObject ('doors4seekrunning', 1.75, 1.75);
        setProperty('doors4seekrunning.antialiasing', false);

	addLuaSprite('doors4seekrunning', false);
end
    if curBeat == 412 then
		removeLuaSprite('doors4seekrunning');

        makeAnimatedLuaSprite('doors2screech','stages/doors2screech',-100,-400)
        addAnimationByPrefix('doors2screech','dance','walk',15,true)
        objectPlayAnimation('doors2screech','dance',false)
        setScrollFactor('doors2screech', 0.9, 0.9);
	scaleObject ('doors2screech', 1.75, 1.75);
        setProperty('doors2screech.antialiasing', false);

	addLuaSprite('doors2screech', false);
end
    if curBeat == 548 then
		removeLuaSprite('doors2screech');

	makeLuaSprite('doors5dupe', 'stages/doors5dupe', -300, 40);
	setScrollFactor('doors5dupe', 1, 1);
	scaleObject ('doors5dupe', 1.25, 1.25);

	addLuaSprite('doors5dupe', false);
end
    if curBeat == 764 then
		removeLuaSprite('doors5dupe');

        makeAnimatedLuaSprite('doors1rush','stages/doors1rush',-300,-100)
        addAnimationByPrefix('doors1rush','dance','rush',15,true)
        objectPlayAnimation('doors1rush','dance',false)
        setScrollFactor('doors1rush', 1, 1);
	scaleObject ('doors1rush', 1.75, 1.75);
        setProperty('doors1rush.antialiasing', false);

	addLuaSprite('doors1rush', false);
end
    if curBeat == 898 then
		removeLuaSprite('doors1rush');

        makeAnimatedLuaSprite('doors6figure','stages/doors6figure',-300,-100)
        addAnimationByPrefix('doors6figure','dance','flicker',15,true)
        objectPlayAnimation('doors6figure','dance',false)
        setScrollFactor('doors6figure', 1, 1);
        setProperty('doors6figure.antialiasing', false);

	addLuaSprite('doors6figure', false);
end
end