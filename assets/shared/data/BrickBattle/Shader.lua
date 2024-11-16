local shaderName = "rain"
function onCreate()
    shaderCoordFix() -- initialize a fix for textureCoord when resizing game window
    makeLuaSprite("rain")
    makeGraphic("rain", screenWidth, screenHeight)
    scaleObject("rain", 20.0, 20.0)

   setSpriteShader("rain", "rain")


    runHaxeCode([[
        var shaderName = "]] .. shaderName .. [[";
        
        game.initLuaShader(shaderName);
        
        var shader0 = game.createRuntimeShader(shaderName);
        game.camGame.setFilters([new ShaderFilter(shader0)]);
        game.getLuaObject("rain").shader = shader0; // setting it into temporary sprite so luas can set its shader uniforms/properties
        game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("rain").shader)]);
    ]])
end

function onBeatHit()
    if curBeat == 448 then
        runHaxeCode([[
        game.camHUD.setFilters([]); 
        game.camGame.setFilters([]);
    ]])
    removeSpriteShader("rain")
    removeLuaSprite("rain")
    end

end



function onUpdate(elapsed)
    setShaderFloat("rain", "iTime", os.clock())
    setShaderFloat('rain', 'iIntensity', 0.05)
    setShaderFloat('rain', 'iTimescale', 0.7)
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