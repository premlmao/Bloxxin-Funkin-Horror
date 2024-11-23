function onCreate()
makeLuaSprite('black',nil,0,0)
makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
setObjectCamera('black', 'game')
setProperty('black.alpha', 0)
screenCenter('black')
addLuaSprite('black',true)
setProperty('camHUD.alpha', 1)
end

function onStepHit()
if curStep == 944 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',1,2)
end

if curStep == 1004 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',0,0.2)
end

if curStep == 1760 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',1,2)
end
end
