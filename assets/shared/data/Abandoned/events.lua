function onCreate()
makeLuaSprite('black',nil,0,0)
makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
setObjectCamera('black', 'hud')
setProperty('black.alpha', 0)
screenCenter('black')
addLuaSprite('black',true)
setProperty('black.visible', false)
end

function onStepHit()
if curStep == 1420 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,3)
end
end
