function onCreate()

makeLuaSprite('black',nil,0,0) makeGraphic('black',0xff00000,screenWidth*2,screenHeight*2)  screenCenter('black') addLuaSprite('black',true)
end function onSongStart()
doTweenAlpha('silly','black',0,5)

end