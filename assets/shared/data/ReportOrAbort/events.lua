function onCreate()
makeLuaSprite('black',nil,0,0)
makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
setObjectCamera('black', 'game')
setProperty('black.alpha', 1)
screenCenter('black')
addLuaSprite('black',true)
setProperty('black.visible', true)
end

function onStepHit()
if curStep == 67 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',0,2)
end

if curStep == 1304 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',1,0.01)
end

if curStep == 1312 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',0,0.01)
end

if curStep == 2112 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',1,3)
end

if curStep == 2144 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',0,2)
end

if curStep == 2272 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',1,1.5)
end
end