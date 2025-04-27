function onCreate()
makeLuaSprite('black',nil,0,0)
makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
setObjectCamera('black', 'hud')
setProperty('black.alpha', 1)
screenCenter('black')
addLuaSprite('black',true)
setProperty('black.visible', true)
setProperty('camHUD.alpha', 1)
setProperty('healthBar.y', 900)
setProperty('healthBarAround.y', 900)
setProperty('healthBarAroundOutline.y', 900)
setProperty('iconP1.y', 900)
setProperty('iconP2.y', 900)
setProperty('scoreTxt.y', 900)

downscroll = getPropertyFromClass('backend.ClientPrefs', 'data.downScroll')

if downscroll then
    setProperty('healthBar.y', -300)
    setProperty('healthBarAround.y', -300)
    setProperty('healthBarAroundOutline.y', -300)
    setProperty('iconP1.y', -300)
    setProperty('iconP2.y', -300)
    setProperty('scoreTxt.y', -300)
end

-------------- lyrics --------------
makeLuaText("lyric1", 'This man..', 0, 0, 0)
addLuaText('lyric1');
setTextSize('lyric1', 35);
setObjectCamera('lyric1', 'hud');
setTextFont('lyric1', 'vcr.ttf');
setTextColor('lyric1', '#fff700')
setTextBorder('lyric1', 2.5, 'black')
setProperty('lyric1.visible', false)
setProperty('lyric1.x', 525)
setProperty('lyric1.y', 550)
if downscroll then
    setProperty('lyric1.y', 150)
end

makeLuaText("lyric2", 'Surely he is a man that has seen', 0, 0, 0)
addLuaText('lyric2');
setTextSize('lyric2', 35);
setObjectCamera('lyric2', 'hud');
setTextFont('lyric2', 'vcr.ttf');
setTextColor('lyric2', '#fff700')
setTextBorder('lyric2', 2.5, 'black')
setProperty('lyric2.visible', false)
setProperty('lyric2.x', 300)
setProperty('lyric2.y', 550)
if downscroll then
    setProperty('lyric2.y', 150)
end

makeLuaText("lyric3", 'DEATH', 0, 0, 0)
addLuaText('lyric3');
setTextSize('lyric3', 35);
setObjectCamera('lyric3', 'hud');
setTextFont('lyric3', 'vcr.ttf');
setTextColor('lyric3', '#ff0000')
setTextBorder('lyric3', 2.5, 'black')
setProperty('lyric3.visible', false)
setProperty('lyric3.x', 445)
setProperty('lyric3.y', 550)
if downscroll then
    setProperty('lyric3.y', 150)
end

makeLuaText("lyric4", 'and', 0, 0, 0)
addLuaText('lyric4');
setTextSize('lyric4', 35);
setObjectCamera('lyric4', 'hud');
setTextFont('lyric4', 'vcr.ttf');
setTextColor('lyric4', '#fff700')
setTextBorder('lyric4', 2.5, 'black')
setProperty('lyric4.visible', false)
setProperty('lyric4.x', 575)
setProperty('lyric4.y', 550)
if downscroll then
    setProperty('lyric4.y', 150)
end

makeLuaText("lyric5", 'DESPAIR...', 0, 0, 0)
addLuaText('lyric5');
setTextSize('lyric5', 35);
setObjectCamera('lyric5', 'hud');
setTextFont('lyric5', 'vcr.ttf');
setTextColor('lyric5', '#ff0000')
setTextBorder('lyric5', 2.5, 'black')
setProperty('lyric5.visible', false)
setProperty('lyric5.x', 665)
setProperty('lyric5.y', 550)
if downscroll then
    setProperty('lyric5.y', 150)
end
end

function onSongStart()
    noteTweenX('noteX1', 0, 750, 0.2, 'sineIn')
    noteTweenX('noteX2', 1, 860, 0.2, 'sineIn')
    noteTweenX('noteX3', 2, 970, 0.2, 'sineIn')
    noteTweenX('noteX4', 3, 1080, 0.2, 'sineIn')
    noteTweenY('noteY1', 0, 150, 0.2, 'sineIn')
    noteTweenY('noteY2', 1, 150, 0.2, 'sineIn')
    noteTweenY('noteY3', 2, 150, 0.2, 'sineIn')
    noteTweenY('noteY4', 3, 150, 0.2, 'sineIn')
    noteTweenY('noteY5', 4, -500, 0.2, 'sineIn')
    noteTweenY('noteY6', 5, -500, 0.2, 'sineIn')
    noteTweenY('noteY7', 6, -500, 0.2, 'sineIn')
    noteTweenY('noteY8', 7, -500, 0.2, 'sineIn')
    noteTweenAlpha('noteAlpha1', 0, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha2', 1, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha3', 2, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha4', 3, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha5', 4, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha6', 5, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha7', 6, 0, 1, 'linear')
    noteTweenAlpha('noteAlpha8', 7, 0, 1, 'linear')
    if downscroll then
        noteTweenY('noteY1', 0, 470, 0.2, 'sineIn')
        noteTweenY('noteY2', 1, 470, 0.2, 'sineIn')
        noteTweenY('noteY3', 2, 470, 0.2, 'sineIn')
        noteTweenY('noteY4', 3, 470, 0.2, 'sineIn')
        noteTweenY('noteY5', 4, 1000, 0.2, 'sineIn')
        noteTweenY('noteY6', 5, 1000, 0.2, 'sineIn')
        noteTweenY('noteY7', 6, 1000, 0.2, 'sineIn')
        noteTweenY('noteY8', 7, 1000, 0.2, 'sineIn')
        noteTweenAlpha('noteAlpha1', 0, 0, 1, 'linear')
        noteTweenAlpha('noteAlpha2', 1, 0, 1, 'linear')
        noteTweenAlpha('noteAlpha3', 2, 0, 1, 'linear')
        noteTweenAlpha('noteAlpha4', 3, 0, 1, 'linear')
        noteTweenAlpha('noteAlpha5', 4, 0, 1, 'linear')
        noteTweenAlpha('noteAlpha6', 5, 0, 1, 'linear')
        noteTweenAlpha('noteAlpha7', 6, 0, 1, 'linear')
        noteTweenAlpha('noteAlpha8', 7, 0, 1, 'linear')
    end
end

function onBeatHit()
    if curBeat == 48 then
        noteTweenAlpha('noteAlpha1', 0, 1, 1, 'linear')
        noteTweenAlpha('noteAlpha2', 1, 1, 1, 'linear')
        noteTweenAlpha('noteAlpha3', 2, 1, 1, 'linear')
        noteTweenAlpha('noteAlpha4', 3, 1, 1, 'linear')
        noteTweenX('NoteX1', 0, 100, 1, 'cubeOut')
        noteTweenX('NoteX2', 1, 210, 1, 'cubeOut')
        noteTweenX('NoteX3', 2, 320, 1, 'cubeOut')
        noteTweenX('NoteX4', 3, 430, 1, 'cubeOut')
    end
    if curBeat == 60 then
        noteTweenY('noteY1', 0, 50, 2, 'cubeOut')
        noteTweenY('noteY2', 1, 50, 2, 'cubeOut')
        noteTweenY('noteY3', 2, 50, 2, 'cubeOut')
        noteTweenY('noteY4', 3, 50, 2, 'cubeOut')
        noteTweenY('noteY5', 4, 50, 2, 'cubeOut')
        noteTweenY('noteY6', 5, 50, 2, 'cubeOut')
        noteTweenY('noteY7', 6, 50, 2, 'cubeOut')
        noteTweenY('noteY8', 7, 50, 2, 'cubeOut')
        doTweenY('hiHUD1','healthBar',641,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.0075,'cubeInOut')
        if downscroll then
            noteTweenY('noteY1', 0, 570, 2, 'cubeOut')
            noteTweenY('noteY2', 1, 570, 2, 'cubeOut')
            noteTweenY('noteY3', 2, 570, 2, 'cubeOut')
            noteTweenY('noteY4', 3, 570, 2, 'cubeOut')
            noteTweenY('noteY5', 4, 570, 2, 'cubeOut')
            noteTweenY('noteY6', 5, 570, 2, 'cubeOut')
            noteTweenY('noteY7', 6, 570, 2, 'cubeOut')
            noteTweenY('noteY8', 7, 570, 2, 'cubeOut')
            doTweenY('hiHUD1','healthBar',79,crochet*0.0075,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',67,crochet*0.0075,'cubeInOut')
            doTweenY('hiHUD3','iconP1',4,crochet*0.0075,'cubeInOut')
            doTweenY('hiHUD4','iconP2',4,crochet*0.0075,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',129,crochet*0.0075,'cubeInOut')
        end
    end
    if curBeat == 116 or curBeat == 248 then
        doTweenY('byeHUD1','healthBar',900,crochet*0.006,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.006,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.006,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.006,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.006,'cubeInOut')
        if downscroll then
            doTweenY('byeHUD1','healthBar',-300,crochet*0.006,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',-300,crochet*0.006,'cubeInOut')
            doTweenY('byeHUD3','iconP1',-300,crochet*0.006,'cubeInOut')
            doTweenY('byeHUD4','iconP2',-300,crochet*0.006,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',-300,crochet*0.006,'cubeInOut')
        end
    end
    if curBeat == 128 then
        noteTweenY('noteY1', 0, 150, 1, 'cubeOut')
        noteTweenY('noteY2', 1, 150, 1, 'cubeOut')
        noteTweenY('noteY3', 2, 150, 1, 'cubeOut')
        noteTweenY('noteY4', 3, 150, 1, 'cubeOut')
        noteTweenY('noteY5', 4, 150, 1, 'cubeOut')
        noteTweenY('noteY6', 5, 150, 1, 'cubeOut')
        noteTweenY('noteY7', 6, 150, 1, 'cubeOut')
        noteTweenY('noteY8', 7, 150, 1, 'cubeOut')
        if downscroll then
            noteTweenY('noteY1', 0, 470, 1, 'cubeOut')
            noteTweenY('noteY2', 1, 470, 1, 'cubeOut')
            noteTweenY('noteY3', 2, 470, 1, 'cubeOut')
            noteTweenY('noteY4', 3, 470, 1, 'cubeOut')
            noteTweenY('noteY5', 4, 470, 1, 'cubeOut')
            noteTweenY('noteY6', 5, 470, 1, 'cubeOut')
            noteTweenY('noteY7', 6, 470, 1, 'cubeOut')
            noteTweenY('noteY8', 7, 470, 1, 'cubeOut')
        end
    end
    if curBeat == 192 then
        noteTweenX('noteX1', 0, -1000, 3, 'cubeInOut')
        noteTweenX('noteX2', 1, -1000, 3, 'cubeInOut')
        noteTweenX('noteX3', 2, -1000, 3, 'cubeInOut')
        noteTweenX('noteX4', 3, -1000, 3, 'cubeInOut')
        noteTweenX('noteX5', 4, 2000, 3, 'cubeInOut')
        noteTweenX('noteX6', 5, 2000, 3, 'cubeInOut')
        noteTweenX('noteX7', 6, 2000, 3, 'cubeInOut')
        noteTweenX('noteX8', 7, 2000, 3, 'cubeInOut')
    end
    if curBeat == 212 then
        noteTweenY('noteY1', 0, 50, 1, 'cubeOut')
        noteTweenY('noteY2', 1, 50, 1, 'cubeOut')
        noteTweenY('noteY3', 2, 50, 1, 'cubeOut')
        noteTweenY('noteY4', 3, 50, 1, 'cubeOut')
        noteTweenY('noteY5', 4, 50, 1, 'cubeOut')
        noteTweenY('noteY6', 5, 50, 1, 'cubeOut')
        noteTweenY('noteY7', 6, 50, 1, 'cubeOut')
        noteTweenY('noteY8', 7, 50, 1, 'cubeOut')
        if downscroll then
            noteTweenY('noteY1', 0, 570, 1, 'cubeOut')
            noteTweenY('noteY2', 1, 570, 1, 'cubeOut')
            noteTweenY('noteY3', 2, 570, 1, 'cubeOut')
            noteTweenY('noteY4', 3, 570, 1, 'cubeOut')
            noteTweenY('noteY5', 4, 570, 1, 'cubeOut')
            noteTweenY('noteY6', 5, 570, 1, 'cubeOut')
            noteTweenY('noteY7', 6, 570, 1, 'cubeOut')
            noteTweenY('noteY8', 7, 570, 1, 'cubeOut')
        end
    end
    if curBeat == 216 then
        noteTweenX('NoteX1', 0, 100, 3, 'cubeInOut')
        noteTweenX('NoteX2', 1, 210, 3, 'cubeInOut')
        noteTweenX('NoteX3', 2, 320, 3, 'cubeInOut')
        noteTweenX('NoteX4', 3, 430, 3, 'cubeInOut')
        noteTweenX('NoteX5', 4, 750, 3, 'cubeInOut')
        noteTweenX('NoteX6', 5, 860, 3, 'cubeInOut')
        noteTweenX('NoteX7', 6, 970, 3, 'cubeInOut')
        noteTweenX('NoteX8', 7, 1080, 3, 'cubeInOut')
    end
    if curBeat == 220 then
        doTweenY('hiHUD1','healthBar',641,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.0075,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.0075,'cubeInOut')
        if downscroll then
            doTweenY('hiHUD1','healthBar',79,crochet*0.0075,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',67,crochet*0.0075,'cubeInOut')
            doTweenY('hiHUD3','iconP1',4,crochet*0.0075,'cubeInOut')
            doTweenY('hiHUD4','iconP2',4,crochet*0.0075,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',129,crochet*0.0075,'cubeInOut')
        end
    end
    if curBeat == 248 then
        function onUpdatePost()
            doTweenAlpha('alphaHUD6', 'songIcon', 0, 1, 'linear')
            doTweenAlpha('alphaHUD7', 'timeTxt', 0, 1, 'linear')
        end
    end
    if curBeat == 256 then
        noteTweenY('noteY1', 0, 150, 1, 'cubeOut')
        noteTweenY('noteY2', 1, 150, 1, 'cubeOut')
        noteTweenY('noteY3', 2, 150, 1, 'cubeOut')
        noteTweenY('noteY4', 3, 150, 1, 'cubeOut')
        noteTweenY('noteY5', 4, 150, 1, 'cubeOut')
        noteTweenY('noteY6', 5, 150, 1, 'cubeOut')
        noteTweenY('noteY7', 6, 150, 1, 'cubeOut')
        noteTweenY('noteY8', 7, 150, 1, 'cubeOut')
        if downscroll then
            noteTweenY('noteY1', 0, 470, 1, 'cubeOut')
            noteTweenY('noteY2', 1, 470, 1, 'cubeOut')
            noteTweenY('noteY3', 2, 470, 1, 'cubeOut')
            noteTweenY('noteY4', 3, 470, 1, 'cubeOut')
            noteTweenY('noteY5', 4, 470, 1, 'cubeOut')
            noteTweenY('noteY6', 5, 470, 1, 'cubeOut')
            noteTweenY('noteY7', 6, 470, 1, 'cubeOut')
            noteTweenY('noteY8', 7, 470, 1, 'cubeOut')
        end
    end
    if curBeat == 272 then
        noteTweenY('noteY1', 0, 125, 1, 'cubeOut')
        noteTweenY('noteY2', 1, 125, 1, 'cubeOut')
        noteTweenY('noteY3', 2, 125, 1, 'cubeOut')
        noteTweenY('noteY4', 3, 125, 1, 'cubeOut')
        noteTweenY('noteY5', 4, 125, 1, 'cubeOut')
        noteTweenY('noteY6', 5, 125, 1, 'cubeOut')
        noteTweenY('noteY7', 6, 125, 1, 'cubeOut')
        noteTweenY('noteY8', 7, 125, 1, 'cubeOut')
        if downscroll then
            noteTweenY('noteY1', 0, 495, 1, 'cubeOut')
            noteTweenY('noteY2', 1, 495, 1, 'cubeOut')
            noteTweenY('noteY3', 2, 495, 1, 'cubeOut')
            noteTweenY('noteY4', 3, 495, 1, 'cubeOut')
            noteTweenY('noteY5', 4, 495, 1, 'cubeOut')
            noteTweenY('noteY6', 5, 495, 1, 'cubeOut')
            noteTweenY('noteY7', 6, 495, 1, 'cubeOut')
            noteTweenY('noteY8', 7, 495, 1, 'cubeOut')
        end
    end
    if curBeat == 288 then
        noteTweenAlpha('noteAlpha1', 0, 0, 1.3, 'linear')
        noteTweenAlpha('noteAlpha2', 1, 0, 1.3, 'linear')
        noteTweenAlpha('noteAlpha3', 2, 0, 1.3, 'linear')
        noteTweenAlpha('noteAlpha4', 3, 0, 1.3, 'linear')
        noteTweenAlpha('noteAlpha5', 4, 0, 1.3, 'linear')
        noteTweenAlpha('noteAlpha6', 5, 0, 1.3, 'linear')
        noteTweenAlpha('noteAlpha7', 6, 0, 1.3, 'linear')
        noteTweenAlpha('noteAlpha8', 7, 0, 1.3, 'linear')
    end
end


function onStepHit()
if curStep == 10 then
    setProperty('black.visible', true)
    doTweenAlpha('silly','black',0,4)
end
if curStep == 68 then
setProperty('lyric1.visible', true)
noteTweenY('noteY5', 4, 150, 1, 'backOut')
noteTweenAlpha('noteAlpha5', 4, 1, 1, 'linear')
if downscroll then
    noteTweenY('noteY5', 4, 470, 1, 'backOut')
end
end

if curStep == 78 then
setProperty('lyric1.visible', false)
end

if curStep == 84 then
setProperty('lyric2.visible', true)
noteTweenY('noteY6', 5, 150, 1, 'backOut')
noteTweenAlpha('noteAlpha6', 5, 1, 1, 'linear')
if downscroll then
    noteTweenY('noteY6', 5, 470, 1, 'backOut')
end
end

if curStep == 96 then
    noteTweenY('noteY7', 6, 150, 1, 'backOut')
    noteTweenAlpha('noteAlpha7', 6, 1, 1, 'linear')
    if downscroll then
        noteTweenY('noteY7', 6, 470, 1, 'backOut')
    end
end

if curStep == 108 then
setProperty('lyric2.visible', false)
setProperty('lyric3.visible', true)
noteTweenY('noteY8', 7, 150, 1, 'backOut')
noteTweenAlpha('noteAlpha8', 7, 1, 1, 'linear')
if downscroll then
    noteTweenY('noteY8', 7, 470, 1, 'backOut')
end
end

if curStep == 110 then
setProperty('lyric4.visible', true)
end

if curStep == 112 then
setProperty('lyric5.visible', true)
end

if curStep == 120 then
doTweenAlpha('byeLyrics1','lyric1',0,crochet*0.005,'sineIn')
doTweenAlpha('byeLyrics2','lyric2',0,crochet*0.005,'sineIn')
doTweenAlpha('byeLyrics3','lyric3',0,crochet*0.005,'sineIn')
doTweenAlpha('byeLyrics4','lyric4',0,crochet*0.005,'sineIn')
doTweenAlpha('byeLyrics5','lyric5',0,crochet*0.005,'sineIn')
end

if curStep == 368 or curStep == 1007 or curStep == 380 or curStep == 1021 then
    noteTweenY('noteY1', 0, 100, 0.3, 'cubeOut')
    noteTweenY('noteY2', 1, 100, 0.3, 'cubeOut')
    noteTweenY('noteY3', 2, 100, 0.3, 'cubeOut')
    noteTweenY('noteY4', 3, 100, 0.3, 'cubeOut')
    noteTweenY('noteY5', 4, 100, 0.3, 'cubeOut')
    noteTweenY('noteY6', 5, 100, 0.3, 'cubeOut')
    noteTweenY('noteY7', 6, 100, 0.3, 'cubeOut')
    noteTweenY('noteY8', 7, 100, 0.3, 'cubeOut')
    if downscroll then
        noteTweenY('noteY1', 0, 520, 0.3, 'cubeOut')
        noteTweenY('noteY2', 1, 520, 0.3, 'cubeOut')
        noteTweenY('noteY3', 2, 520, 0.3, 'cubeOut')
        noteTweenY('noteY4', 3, 520, 0.3, 'cubeOut')
        noteTweenY('noteY5', 4, 520, 0.3, 'cubeOut')
        noteTweenY('noteY6', 5, 520, 0.3, 'cubeOut')
        noteTweenY('noteY7', 6, 520, 0.3, 'cubeOut')
        noteTweenY('noteY8', 7, 520, 0.3, 'cubeOut')
    end
end

if curStep == 372 or curStep == 1012 then
    noteTweenY('noteY1', 0, 150, 0.3, 'cubeOut')
    noteTweenY('noteY2', 1, 150, 0.3, 'cubeOut')
    noteTweenY('noteY3', 2, 150, 0.3, 'cubeOut')
    noteTweenY('noteY4', 3, 150, 0.3, 'cubeOut')
    noteTweenY('noteY5', 4, 150, 0.3, 'cubeOut')
    noteTweenY('noteY6', 5, 150, 0.3, 'cubeOut')
    noteTweenY('noteY7', 6, 150, 0.3, 'cubeOut')
    noteTweenY('noteY8', 7, 150, 0.3, 'cubeOut')
    if downscroll then
        noteTweenY('noteY1', 0, 470, 0.3, 'cubeOut')
        noteTweenY('noteY2', 1, 470, 0.3, 'cubeOut')
        noteTweenY('noteY3', 2, 470, 0.3, 'cubeOut')
        noteTweenY('noteY4', 3, 470, 0.3, 'cubeOut')
        noteTweenY('noteY5', 4, 470, 0.3, 'cubeOut')
        noteTweenY('noteY6', 5, 470, 0.3, 'cubeOut')
        noteTweenY('noteY7', 6, 470, 0.3, 'cubeOut')
        noteTweenY('noteY8', 7, 470, 0.3, 'cubeOut')
    end
end

if curStep == 376 or curStep == 1017 then
    noteTweenY('noteY1', 0, 200, 0.3, 'cubeOut')
    noteTweenY('noteY2', 1, 200, 0.3, 'cubeOut')
    noteTweenY('noteY3', 2, 200, 0.3, 'cubeOut')
    noteTweenY('noteY4', 3, 200, 0.3, 'cubeOut')
    noteTweenY('noteY5', 4, 200, 0.3, 'cubeOut')
    noteTweenY('noteY6', 5, 200, 0.3, 'cubeOut')
    noteTweenY('noteY7', 6, 200, 0.3, 'cubeOut')
    noteTweenY('noteY8', 7, 200, 0.3, 'cubeOut')
    if downscroll then
        noteTweenY('noteY1', 0, 420, 0.3, 'cubeOut')
        noteTweenY('noteY2', 1, 420, 0.3, 'cubeOut')
        noteTweenY('noteY3', 2, 420, 0.3, 'cubeOut')
        noteTweenY('noteY4', 3, 420, 0.3, 'cubeOut')
        noteTweenY('noteY5', 4, 420, 0.3, 'cubeOut')
        noteTweenY('noteY6', 5, 420, 0.3, 'cubeOut')
        noteTweenY('noteY7', 6, 420, 0.3, 'cubeOut')
        noteTweenY('noteY8', 7, 420, 0.3, 'cubeOut')
    end
end

if curStep == 384 or curStep == 1023 then
    noteTweenY('noteY1', 0, 50, 0.3, 'cubeOut')
    noteTweenY('noteY2', 1, 50, 0.3, 'cubeOut')
    noteTweenY('noteY3', 2, 50, 0.3, 'cubeOut')
    noteTweenY('noteY4', 3, 50, 0.3, 'cubeOut')
    noteTweenY('noteY5', 4, 50, 0.3, 'cubeOut')
    noteTweenY('noteY6', 5, 50, 0.3, 'cubeOut')
    noteTweenY('noteY7', 6, 50, 0.3, 'cubeOut')
    noteTweenY('noteY8', 7, 50, 0.3, 'cubeOut')
    if downscroll then
        noteTweenY('noteY1', 0, 570, 0.3, 'cubeOut')
        noteTweenY('noteY2', 1, 570, 0.3, 'cubeOut')
        noteTweenY('noteY3', 2, 570, 0.3, 'cubeOut')
        noteTweenY('noteY4', 3, 570, 0.3, 'cubeOut')
        noteTweenY('noteY5', 4, 570, 0.3, 'cubeOut')
        noteTweenY('noteY6', 5, 570, 0.3, 'cubeOut')
        noteTweenY('noteY7', 6, 570, 0.3, 'cubeOut')
        noteTweenY('noteY8', 7, 570, 0.3, 'cubeOut')
    end
end

if curStep == 1280 then
    setProperty('black.visible', true)
    doTweenAlpha('silly','black',1,5)
end

if curStep == 1632 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,1)
end

if curStep == 1663 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,5)
end

if curStep == 2159 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,1.5)
end

if curStep == 2239 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,5)
end

if curStep == 3024 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,2)
end

if curStep == 3055 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,1.5)
end

if curStep == 3568 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,1.5)
end

if curStep == 3588 then
setHealth(50/50)
end

if curStep == 3600 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',0,1)
end

if curStep == 4144 then
setProperty('black.visible', true)
doTweenAlpha('silly','black',1,3)
end
end