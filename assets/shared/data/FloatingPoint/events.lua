function onCreate()
    makeLuaSprite('black',nil,0,0)
    makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
    setObjectCamera('black', 'hud')
    setProperty('black.alpha', 0)
    screenCenter('black')
    addLuaSprite('black',true)
    setProperty('black.visible', false)
end

function onUpdatePost()
    setProperty('camHUD.y', math.sin((getSongPosition() / 200) * (curBpm / 35) * 1.0) * 0.6);
    setProperty('camHUD.angle', math.sin((getSongPosition() / 250) * (curBpm / 65) * -1.0) * 0.6);
end