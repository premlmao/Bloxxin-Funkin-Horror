function onCreate()
makeLuaSprite('black',nil,0,0)
makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
setObjectCamera('black', 'other')
setProperty('black.alpha', 1)
screenCenter('black')
addLuaSprite('black',true)
setProperty('black.visible', true)
end

function onStepHit()
if curStep == 24 then
setObjectCamera('black', 'other')
doTweenAlpha('silly','black',0,5)
end

if curStep == 312 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',1,3)
end

if curStep == 368 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',0,0.5)
end

if curStep == 880 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',1,0.5)
end

if curStep == 888 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',0,2)
end

if curStep == 1136 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',1,0.5)
end

if curStep == 1146 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',0,2)
end

if curStep == 1376 then
setObjectCamera('black', 'other')
doTweenAlpha('silly','black',1,1)
end

if curStep == 1400 then
setObjectCamera('black', 'other')
doTweenAlpha('silly','black',0,5)
end

if curStep == 1648 then
setObjectCamera('black', 'other')
doTweenAlpha('silly','black',1,0.5)
end

if curStep == 1656 then
setObjectCamera('black', 'other')
doTweenAlpha('silly','black',0,0.5)
doTweenAlpha('happyscribble', 'dad', 0, 0.01, 'cubeInOut')
end

if curStep == 2232 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',1,5)
end
end