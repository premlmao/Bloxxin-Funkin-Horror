function onCreate()

    makeLuaSprite('vignette', 'vignette',0,0)
    setObjectCamera('vignette', 'other')
    setScrollFactor('vignette', 0, 0)
    addLuaSprite('vignette', true)
    setProperty('vignette.alpha', 0)

end

function onBeatHit()
    if curBeat == 158 then
        noteTweenAlpha('alphaNotes1', 0, 0, 0.5, 'linear');
        noteTweenAlpha('alphaNotes2', 1, 0, 0.5, 'linear');
        noteTweenAlpha('alphaNotes3', 2, 0, 0.5, 'linear');
        noteTweenAlpha('alphaNotes4', 3, 0, 0.5, 'linear');
        doTweenAlpha('viggyappears', 'vignette', 1, 0.5, 'linear')
    end
end