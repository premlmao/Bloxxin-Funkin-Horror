function onCreate()

    makeLuaSprite('bigblackbartop', 'bigBlackBarTop',0,0)
    setObjectCamera('bigblackbartop', 'other')
    setScrollFactor('bigblackbartop', 0, 0)
    addLuaSprite('bigblackbartop', true)

    makeLuaSprite('bigblackbarbottom', 'bigBlackBarBottom',0,0)
    setObjectCamera('bigblackbarbottom', 'other')
    setScrollFactor('bigblackbarbottom', 0, 0)
    addLuaSprite('bigblackbarbottom', true)

    setProperty('camHUD.alpha', 1)
    setProperty('healthBar.y', 900)
    setProperty('healthBarAround.y', 900)
    setProperty('iconP1.y', 900)
    setProperty('iconP2.y', 900)
    setProperty('scoreTxt.y', 900)

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
end

function onCreatePost()
    runTimer('moveOut', 3.7, 1)
end
function onSongStart()
    noteTweenY('byeNotes1', 0, -500, 0.1, sineInOut);
    noteTweenY('byeNotes2', 1, -500, 0.1, sineInOut);
    noteTweenY('byeNotes3', 2, -500, 0.1, sineInOut);
    noteTweenY('byeNotes4', 3, -500, 0.1, sineInOut);
    noteTweenY('byeNotes5', 4, -500, 0.1, sineInOut);
    noteTweenY('byeNotes6', 5, -500, 0.1, sineInOut);
    noteTweenY('byeNotes7', 6, -500, 0.1, sineInOut);
    noteTweenY('byeNotes8', 7, -500, 0.1, sineInOut);
    noteTweenAlpha('alphaNotes1', 0, 0, 1, linear);
    noteTweenAlpha('alphaNotes2', 1, 0, 1, linear);
    noteTweenAlpha('alphaNotes3', 2, 0, 1, linear);
    noteTweenAlpha('alphaNotes4', 3, 0, 1, linear);
end

function onBeatHit()
    if curBeat == 20 then
    noteTweenY('hiNotes1', 0, 150, 2.5, sineInOut);
    noteTweenY('hiNotes2', 1, 150, 2.5, sineInOut);
    noteTweenY('hiNotes3', 2, 150, 2.5, sineInOut);
    noteTweenY('hiNotes4', 3, 150, 2.5, sineInOut);
    noteTweenY('hiNotes5', 4, 150, 2.5, sineInOut);
    noteTweenY('hiNotes6', 5, 150, 2.5, sineInOut);
    noteTweenY('hiNotes7', 6, 150, 2.5, sineInOut);
    noteTweenY('hiNotes8', 7, 150, 2.5, sineInOut);
    end

    if curBeat == 48 then
    noteTweenY('hiNotes5', 4, 150, 2.5, sineInOut);
    noteTweenY('hiNotes6', 5, 150, 2.5, sineInOut);
    noteTweenY('hiNotes7', 6, 150, 2.5, sineInOut);
    noteTweenY('hiNotes8', 7, 150, 2.5, sineInOut);
    noteTweenAlpha('alphaNotes1', 0, 1, 1, linear);
    noteTweenAlpha('alphaNotes2', 1, 1, 1, linear);
    noteTweenAlpha('alphaNotes3', 2, 1, 1, linear);
    noteTweenAlpha('alphaNotes4', 3, 1, 1, linear);
    end

    if curBeat == 60 then
    doTweenY('woohooTop', 'bigblackbartop', -500, 1.75, 'sineInOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 500, 1.75, 'sineInOut')
    noteTweenY('hiNotes1', 0, 50, 1.75, sineInOut);
    noteTweenY('hiNotes2', 1, 50, 1.75, sineInOut);
    noteTweenY('hiNotes3', 2, 50, 1.75, sineInOut);
    noteTweenY('hiNotes4', 3, 50, 1.75, sineInOut);
    noteTweenY('hiNotes5', 4, 50, 1.75, sineInOut);
    noteTweenY('hiNotes6', 5, 50, 1.75, sineInOut);
    noteTweenY('hiNotes7', 6, 50, 1.75, sineInOut);
    noteTweenY('hiNotes8', 7, 50, 1.75, sineInOut);
    setHealth(50/50)
    doTweenY('hiHUD1','healthBar',641,crochet*0.0099,'cubeInOut')
    doTweenY('hiHUD2','healthBarAround',629,crochet*0.0099,'cubeInOut')
    doTweenY('hiHUD3','iconP1',554,crochet*0.0099,'cubeInOut')
    doTweenY('hiHUD4','iconP2',554,crochet*0.0099,'cubeInOut')
    doTweenY('hiHUD5','scoreTxt',679,crochet*0.0099,'cubeInOut')
    doTweenAlpha('hiHUD6', 'timeBar',1,crochet*0.0099,'linear')
    doTweenAlpha('hiHUD7', 'timeTxt',1,crochet*0.0099,'linear')
    end
end

function onStepHit()
    if curStep == 68 then
        setProperty('lyric1.visible', true)
    end

    if curStep == 78 then
        setProperty('lyric1.visible', false)
    end
    
    if curStep == 84 then
        setProperty('lyric2.visible', true)
    end

    if curStep == 108 then
        setProperty('lyric2.visible', false)
        setProperty('lyric3.visible', true)
    end

    if curStep == 110 then
        setProperty('lyric4.visible', true)
    end

    if curStep == 112 then
        setProperty('lyric5.visible', true)
    end

    if curStep == 120 then
        doTweenAlpha('byeLyrics1','lyric1',0,crochet*0.005,'linear')
        doTweenAlpha('byeLyrics2','lyric2',0,crochet*0.005,'linear')
        doTweenAlpha('byeLyrics3','lyric3',0,crochet*0.005,'linear')
        doTweenAlpha('byeLyrics4','lyric4',0,crochet*0.005,'linear')
        doTweenAlpha('byeLyrics5','lyric5',0,crochet*0.005,'linear')
    end

    if curStep == 368 then
        doTweenY('woohooTop', 'bigblackbartop', -350, 0.1, 'sineInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 350, 0.1, 'sineInOut')
        noteTweenY('hiNotes1', 0, 100, 0.1, backInOut);
        noteTweenY('hiNotes2', 1, 100, 0.1, backInOut);
        noteTweenY('hiNotes3', 2, 100, 0.1, backInOut);
        noteTweenY('hiNotes4', 3, 100, 0.1, backInOut);
        noteTweenY('hiNotes5', 4, 100, 0.1, backInOut);
        noteTweenY('hiNotes6', 5, 100, 0.1, backInOut);
        noteTweenY('hiNotes7', 6, 100, 0.1, backInOut);
        noteTweenY('hiNotes8', 7, 100, 0.1, backInOut);
    end

    if curStep == 372 then
        doTweenY('woohooTop', 'bigblackbartop', -250, 0.1, 'sineInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 250, 0.1, 'sineInOut')
        noteTweenY('hiNotes1', 0, 150, 0.1, backInOut);
        noteTweenY('hiNotes2', 1, 150, 0.1, backInOut);
        noteTweenY('hiNotes3', 2, 150, 0.1, backInOut);
        noteTweenY('hiNotes4', 3, 150, 0.1, backInOut);
        noteTweenY('hiNotes5', 4, 150, 0.1, backInOut);
        noteTweenY('hiNotes6', 5, 150, 0.1, backInOut);
        noteTweenY('hiNotes7', 6, 150, 0.1, backInOut);
        noteTweenY('hiNotes8', 7, 150, 0.1, backInOut);
    end

    if curStep == 376 then
        doTweenY('woohooTop', 'bigblackbartop', -200, 0.1, 'sineInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 200, 0.1, 'sineInOut')
        noteTweenY('hiNotes1', 0, 175, 0.1, backInOut);
        noteTweenY('hiNotes2', 1, 175, 0.1, backInOut);
        noteTweenY('hiNotes3', 2, 175, 0.1, backInOut);
        noteTweenY('hiNotes4', 3, 175, 0.1, backInOut);
        noteTweenY('hiNotes5', 4, 175, 0.1, backInOut);
        noteTweenY('hiNotes6', 5, 175, 0.1, backInOut);
        noteTweenY('hiNotes7', 6, 175, 0.1, backInOut);
        noteTweenY('hiNotes8', 7, 175, 0.1, backInOut);
    end

    if curStep == 380 then
        doTweenY('woohooTop', 'bigblackbartop', -350, 0.1, 'sineInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 350, 0.1, 'sineInOut')
        noteTweenY('hiNotes1', 0, 100, 0.1, backInOut);
        noteTweenY('hiNotes2', 1, 100, 0.1, backInOut);
        noteTweenY('hiNotes3', 2, 100, 0.1, backInOut);
        noteTweenY('hiNotes4', 3, 100, 0.1, backInOut);
        noteTweenY('hiNotes5', 4, 100, 0.1, backInOut);
        noteTweenY('hiNotes6', 5, 100, 0.1, backInOut);
        noteTweenY('hiNotes7', 6, 100, 0.1, backInOut);
        noteTweenY('hiNotes8', 7, 100, 0.1, backInOut);
    end

    if curStep == 384 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 0.1, 'sineInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 0.1, 'sineInOut')
        noteTweenX('xMove1', 0, 415, 0.1, backInOut);
        noteTweenX('xMove2', 1, 525, 0.1, backInOut);
        noteTweenX('xMove3', 2, 635, 0.1, backInOut);
        noteTweenX('xMove4', 3, 745, 0.1, backInOut);
        noteTweenX('xMove5', 4, 415, 0.1, backInOut);
        noteTweenX('xMove6', 5, 525, 0.1, backInOut);
        noteTweenX('xMove7', 6, 635, 0.1, backInOut);
        noteTweenX('xMove8', 7, 745, 0.1, backInOut);
        noteTweenY('hiNotes1', 0, 50, 0.1, sineInOut);
        noteTweenY('hiNotes2', 1, 50, 0.1, sineInOut);
        noteTweenY('hiNotes3', 2, 50, 0.1, sineInOut);
        noteTweenY('hiNotes4', 3, 50, 0.1, sineInOut);
        noteTweenY('hiNotes5', 4, 50, 0.1, sineInOut);
        noteTweenY('hiNotes6', 5, 50, 0.1, sineInOut);
        noteTweenY('hiNotes7', 6, 50, 0.1, sineInOut);
        noteTweenY('hiNotes8', 7, 50, 0.1, sineInOut);
        noteTweenAlpha('alphaNotes1', 0, 0.1, 0.1, linear);
        noteTweenAlpha('alphaNotes2', 1, 0.1, 0.1, linear);
        noteTweenAlpha('alphaNotes3', 2, 0.1, 0.1, linear);
        noteTweenAlpha('alphaNotes4', 3, 0.1, 0.1, linear); 
    end

    if curStep == 512 then
        noteTweenX('NoteX0', 0, 100, 1, cubeInOut)
        noteTweenX('NoteX1', 1, 210, 1, cubeInOut)
        noteTweenX('NoteX2', 2, 320 ,1, cubeInOut)
        noteTweenX('NoteX3', 3, 430, 1, cubeInOut)
        noteTweenX('NoteX4', 4, 750, 1, cubeInOut)
        noteTweenX('NoteX5', 5, 860, 1, cubeInOut)
        noteTweenX('NoteX6', 6, 970, 1, cubeInOut)
        noteTweenX('NoteX7', 7, 1080, 1, cubeInOut)
        noteTweenAlpha('alphaNotes1', 0, 1, 1, linear);
        noteTweenAlpha('alphaNotes2', 1, 1, 1, linear);
        noteTweenAlpha('alphaNotes3', 2, 1, 1, linear);
        noteTweenAlpha('alphaNotes4', 3, 1, 1, linear);
        doTweenY('byeHUD1','healthBar',900,crochet*0.0099,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.0099,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.0099,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.0099,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.0099,'cubeInOut')
        doTweenAlpha('byeHUD6', 'timeBar', 0, crochet*0.0099, 'linear')
        doTweenAlpha('byeHUD7', 'timeTxt', 0, crochet*0.0099, 'linear')
        doTweenY('woohooTop', 'bigblackbartop', -300, 2.5, 'sineInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 300, 2.5, 'sineInOut')
        noteTweenY('hiNotes1', 0, 115, 2.5, backInOut);
        noteTweenY('hiNotes2', 1, 115, 2.5, backInOut);
        noteTweenY('hiNotes3', 2, 115, 2.5, backInOut);
        noteTweenY('hiNotes4', 3, 115, 2.5, backInOut);
        noteTweenY('hiNotes5', 4, 115, 2.5, backInOut);
        noteTweenY('hiNotes6', 5, 115, 2.5, backInOut);
        noteTweenY('hiNotes7', 6, 115, 2.5, backInOut);
        noteTweenY('hiNotes8', 7, 115, 2.5, backInOut);
    end

    if curStep == 767 then
        noteTweenX('NoteX0', 0, -650, 3, cubeInOut)
        noteTweenX('NoteX1', 1, -650, 3, cubeInOut)
        noteTweenX('NoteX2', 2, -650, 3, cubeInOut)
        noteTweenX('NoteX3', 3, -650, 3, cubeInOut)
        noteTweenX('NoteX4', 4, 2000, 3, cubeInOut)
        noteTweenX('NoteX5', 5, 2000, 3, cubeInOut)
        noteTweenX('NoteX6', 6, 2000, 3, cubeInOut)
        noteTweenX('NoteX7', 7, 2000, 3, cubeInOut)
        doTweenY('woohooTop', 'bigblackbartop', -250, 2.5, 'sineInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 250, 2.5, 'sineInOut')
    end

    if curStep == 815 then
        noteTweenY('hiNotes1', 0, 50, 0.1, backInOut);
        noteTweenY('hiNotes2', 1, 50, 0.1, backInOut);
        noteTweenY('hiNotes3', 2, 50, 0.1, backInOut);
        noteTweenY('hiNotes4', 3, 50, 0.1, backInOut);
        noteTweenY('hiNotes5', 4, 50, 0.1, backInOut);
        noteTweenY('hiNotes6', 5, 50, 0.1, backInOut);
        noteTweenY('hiNotes7', 6, 50, 0.1, backInOut);
        noteTweenY('hiNotes8', 7, 50, 0.1, backInOut);
    end

    if curStep == 863 then
        noteTweenX('NoteX0', 0, 100, 3, cubeInOut)
        noteTweenX('NoteX1', 1, 210, 3, cubeInOut)
        noteTweenX('NoteX2', 2, 320 ,3, cubeInOut)
        noteTweenX('NoteX3', 3, 430, 3, cubeInOut)
        noteTweenX('NoteX4', 4, 750, 3, cubeInOut)
        noteTweenX('NoteX5', 5, 860, 3, cubeInOut)
        noteTweenX('NoteX6', 6, 970, 3, cubeInOut)
        noteTweenX('NoteX7', 7, 1080, 3, cubeInOut)
        doTweenY('woohooTop', 'bigblackbartop', -500, 3, 'sineInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 3, 'sineInOut')
        setHealth(50/50)
        doTweenY('hiHUD1','healthBar',641,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.0099,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',679,crochet*0.0099,'cubeInOut')
        doTweenAlpha('hiHUD6', 'timeBar',1,crochet*0.0099,'linear')
        doTweenAlpha('hiHUD7', 'timeTxt',1,crochet*0.0099,'linear')
    end

    if curStep == 1007 then
        doTweenY('woohooTop', 'bigblackbartop', -350, 0.1, 'sineInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 350, 0.1, 'sineInOut')
        noteTweenY('hiNotes1', 0, 100, 0.1, backInOut);
        noteTweenY('hiNotes2', 1, 100, 0.1, backInOut);
        noteTweenY('hiNotes3', 2, 100, 0.1, backInOut);
        noteTweenY('hiNotes4', 3, 100, 0.1, backInOut);
        noteTweenY('hiNotes5', 4, 100, 0.1, backInOut);
        noteTweenY('hiNotes6', 5, 100, 0.1, backInOut);
        noteTweenY('hiNotes7', 6, 100, 0.1, backInOut);
        noteTweenY('hiNotes8', 7, 100, 0.1, backInOut);
    end

    if curStep == 1012 then
        doTweenY('woohooTop', 'bigblackbartop', -250, 0.1, 'sineInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 250, 0.1, 'sineInOut')
        noteTweenY('hiNotes1', 0, 150, 0.1, backInOut);
        noteTweenY('hiNotes2', 1, 150, 0.1, backInOut);
        noteTweenY('hiNotes3', 2, 150, 0.1, backInOut);
        noteTweenY('hiNotes4', 3, 150, 0.1, backInOut);
        noteTweenY('hiNotes5', 4, 150, 0.1, backInOut);
        noteTweenY('hiNotes6', 5, 150, 0.1, backInOut);
        noteTweenY('hiNotes7', 6, 150, 0.1, backInOut);
        noteTweenY('hiNotes8', 7, 150, 0.1, backInOut);
    end

    if curStep == 1017 then
        doTweenY('woohooTop', 'bigblackbartop', -200, 0.1, 'sineInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 200, 0.1, 'sineInOut')
        noteTweenY('hiNotes1', 0, 175, 0.1, backInOut);
        noteTweenY('hiNotes2', 1, 175, 0.1, backInOut);
        noteTweenY('hiNotes3', 2, 175, 0.1, backInOut);
        noteTweenY('hiNotes4', 3, 175, 0.1, backInOut);
        noteTweenY('hiNotes5', 4, 175, 0.1, backInOut);
        noteTweenY('hiNotes6', 5, 175, 0.1, backInOut);
        noteTweenY('hiNotes7', 6, 175, 0.1, backInOut);
        noteTweenY('hiNotes8', 7, 175, 0.1, backInOut);
    end

    if curStep == 1021 then
        doTweenY('woohooTop', 'bigblackbartop', -350, 0.1, 'sineInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 350, 0.1, 'sineInOut')
        noteTweenY('hiNotes1', 0, 100, 0.1, backInOut);
        noteTweenY('hiNotes2', 1, 100, 0.1, backInOut);
        noteTweenY('hiNotes3', 2, 100, 0.1, backInOut);
        noteTweenY('hiNotes4', 3, 100, 0.1, backInOut);
        noteTweenY('hiNotes5', 4, 100, 0.1, backInOut);
        noteTweenY('hiNotes6', 5, 100, 0.1, backInOut);
        noteTweenY('hiNotes7', 6, 100, 0.1, backInOut);
        noteTweenY('hiNotes8', 7, 100, 0.1, backInOut);
    end

    if curStep == 1023 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 0.1, 'sineInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 0.1, 'sineInOut')
        noteTweenY('hiNotes1', 0, 50, 0.1, sineInOut);
        noteTweenY('hiNotes2', 1, 50, 0.1, sineInOut);
        noteTweenY('hiNotes3', 2, 50, 0.1, sineInOut);
        noteTweenY('hiNotes4', 3, 50, 0.1, sineInOut);
        noteTweenY('hiNotes5', 4, 50, 0.1, sineInOut);
        noteTweenY('hiNotes6', 5, 50, 0.1, sineInOut);
        noteTweenY('hiNotes7', 6, 50, 0.1, sineInOut);
        noteTweenY('hiNotes8', 7, 50, 0.1, sineInOut);
    end

    if curStep == 1087 then
        doTweenY('byeHUD1','healthBar',900,crochet*0.0099,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.0099,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.0099,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.0099,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.0099,'cubeInOut')
        doTweenAlpha('byeHUD6', 'timeBar', 0, crochet*0.0099, 'linear')
        doTweenAlpha('byeHUD7', 'timeTxt', 0, crochet*0.0099, 'linear')
        doTweenY('woohooTop', 'bigblackbartop', -300, 2.5, 'sineInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 300, 2.5, 'sineInOut')
        noteTweenY('hiNotes1', 0, 125, 2.5, backInOut);
        noteTweenY('hiNotes2', 1, 125, 2.5, backInOut);
        noteTweenY('hiNotes3', 2, 125, 2.5, backInOut);
        noteTweenY('hiNotes4', 3, 125, 2.5, backInOut);
        noteTweenY('hiNotes5', 4, 125, 2.5, backInOut);
        noteTweenY('hiNotes6', 5, 125, 2.5, backInOut);
        noteTweenY('hiNotes7', 6, 125, 2.5, backInOut);
        noteTweenY('hiNotes8', 7, 125, 2.5, backInOut);
    end

    if curStep == 1151 then
        noteTweenX('NoteX0', 0, -650, 3, cubeInOut)
        noteTweenX('NoteX1', 1, -650, 3, cubeInOut)
        noteTweenX('NoteX2', 2, -650, 3, cubeInOut)
        noteTweenX('NoteX3', 3, -650, 3, cubeInOut)
        noteTweenX('NoteX4', 4, 2000, 3, cubeInOut)
        noteTweenX('NoteX5', 5, 2000, 3, cubeInOut)
        noteTweenX('NoteX6', 6, 2000, 3, cubeInOut)
        noteTweenX('NoteX7', 7, 2000, 3, cubeInOut)
    end

    if curStep == 1215 then
        doTweenY('woohooTop', 'bigblackbartop', -250, 1, 'sineInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 250, 1, 'sineInOut')
    end

    if curStep == 1279 then
        doTweenY('woohooTop', 'bigblackbartop', 0, 5, 'sineInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 0, 5, 'sineInOut')
    end
end

function onUpdate()
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'moveOut' then
        doTweenY('woohooTop', 'bigblackbartop', -250, 1.75, 'sineInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 250, 1.75, 'sineInOut')
    end
end

