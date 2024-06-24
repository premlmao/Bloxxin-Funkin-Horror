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
if curStep == 1 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0.7,10)
end

if curStep == 128 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0.5,1)
end

if curStep == 184 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,1)
end

if curStep == 960 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0.5,3)
end

if curStep == 1080 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0.7,1)
end

if curStep == 1200 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,2)
end

if curStep == 1280 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,0.2)
end

if curStep == 1824 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,0.2)
end

if curStep == 1832 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0.9,0.2)
end

if curStep == 1840 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,0.2)
end

if curStep == 1856 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,4.5)
end
end