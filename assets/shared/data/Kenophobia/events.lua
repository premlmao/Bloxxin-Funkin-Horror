function onCreatePost()
for _, element in ipairs({'iconP1', 'healthBar'}) do
    setProperty(element .. '.flipX', true)
end
end
function onUpdatePost()
local barX = getProperty('healthBar.x')
local barCenter = barX + getProperty('healthBar.width') * .5
setProperty('iconP1.x', barX - getProperty('iconP1.x') + barCenter + getProperty('iconP1.frameWidth'))
setProperty('iconP2.x', 300)
end

function opponentNoteHit(_, _, type)
    if getHealth() >= 0.01 then
        setHealth(getHealth() - 0.01)
    end
end