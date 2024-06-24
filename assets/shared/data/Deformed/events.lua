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
if curStep == 48 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,0.5)
end

if curStep == 828 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,0.01)
end

if curStep == 832 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,0.01)
end

if curStep == 1472 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,0.01)
end

if curStep == 1476 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,0.01)
end

if curStep == 1600 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,0.01)
end

if curStep == 1604 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,0.01)
end

if curStep == 1872 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,18)
end
end