function onCreate()
makeLuaSprite('black',nil,0,0)
makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
setObjectCamera('black', 'hud')
setProperty('black.alpha', 1)
screenCenter('black')
addLuaSprite('black',true)
setProperty('black.visible', true)

-------------- lyrics --------------
makeLuaText("lyric1", 'Come along with me.', 0, 0, 0)
addLuaText('lyric1');
setTextSize('lyric1', 35);
setObjectCamera('lyric1', 'hud');
setTextFont('lyric1', 'vcr.ttf');
setTextColor('lyric1', '#FFFFFF')
setTextBorder('lyric1', 2.5, 'black')
setProperty('lyric1.visible', true)
setProperty('lyric1.x', 455)
setProperty('lyric1.y', 850)

makeLuaText("lyric2", 'You see,', 0, 0, 0)
addLuaText('lyric2');
setTextSize('lyric2', 35);
setObjectCamera('lyric2', 'hud');
setTextFont('lyric2', 'vcr.ttf');
setTextColor('lyric2', '#FFFFFF')
setTextBorder('lyric2', 2.5, 'black')
setProperty('lyric2.visible', true)
setProperty('lyric2.x', -175)
setProperty('lyric2.y', 550)

makeLuaText("lyric3", 'Find me and set free,', 0, 0, 0)
addLuaText('lyric3');
setTextSize('lyric3', 35);
setObjectCamera('lyric3', 'hud');
setTextFont('lyric3', 'vcr.ttf');
setTextColor('lyric3', '#FFFFFF')
setTextBorder('lyric3', 2.5, 'black')
setProperty('lyric3.visible', true)
setProperty('lyric3.x', 1300)
setProperty('lyric3.y', 550)
end

function onBeatHit()
    if curBeat == 96 or curBeat == 292 then 
    doTweenY('hiLyric1', 'lyric1', 550, 0.5, 'cubeOut')
    doTweenAlpha('heyLyric1', 'lyric1', 1, 0.25, 'linear')
    end
    
    if curBeat == 101 or curBeat == 297 then
        doTweenAlpha('byeLyric1', 'lyric1', 0, 0.25, 'linear')
        doTweenX('hiLyric2', 'lyric2', 330, 0.5, 'cubeOut')
    end

    if curBeat == 104 or curBeat == 300 then
        doTweenX('hiLyric3', 'lyric3', 515, 0.5, 'cubeOut')
    end

    if curBeat == 110 then
        doTweenY('byeLyric2', 'lyric2', 850, 0.25, 'cubeOut')
        doTweenY('byeLyric3', 'lyric3', 850, 0.25, 'cubeOut')
        doTweenAlpha('hiLyric1', 'lyric1', 1, 0.5, 'linear')
    end

    if curBeat == 112 then
        doTweenAlpha('byeLyric1', 'lyric1', 0, 1.5, 'linear')
    end

    if curBeat == 288 then
        doTweenAlpha('byeLyric2', 'lyric2', 0, 0.25, 'linear')
        doTweenAlpha('byeLyric3', 'lyric3', 0, 0.25, 'linear')
    end

    if curBeat == 291 then
        doTweenX('XLyric2', 'lyric2', -175, 0.25, 'cubeOut')
        doTweenX('XLyric3', 'lyric3', 1300, 0.25, 'cubeOut')
        doTweenY('hiLyric2', 'lyric2', 550, 0.25, 'cubeOut')
        doTweenY('hiLyric3', 'lyric3', 550, 0.25, 'cubeOut')
    end

    if curBeat == 295 then
        doTweenAlpha('hiLyric2', 'lyric2', 1, 0.25, 'linear')
        doTweenAlpha('hiLyric3', 'lyric3', 1, 0.25, 'linear')
    end

    if curBeat == 306 then
        doTweenY('byeLyric2', 'lyric2', 850, 0.25, 'cubeOut')
        doTweenY('byeLyric3', 'lyric3', 850, 0.25, 'cubeOut')
        doTweenY('byeLyric1', 'lyric1', 850, 0.5, 'cubeOut')
    end

    if curBeat == 310 then
        doTweenY('hiLyric1', 'lyric1', 550, 0.5, 'cubeOut')
        doTweenAlpha('heyLyric1', 'lyric1', 1, 0.25, 'cubeOut')
    end

    if curBeat == 313 then
        doTweenAlpha('byeText', 'lyric1', 0, 3, 'linear')
    end

    if curBeat == 316 then
        noteTweenAlpha('alphaNotes1', 4, 0, 5, 'linear');
        noteTweenAlpha('alphaNotes2', 5, 0, 5, 'linear');
        noteTweenAlpha('alphaNotes3', 6, 0, 5, 'linear');
        noteTweenAlpha('alphaNotes4', 7, 0, 5, 'linear');
    end

end

function onStepHit()
if curStep == 4 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,2)
end

if curStep == 632 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,0.01)
end

if curStep == 640 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,0.01)
end

if curStep >= 879 and curStep < 895 then
    function opponentNoteHit()
        triggerEvent('Screen Shake', '0.1, 0.005', '0.1, 0.003')
    end
end

if curStep == 896 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,0.01)
end

if curStep == 912 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,0.01)
end
end