function onCreate()
	-- lol this one code is always kept in these backgrounds :fire: -A coder

	makeAnimatedLuaSprite('proveitlaugh','stages/proveitlaugh',-200,-100)addAnimationByPrefix('proveitlaugh', 'grin', 'laugh', 44, false);
	setScrollFactor('proveitlaugh', 1, 1);
	scaleObject ('proveitlaugh', 3, 3);
        setProperty('proveitlaugh.antialiasing', false);

        addLuaSprite('proveitlaugh', false);
end

function onBeatHit()
	objectPlayAnimation('proveitlaugh','grin',true)
end