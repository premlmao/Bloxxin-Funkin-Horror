function onCreate()
    downscroll = getPropertyFromClass('backend.ClientPrefs', 'data.downScroll')
end
function onUpdatePost()
local barX = getProperty('healthBar.x')
local barCenter = barX + getProperty('healthBar.width') * .5
setProperty('iconP1.x', barX - getProperty('iconP1.x') + barCenter + getProperty('iconP1.frameWidth'))
setProperty('iconP2.x', 190)
if curSection < 56 or curSection >= 104 then
for _, element in ipairs({'iconP1', 'healthBar'}) do
    setProperty(element .. '.flipX', true)
end
end
if curSection >= 23 and curSection < 56 then
    setProperty('camHUD.y', math.sin((getSongPosition() / 200) * (curBpm / 35) * 1.0) * 0.6);
    setProperty('camHUD.angle', math.sin((getSongPosition() / 250) * (curBpm / 65) * -1.0) * 0.6);
    setProperty('camGame.y', math.sin((getSongPosition() / 100) * (curBpm / 35) * 1.0) * 0.4);
    setProperty('camGame.angle', math.sin((getSongPosition() / 150) * (curBpm / 65) * -1.0) * 0.4);
    end
    if curSection >= 56 and curSection < 104 then
        callMethod('updateIconsPosition', {''})
        for _, element in ipairs({'iconP1', 'healthBar'}) do
            setProperty(element .. '.flipX', false)
        end
        setProperty('iconP1.x', getProperty('healthBar.barCenter')+(150*getProperty('iconP1.scale.x')-150)/2-iconOffset)
        setProperty('iconP2.x', getProperty('healthBar.barCenter')+(150*getProperty('iconP2.scale.x')-150)/2-iconOffset)
    end        
end

function onSongStart()
    noteTweenAlpha('noteAlpha1', 0, 0, 0.1, 'linear')
    noteTweenAlpha('noteAlpha2', 1, 0, 0.1, 'linear')
    noteTweenAlpha('noteAlpha3', 2, 0, 0.1, 'linear')
    noteTweenAlpha('noteAlpha4', 3, 0, 0.1, 'linear')
    noteTweenAlpha('noteAlpha5', 4, 0, 0.1, 'linear')
    noteTweenAlpha('noteAlpha6', 5, 0, 0.1, 'linear')
    noteTweenAlpha('noteAlpha7', 6, 0, 0.1, 'linear')
    noteTweenAlpha('noteAlpha8', 7, 0, 0.1, 'linear')
    doTweenY('byeHUD1','healthBar',900,crochet*0.005,'cubeInOut')
    doTweenY('byeHUD2','healthBarAround',900,crochet*0.005,'cubeInOut')
    doTweenY('byeHUD3','iconP1',900,crochet*0.005,'cubeInOut')
    doTweenY('byeHUD4','iconP2',900,crochet*0.005,'cubeInOut')
    doTweenY('byeHUD5','scoreTxt',900,crochet*0.005,'cubeInOut')
    if downscroll then
        doTweenY('byeHUD1','healthBar',-300,crochet*0.005,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',-300,crochet*0.005,'cubeInOut')
        doTweenY('byeHUD3','iconP1',-300,crochet*0.005,'cubeInOut')
        doTweenY('byeHUD4','iconP2',-300,crochet*0.005,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',-300,crochet*0.005,'cubeInOut')
    end
end

function onBeatHit()
    function opponentNoteHit(_, _, type)
        triggerEvent('Screen Shake', '0.1, 0.006', '0.1, 0.005')
        if getHealth() >= 0.02 then
            setHealth(getHealth() - 0.02)
        end
    end
    function goodNoteHit()
        if getHealth() >= 0.025 then
            setHealth(getHealth() + 0.025)
        end
    end
    if curBeat == 32 then
        noteTweenAlpha('noteAlpha5', 4, 1, 1, 'linear')
        noteTweenAlpha('noteAlpha6', 5, 1, 1, 'linear')
        noteTweenAlpha('noteAlpha7', 6, 1, 1, 'linear')
        noteTweenAlpha('noteAlpha8', 7, 1, 1, 'linear')
    end
    if curBeat == 158 then
        doTweenY('hiHUD1','healthBar',641,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD','healthBarAroundOutline',621,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
        if downscroll then
            doTweenY('hiHUD1','healthBar',79,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',67,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD','healthBarAroundOutline',59,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD3','iconP1',4,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD4','iconP2',4,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',129,crochet*0.005,'cubeInOut')
        end
    end
    if curBeat == 218 or curBeat == 282 or curBeat == 410 then
        doTweenY('byeHUD1','healthBar',900,crochet*0.005,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.005,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.005,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.005,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.005,'cubeInOut')
        if downscroll then
            doTweenY('byeHUD1','healthBar',-300,crochet*0.005,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',-300,crochet*0.005,'cubeInOut')
            doTweenY('byeHUD3','iconP1',-300,crochet*0.005,'cubeInOut')
            doTweenY('byeHUD4','iconP2',-300,crochet*0.005,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',-300,crochet*0.005,'cubeInOut')
        end
    end
    if curBeat == 220 or curBeat == 350 or curBeat == 412 then
        setHealth(50/50)
    end
    if curBeat == 222 or curBeat == 350 or curBeat == 414 then
        doTweenY('hiHUD1','healthBar',641,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD','healthBarAroundOutline',621,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
        if downscroll then
            doTweenY('hiHUD1','healthBar',79,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',67,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD','healthBarAroundOutline',59,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD3','iconP1',4,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD4','iconP2',4,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',129,crochet*0.005,'cubeInOut')
        end
    end
end

function opponentNoteHit(_, _, type)
    if getHealth() >= 0.01 then
        setHealth(getHealth() - 0.01)
    end
end