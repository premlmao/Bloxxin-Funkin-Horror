function onCreate()
makeLuaSprite('black',nil,0,0)
makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
setObjectCamera('black', 'other')
setProperty('black.alpha', 1)
screenCenter('black')
addLuaSprite('black',true)
setProperty('black.visible', true)
end

function onSongStart()
    setObjectCamera('black', 'other')
    doTweenAlpha('silly','black',0,3)
end

function onStepHit()
if curStep == 1008 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',1,2)
end

if curStep == 1048 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',0,0.5)
end

if curStep == 2336 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',1,2)
end

if curStep == 2392 then
setObjectCamera('black', 'game')
doTweenAlpha('silly','black',0,0.5)
end
end