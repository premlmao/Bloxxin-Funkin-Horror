function onCreate()
makeLuaSprite('black',nil,0,0)
makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
setObjectCamera('black', 'hud')
setProperty('black.alpha', 1)
screenCenter('black')
addLuaSprite('black',true)
setProperty('black.visible', true)
end

function onStepHit()
if curStep == 4 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,2)
end

if curStep == 1056 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,4)
end
end