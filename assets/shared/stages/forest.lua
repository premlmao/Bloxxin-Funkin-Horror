function onCreate()
	-- background shit
	makeLuaSprite('forest', 'stages/forest', -300, -100);
	setScrollFactor('forest', 0.8, 0.8);
        setProperty('forest.antialiasing', false);

	makeLuaSprite('forestfloor', 'stages/forestfloor', -300, -100);
	setScrollFactor('forestfloor', 1, 1);
        setProperty('forestfloor.antialiasing', false);

	makeLuaSprite('foresttree', 'stages/foresttree', -300, -100);
	setScrollFactor('foresttree', 1.7, 1.7);
        setProperty('foresttree.antialiasing', false);

	makeLuaSprite('rustcomputer', 'stages/rustcomputer', -400, 1000);
	setScrollFactor('rustcomputer', 0.8, 0.8);
        setProperty('rustcomputer.antialiasing', false);


	addLuaSprite('foresttree', true);
	addLuaSprite('forest', false);
	addLuaSprite('forestfloor', false);
	addLuaSprite('rustcomputer', false);
	
end

function onBeatHit()
    if curBeat == 177 then
        doTweenY('computer', 'rustcomputer', -100, 1, 'cubeInOut')
        doTweenY('forestf', 'forestfloor', -500, 1, 'cubeInOut')
        doTweenY('forest', 'forest', -500, 1, 'cubeInOut')
        doTweenY('tree', 'foresttree', -1000, 1, 'cubeInOut')
        doTweenAlpha('boygrend', 'boyfriend', 0, 1, 'cubeInOut')
end
    if curBeat == 320 then
	removeLuaSprite('rustcomputer', false);

        doTweenAlpha('boygrend', 'boyfriend', 1, 0.01, 'cubeInOut')
        doTweenY('forestf', 'forestfloor', -100, 0.01, 'cubeInOut')
        doTweenY('forest', 'forest', -100, 0.01, 'cubeInOut')
        doTweenY('tree', 'foresttree', -100, 0.01, 'cubeInOut')
end
end