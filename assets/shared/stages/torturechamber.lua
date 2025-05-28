--[[local xx = 400;
local yy = 500;
local xx2 = 800;
local yy2 = 500;
local ofs = 30;]]--

function onCreate()
	-- background shit

	makeLuaSprite('torturechamberfloor', 'stages/torturechamberfloor', -1300, -730);
	setScrollFactor('torturechamberfloor', 1, 1);
        setProperty('torturechamberfloor.antialiasing', false);
	scaleObject ('torturechamberfloor', 3, 3);

	makeLuaSprite('torturechamberback', 'stages/torturechamberback', -1300, -800);
	setScrollFactor('torturechamberback', 0.5, 0.5);
        setProperty('torturechamberback.antialiasing', false);
	scaleObject ('torturechamberback', 3, 3);

        addLuaSprite('torturechamberback', false); 
        addLuaSprite('torturechamberfloor', false);
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
    if curBeat == 100 then
        removeLuaSprite('torturechamberback', false);
        removeLuaSprite('torturechamberfloor', false);

	makeLuaSprite('spiritprofile', 'stages/spiritprofile', -300, -100);
	setScrollFactor('spiritprofile', 1, 1);
        setProperty('spiritprofile.antialiasing', false);

        addLuaSprite('spiritprofile', false);
end

    if curBeat == 164 then
		removeLuaSprite('spiritprofile');

        addLuaSprite('torturechamberback', false);
        addLuaSprite('torturechamberfloor', false);
end
end