function onCreate()
	-- background shit

	makeLuaSprite('eggritual', 'stages/eggritual', -1300, -730);
	setScrollFactor('eggritual', 1, 1);
        setProperty('eggritual.antialiasing', false);
	scaleObject ('eggritual', 3, 3);

	makeLuaSprite('crossroadssky', 'stages/crossroadssky', -1300, -750);
	setScrollFactor('crossroadssky', 0.05, 0.05);
        setProperty('crossroadssky.antialiasing', false);
	scaleObject ('crossroadssky', 3, 3);


        addLuaSprite('crossroadssky', false);
        addLuaSprite('eggritual', false);

end
end

