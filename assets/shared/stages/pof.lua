function onCreate()
	-- lol this one code is always kept in these backgrounds :fire: -A coder

        makeLuaSprite('sky', 'stages/sky', -300, -100);
	setScrollFactor('sky', 0.05, 0.05);

        makeLuaSprite('poffog', 'stages/poffog', -300, -100);
	setScrollFactor('poffog', 0.5, 0.5);

	makeLuaSprite('pofplate', 'stages/pofplate', -300, -100);
	setScrollFactor('pofplate', 1, 1);

	makeAnimatedLuaSprite('pofplayers','stages/pofplayers',-200,-100)addAnimationByPrefix('pofplayers', 'grin', 'bop', 24, false);
	setScrollFactor('pofplayers', 1, 1);
	scaleObject ('pofplayers', 1.75, 1.75);
        setProperty('pofplayers.antialiasing', false);

        makeLuaSprite('pofmines', 'stages/pofmines', -300, -100);
	setScrollFactor('pofmines', 1, 1);

        makeLuaSprite('pofminesback', 'stages/pofminesback', -300, -100);
	setScrollFactor('pofminesback', 0.95, 0.95);

        makeLuaSprite('pofminesbacker', 'stages/pofminesbacker', -300, -100);
	setScrollFactor('pofminesbacker', 0.85, 0.85);


	addLuaSprite('sky', false);
        addLuaSprite('poffog', true);
        addLuaSprite('pofplate', false);
	addLuaSprite('pofplayers', false);
        addLuaSprite('pofmines', false);
        addLuaSprite('pofminesback', false);
        addLuaSprite('pofminesbacker', false);
end

function onBeatHit()
	objectPlayAnimation('pofplayers','grin',true)
end