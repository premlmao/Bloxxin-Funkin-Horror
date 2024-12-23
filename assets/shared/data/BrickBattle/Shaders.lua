local shaderName = "rain"
local shaderName2 = "brick"
function onCreate()
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
    if curBeat == 443 then
        runHaxeCode([[
        game.camHUD.setFilters([]); 
        game.camGame.setFilters([]);
    ]])
    removeSpriteShader("rain")
    removeLuaSprite("rain")
    end

    if curBeat == 488 then
        makeLuaSprite("brick")
        makeGraphic("shaderImage", screenWidth, screenHeight)
    
        setSpriteShader("shaderImage", "brick")
    
    
        runHaxeCode([[
            var shaderName = "]] .. shaderName2 .. [[";
            
            game.initLuaShader(shaderName);
            
            var shader0 = game.createRuntimeShader(shaderName);
            game.camGame.setFilters([new ShaderFilter(shader0)]);
            game.getLuaObject("brick").shader = shader0; // setting it into temporary sprite so luas can set its shader uniforms/properties
            game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("brick").shader)]);
        ]])
    end
end



function onUpdate(elapsed)
    setShaderFloat("rain", "iTime", os.clock())
    setShaderFloat('rain', 'iIntensity', 0.05)
    setShaderFloat('rain', 'iTimescale', 0.7)
    setShaderFloat("brick", "iTime", os.clock())
end