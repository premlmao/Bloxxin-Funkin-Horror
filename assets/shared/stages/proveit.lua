function onCreate()
	-- lol this one code is always kept in these backgrounds :fire: -A coder

        makeLuaSprite('moon', 'stages/moon', -600, -600);
	setScrollFactor('moon', 0.02, 0.02);
        setProperty('moon.antialiasing', false);
	scaleObject ('moon', 3, 3);

	makeLuaSprite('proveitfog', 'stages/proveitfog', -1300, -750);
	setScrollFactor('proveitfog', 0.5, 0.5);
	scaleObject ('proveitfog', 3, 3);

	makeLuaSprite('proveitbacker', 'stages/proveitbacker', -1150, -750);
	setScrollFactor('proveitbacker', 0.1, 0.1);
        setProperty('proveitbacker.antialiasing', false);
	scaleObject ('proveitbacker', 3, 3);

	makeLuaSprite('proveitback', 'stages/proveitback', -1300, -750);
	setScrollFactor('proveitback', 0.2, 0.2);
        setProperty('proveitback.antialiasing', false);
	scaleObject ('proveitback', 3, 3);

	makeLuaSprite('proveitstage', 'stages/proveitstage', -1300, -730);
	setScrollFactor('proveitstage', 1, 1);
        setProperty('proveitstage.antialiasing', false);
	scaleObject ('proveitstage', 3, 3);

        makeLuaSprite('nightlight', 'stages/nightlight', -1300, -750);
	setScrollFactor('nightlight', 0.05, 0.05);
        setProperty('nightlight.antialiasing', false);
	scaleObject ('nightlight', 3, 3);

    	makeAnimatedLuaSprite('gracefuljohndive','stages/gracefuljohndive',-300,-100);
	addAnimationByPrefix('gracefuljohndive','dance','dive',15,true);
	objectPlayAnimation('gracefuljohndive','dance',false);
	setScrollFactor('gracefuljohndive', 0.4, 0.4);
	setProperty('gracefuljohndive.antialiasing', false);

	addLuaSprite('nightlight', false);
	addLuaSprite('proveitfog', true);
        addLuaSprite('proveitbacker', false);
        addLuaSprite('proveitback', false);
        addLuaSprite('proveitstage', false);
	addLuaSprite('moon', false);
	




end


function onBeatHit()
	--For ProveIt
    if curBeat == 214 and songName == "ProveIt" then

        addLuaSprite('gracefuljohndive', false);
end

    if curBeat == 224 and songName == "ProveIt" then

                removeLuaSprite('gracefuljohndive');
end

    if curBeat == 240 and songName == "ProveIt" then

		removeLuaSprite('nightlight');
		removeLuaSprite('proveitfog');
		removeLuaSprite('proveitbacker');
		removeLuaSprite('proveitback');
		removeLuaSprite('proveitstage');
		removeLuaSprite('moon');

        makeLuaSprite('nightlight', 'stages/nightlightclassic', -300, -100);
	setScrollFactor('nightlight', 0.05, 0.05);
        setProperty('nightlightclassic.antialiasing', false);

        makeLuaSprite('proveitstageclassic', 'stages/proveitstageclassic', -300, -100);
	setScrollFactor('proveitstageclassic', 1, 1);
        setProperty('proveitstageclassic.antialiasing', false);

        addLuaSprite('nightlightclassic', false);
        addLuaSprite('proveitstageclassic', false);
end
    if curBeat == 304 and songName == "ProveIt" then

		removeLuaSprite('nightlightclassic');
		removeLuaSprite('proveitstageclassic');

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
        if curBeat == 340 then
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