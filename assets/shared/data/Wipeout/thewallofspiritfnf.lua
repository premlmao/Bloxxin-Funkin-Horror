function onCreate()
createInstance('thewallofspiritfnf', 'flixel.addons.display.FlxBackdrop', {nil,0x11})
loadGraphic('thewallofspiritfnf', 'spirit')
setProperty('thewallofspiritfnf.visible', true)
setProperty('thewallofspiritfnf.alpha', 0.5)
setProperty('thewallofspiritfnf.velocity.x', 500)
setProperty('thewallofspiritfnf.y', 250)
end

function onUpdatePost()
    function onBeatHit()
        if curBeat == 228 then
            setObjectOrder('thewallofspiritfnf', getObjectOrder('torturechamberback') + 1)
            addInstance('thewallofspiritfnf')
        end
    end
end