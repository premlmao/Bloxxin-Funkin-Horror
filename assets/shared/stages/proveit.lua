function onCreate()
	-- lol this one code is always kept in these backgrounds :fire: -A coder

        makeLuaSprite('moon', 'stages/moon', -300, -100);
	setScrollFactor('moon', 0.02, 0.02);
        setProperty('moon.antialiasing', false);

	makeLuaSprite('proveitfog', 'stages/proveitfog', -300, -100);
	setScrollFactor('proveitfog', 0.5, 0.5);
        setProperty('proveitfog.antialiasing', false);

	makeLuaSprite('proveitbacker', 'stages/proveitbacker', -300, -300);
	setScrollFactor('proveitbacker', 0.1, 0.1);
        setProperty('proveitbacker.antialiasing', false);

	makeLuaSprite('proveitback', 'stages/proveitback', -300, -250);
	setScrollFactor('proveitback', 0.2, 0.2);
        setProperty('proveitback.antialiasing', false);

	makeLuaSprite('proveitstage', 'stages/proveitstage', -300, -100);
	setScrollFactor('proveitstage', 1, 1);
        setProperty('proveitstage.antialiasing', false);

        makeLuaSprite('nightlight', 'stages/nightlight', -300, -100);
	setScrollFactor('nightlight', 0.05, 0.05);
        setProperty('nightlight.antialiasing', false);

	addLuaSprite('nightlight', false);
	addLuaSprite('proveitfog', true);
        addLuaSprite('proveitbacker', false);
        addLuaSprite('proveitback', false);
        addLuaSprite('proveitstage', false);
	addLuaSprite('moon', false);
	




end


function onBeatHit()
	--For ProveIt
    if curBeat == 304 and songName == "ProveIt" then
		removeLuaSprite('nightlight');
		removeLuaSprite('proveitfog');
		removeLuaSprite('proveitbacker');
		removeLuaSprite('proveitback');
		removeLuaSprite('proveitstage');
		removeLuaSprite('moon');

		makeAnimatedLuaSprite('proveitperspectiveback','stages/proveitperspectiveback',-200,-100);
    	addAnimationByPrefix('proveitperspectiveback','dance','shake',5,true);
	    objectPlayAnimation('proveitperspectiveback','dance',false);
    	setScrollFactor('proveitperspectiveback', 0.3, 0.3);
        scaleObject ('proveitperspectiveback', 1.75, 1.75);
	    setProperty('proveitperspectiveback.antialiasing', false);

    	makeAnimatedLuaSprite('proveitperspective','stages/proveitperspective',-300,-100);
	    addAnimationByPrefix('proveitperspective','dance','float',10,true);
	    objectPlayAnimation('proveitperspective','dance',false);
	    setScrollFactor('proveitperspective', 1, 1);
	    scaleObject ('proveitperspective', 1.75, 1.75);
	    setProperty('proveitperspective.antialiasing', false);


        addLuaSprite('proveitperspectiveback', false);
	    addLuaSprite('proveitperspective', false);
	end

	if songName == "Deadline" then
        if curBeat == 280 then
		removeLuaSprite('nightlight');
		removeLuaSprite('proveitbacker');
		removeLuaSprite('proveitback');
		removeLuaSprite('proveitstage');
		removeLuaSprite('moon');

        makeLuaSprite('night', 'stages/night', -300, -100);
	setScrollFactor('night', 0.05, 0.05);

    	makeAnimatedLuaSprite('proveitfall','stages/proveitfall',-600,-100);
	    addAnimationByPrefix('proveitfall','dance','fall',30,true);
	    objectPlayAnimation('proveitfall','dance',false);
	    setScrollFactor('proveitfall', 1, 1);
	    scaleObject ('proveitfall', 1.75, 1.75);
	    setProperty('proveitfall.antialiasing', false);


    	makeAnimatedLuaSprite('proveitfallwind','stages/proveitfallwind',-300,-100);
	    addAnimationByPrefix('proveitfallwind','dance','fall',24,true);
	    objectPlayAnimation('proveitfallwind','dance',false);
	    setScrollFactor('proveitfallwind', 1.5, 1.5);
	    scaleObject ('proveitfallwind', 1.75, 1.75);

			addLuaSprite('proveitfallwind', true);
			addLuaSprite('proveitfall', false);
		end
	end	




end