--[[local xx = 400;
local yy = 500;
local xx2 = 800;
local yy2 = 500;
local ofs = 30;]]--

function onCreate()
	-- background shit

	makeAnimatedLuaSprite('classicfog','stages/classicfog',-400,-100)
        addAnimationByPrefix('classicfog', 'grin', 'fog', 10, true);
        objectPlayAnimation('classicfog','grin',true)
	setScrollFactor('classicfog', 1.2, 1.2);
        setProperty('classicfog.antialiasing', false);

	makeLuaSprite('torturechamberfloor', 'stages/torturechamberfloor', -300, -100);
	setScrollFactor('torturechamberfloor', 1, 1);
        setProperty('torturechamberfloor.antialiasing', false);

	makeLuaSprite('torturechamber', 'stages/torturechamber', -300, -130);
	setScrollFactor('torturechamber', 0.7, 0.7);
        setProperty('torturechamber.antialiasing', false);

	makeLuaSprite('torturechamberback', 'stages/torturechamberback', -300, -185);
	setScrollFactor('torturechamberback', 0.2, 0.2);
        setProperty('torturechamberback.antialiasing', false);

        addLuaSprite('torturechamberback', false);
        addLuaSprite('torturechamber', false);
        addLuaSprite('torturechamberfloor', false);
	addLuaSprite('classicfog', true);
end

--[[function onUpdate()
        if mustHitSection == false then
                if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                        triggerEvent('Camera Follow Pos',xx-ofs,yy)
                end
                if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                        triggerEvent('Camera Follow Pos',xx+ofs,yy)
                end
                if getProperty('dad.animation.curAnim.name') == 'singUP' then
                        triggerEvent('Camera Follow Pos',xx,yy-ofs)
                end
                if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                        triggerEvent('Camera Follow Pos',xx,yy+ofs)
                end
                if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                        triggerEvent('Camera Follow Pos',xx-ofs,yy)
                end
                if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                        triggerEvent('Camera Follow Pos',xx+ofs,yy)
                end
                if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                        triggerEvent('Camera Follow Pos',xx,yy-ofs)
                end
                if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                        triggerEvent('Camera Follow Pos',xx,yy+ofs)
                end
                if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                        triggerEvent('Camera Follow Pos',xx,yy)
                end
                if getProperty('dad.animation.curAnim.name') == 'idle' then
                        triggerEvent('Camera Follow Pos',xx,yy)
                end
                else
                if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                        triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                        triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                        triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                        triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                        triggerEvent('Camera Follow Pos',xx2,yy2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                        triggerEvent('Camera Follow Pos',xx2,yy2)
                end
                end
end]]--

function onBeatHit()
    if curBeat == 68 then
		removeLuaSprite('classicfog');
end

    if curBeat == 100 then
        removeLuaSprite('torturechamberback', false);
        removeLuaSprite('torturechamber', false);
        removeLuaSprite('torturechamberfloor', false);

	makeLuaSprite('spiritprofile', 'stages/spiritprofile', -300, -100);
	setScrollFactor('spiritprofile', 1, 1);
        setProperty('spiritprofile.antialiasing', false);

        addLuaSprite('spiritprofile', false);
end

    if curBeat == 164 then
		removeLuaSprite('spiritprofile');

        addLuaSprite('torturechamberback', false);
        addLuaSprite('torturechamber', false);
        addLuaSprite('torturechamberfloor', false);
end
end