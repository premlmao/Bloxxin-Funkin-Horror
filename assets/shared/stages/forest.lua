function onCreate()
	-- background shit
	makeLuaSprite('forest', 'stages/forest', -1300, -750);
	setScrollFactor('forest', 0.8, 0.8);
        setProperty('forest.antialiasing', false);
	scaleObject ('forest', 3, 3);

	makeLuaSprite('forestfloor', 'stages/forestfloor', -1300, -730);
	setScrollFactor('forestfloor', 1, 1);
        setProperty('forestfloor.antialiasing', false);
	scaleObject ('forestfloor', 3, 3);

	makeLuaSprite('foresttree', 'stages/foresttree', -1300, -730);
	setScrollFactor('foresttree', 1.7, 1.7);
        setProperty('foresttree.antialiasing', false);
	scaleObject ('foresttree', 3, 3);


	addLuaSprite('foresttree', true);
	addLuaSprite('forest', false);
	addLuaSprite('forestfloor', false);
end