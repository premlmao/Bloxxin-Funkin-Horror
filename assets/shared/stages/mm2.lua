function onCreate()
	-- background shit
	makeLuaSprite('mm2', 'stages/mm2', -250, 140);
	setScrollFactor('mm2', 1, 1);
	scaleObject ('mm2', 1.1, 1.1);

	makeLuaSprite('mm2ceiling', 'stages/mm2ceiling', -450, 20);
	setScrollFactor('mm2ceiling', 1.2, 1.2);
	scaleObject ('mm2ceiling', 1.3, 1.3);


	addLuaSprite('mm2', false);
	addLuaSprite('mm2ceiling', true);
end
	
function onBeatHit()
    if curBeat == 192 then
        makeAnimatedLuaSprite('mm2text','stages/mm2text',330,150);
        addAnimationByPrefix('mm2text','dance','bop',5,true);
	objectPlayAnimation('mm2text','dance',true)
        setScrollFactor('mm2text', 0, 0);

        addLuaSprite('mm2text', true);
end

    if curBeat == 224 then
        removeLuaSprite('mm2text');
end
end