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
if curStep == 864 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,1)
end

if curStep == 960 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,2.5)
end

if curStep == 1632 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,1)
end

if curStep == 1663 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,5)
end

if curStep == 2159 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,1.5)
end

if curStep == 2239 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,5)
end

if curStep == 3024 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,2)
end

if curStep == 3055 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,1.5)
end

if curStep == 3568 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,1.5)
end

if curStep == 3600 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,1)
end

if curStep == 4144 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,3)
end
end




