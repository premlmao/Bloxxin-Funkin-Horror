function onCreate()
	-- background shit


	makeLuaSprite('happyhome', 'stages/happyhome', -300, -75);
	setScrollFactor('happyhome', 1, 1);

	makeLuaSprite('happyhomeback', 'stages/happyhomeback', -300, -100);
	setScrollFactor('happyhomeback', 0.8, 0.8);

	makeLuaSprite('night', 'stages/night', -300, -100);
	setScrollFactor('night', 0.05, 0.05);


        addLuaSprite('night', false);
        addLuaSprite('happyhomeback', false);
        addLuaSprite('happyhome', false);
end


