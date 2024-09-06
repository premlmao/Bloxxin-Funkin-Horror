function onCreate()
makeLuaSprite('black',nil,0,0)
makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
setObjectCamera('black', 'hud')
setProperty('black.alpha', 1)
screenCenter('black')
addLuaSprite('black',true)
setProperty('black.visible', false)
end

function onStepHit()
if curStep == 1280 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,5)
end
end