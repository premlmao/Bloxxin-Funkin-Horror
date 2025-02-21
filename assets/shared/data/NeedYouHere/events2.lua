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
if curStep == 16 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',0.7,1)
end

if curStep == 48 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',0,1)
end

if curStep == 304 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',1,1)
end

if curStep == 336 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',0,0.01)
end

if curStep == 1952 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',0.7,1)
end

if curStep == 2208 then
setObjectCamera('black', 'hud')
doTweenAlpha('silly','black',1,3)
end


end