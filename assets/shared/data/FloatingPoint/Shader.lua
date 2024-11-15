
--https://gamebanana.com/tools/11481#FileInfo_905718 from here but edited around, ty

local dotheGlitchThing = false;
local randomization = 0;
local what = 0;
local shaderName = "floatingpointshader"
function onCreate()
    shaderCoordFix() -- initialize a fix for textureCoord when resizing game window
end

function onSectionHit()
    if curSection > 39 and curSection < 48 or curSection > 72 and curSection < 88  then
        randomization = 0.5;
        what = 0.000000002;
    end
end

function onBeatHit()
    if curBeat == 65 then
        dotheGlitchThing = true;
        makeLuaSprite("floatingpointshader")
        makeGraphic("shaderImage", screenWidth, screenHeight)
    
       setSpriteShader("shaderImage", "floatingpointshader")
    
    
        runHaxeCode([[
            var shaderName = "]] .. shaderName .. [[";
            
            game.initLuaShader(shaderName);
            
            var shader0 = game.createRuntimeShader(shaderName);
            game.camGame.setFilters([new ShaderFilter(shader0)]);
            game.getLuaObject("floatingpointshader").shader = shader0; // setting it into temporary sprite so luas can set its shader uniforms/properties
            game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("floatingpointshader").shader)]);
        ]])
    end
    if curBeat == 128 then
        dotheGlitchThing = false;
        runHaxeCode([[
            game.defaultCamZoom = 0.83;
        ]])
    end
    if curBeat == 192 then
        runHaxeCode([[
            game.defaultCamZoom = 0.7;
        ]])
    end

    if curBeat == 128 or curBeat == 136 or curBeat == 141 or curBeat == 144 or curBeat == 152 or curBeat == 157 then
        randomization = 1;
        what = 0.000000002;
    end
    if curBeat == 133 or curBeat == 149 then
        randomization = 0.5;
        what = 0.000000002;
    end
    if curBeat == 225 then
        dotheGlitchThing = true;
        runHaxeCode([[
            game.defaultCamZoom = 0.76;
        ]])
    end

    if curBeat == 288 then
        dotheGlitchThing = false;
    end

    if curBeat == 416 then
        runHaxeCode([[
            game.defaultCamZoom = 0.8;
        ]])
    end

    if curBeat == 420 then
        runHaxeCode([[
            game.defaultCamZoom = 0.75;
        ]])
    end

    if dotheGlitchThing then
        randomization = 0.14;
        what = 0.000000002;
    end
end

function onUpdate(elapsed)
    setShaderFloat("floatingpointshader", "iTime", os.clock())
    setShaderFloat("floatingpointshader", "randomizationy", what)
    setShaderFloat("floatingpointshader", "intensification", randomization)

    if randomization > 0 and curBeat < 420 then
        randomization = randomization - 0.05 * elapsed * 60;
        if randomization < 0 then
            randomization = 0;
        end
    end
    if what > 0 and curBeat < 420 then
       what = what - 1 * elapsed * 60;
       if what < 0 then
        what = 0;
       end
    end

    if curBeat > 420 then
        what = what + 0.000000000000002;
        randomization = randomization + 0.01;
    end
end



function shaderCoordFix()
    runHaxeCode([[
        resetCamCache = function(?spr) {
            if (spr == null or spr.filters == null) return;
            spr.__cacheBitmap = null;
            spr.__cacheBitmapData = null;
        }
        
        fixShaderCoordFix = function(?_) {
            resetCamCache(game.camGame.flashSprite);
            resetCamCache(game.camHUD.flashSprite);
            resetCamCache(game.camOther.flashSprite);
        }
    
        FlxG.signals.gameResized.add(fixShaderCoordFix);
        fixShaderCoordFix();
        return;
    ]])
    
    local temp = onDestroy
    function onDestroy()
        runHaxeCode([[
            FlxG.signals.gameResized.remove(fixShaderCoordFix);
            return;
        ]])
        if (temp) then temp() end
    end
end