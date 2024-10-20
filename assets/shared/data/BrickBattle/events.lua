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
if curStep == 32 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,4)
end

if curStep == 1768 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,1)
end

if curStep == 1952 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,0.01)
end

if curStep == 2848 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,4)
end

if curStep == 2992 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,1)
end

if curStep == 3650 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,4)
end
end