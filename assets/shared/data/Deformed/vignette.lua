function onCreate()

    makeLuaSprite('vignette', 'vignette',0,0)
    setObjectCamera('vignette', 'other')
    setScrollFactor('vignette', 0, 0)
    setProperty('vignette.alpha', 0.5)
    addLuaSprite('vignette', true)

end