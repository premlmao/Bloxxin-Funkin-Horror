function onCreate()
    makeAnimatedLuaSprite('jumpscare', 'coolkidjumpscare')
    addAnimationByPrefix('jumpscare', 'jump', 'jump', 15, true);
    setProperty('jumpscare.visible', false)
    setProperty('jumpscare.scale.x', 1.1)
    setProperty('jumpscare.scale.y', 1.1)
    setProperty('jumpscare.x', 120)
    setProperty('jumpscare.y', 100)
    setObjectCamera('jumpscare', 'hud')
    addLuaSprite('jumpscare', true)
end

function onStepHit()
    if curStep == 1568 then
        setProperty('jumpscare.visible', true)
        playAnim('jumpscare', 'jump', true)
    end
    if curStep == 1603 then
        removeLuaSprite('jumpscare', true)
    end
end