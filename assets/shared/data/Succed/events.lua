function onCreate()
makeLuaSprite('black',nil,0,0) 
makeGraphic('black',0xff00000,screenWidth*2,screenHeight*2)
screenCenter('black') 
addLuaSprite('black',true)
end 

function onSongStart()
doTweenAlpha('silly','black',0,5)
end

function opponentNoteHit(_, _, type)
    if type == 'Alt Animation' then
        triggerEvent('Screen Shake', '0.1, 0.006,', '0.1, 0.004')
    end
end