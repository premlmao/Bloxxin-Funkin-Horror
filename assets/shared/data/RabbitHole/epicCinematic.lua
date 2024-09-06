function onCreate()

    makeLuaSprite('bigblackbartop', 'bigBlackBarTop',0,0)
    setObjectCamera('bigblackbartop', 'other')
    setScrollFactor('bigblackbartop', 0, 0)
    setProperty('bigblackbartop.y', -500)
    addLuaSprite('bigblackbartop', true)

    makeLuaSprite('bigblackbarbottom', 'bigBlackBarBottom',0,0)
    setObjectCamera('bigblackbarbottom', 'other')
    setScrollFactor('bigblackbarbottom', 0, 0)
    setProperty('bigblackbarbottom.y', 500)
    addLuaSprite('bigblackbarbottom', true)
end

function onBeatHit()
    if curBeat == 96 or curBeat == 110 or curBeat == 292 or curBeat == 310 then
        doTweenY('woohooTop', 'bigblackbartop', -300, 0.75, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 300, 0.75, 'cubeOut')
        noteTweenY('hiNotes1', 0, 100, 0.25, 'cubeInOut');
        noteTweenY('hiNotes2', 1, 100, 0.25, 'cubeInOut');
        noteTweenY('hiNotes3', 2, 100, 0.25, 'cubeInOut');
        noteTweenY('hiNotes4', 3, 100, 0.25, 'cubeInOut');
        noteTweenY('hiNotes5', 4, 100, 0.25, 'cubeInOut');
        noteTweenY('hiNotes6', 5, 100, 0.25, 'cubeInOut');
        noteTweenY('hiNotes7', 6, 100, 0.25, 'cubeInOut');
        noteTweenY('hiNotes8', 7, 100, 0.25, 'cubeInOut');
        doTweenX('byeHUD1','healthBar',1200,crochet*0.0025,'cubeInOut')
        doTweenX('byeHUD2','healthBarAround',1200,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD3','iconP1',1200,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD4','iconP2',-200,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.0025,'cubeInOut')
        doTweenAlpha('byeHUD6', 'timeBar', 0, crochet*0.0025, 'linear')
        doTweenAlpha('byeHUD7', 'songIcon', 0, crochet*0.0025, 'linear')
        doTweenAlpha('byeHUD8', 'timeTxt', 0, crochet*0.0025, 'linear')
    end

    if curBeat == 101 or curBeat == 297 then
        doTweenY('woohooTop', 'bigblackbartop', -250, 0.75, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 250, 0.75, 'cubeOut')
    end

    if curBeat == 104 or curBeat == 300 then
        doTweenY('woohooTop', 'bigblackbartop', -275, 0.75, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 275, 0.75, 'cubeOut')
    end

    if curBeat == 112 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 1, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 1, 'cubeOut')
        noteTweenY('hiNotes1', 0, 50, 1.75, 'cubeInOut');
        noteTweenY('hiNotes2', 1, 50, 1.75, 'cubeInOut');
        noteTweenY('hiNotes3', 2, 50, 1.75, 'cubeInOut');
        noteTweenY('hiNotes4', 3, 50, 1.75, 'cubeInOut');
        noteTweenY('hiNotes5', 4, 50, 1.75, 'cubeInOut');
        noteTweenY('hiNotes6', 5, 50, 1.75, 'cubeInOut');
        noteTweenY('hiNotes7', 6, 50, 1.75, 'cubeInOut');
        noteTweenY('hiNotes8', 7, 50, 1.75, 'cubeInOut');
        doTweenX('byeHUD1','healthBar',925,crochet*0.0025,'cubeInOut')
        doTweenX('byeHUD2','healthBarAround',921,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD3','iconP1',554,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD4','iconP2',0,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',689,crochet*0.0025,'cubeInOut')
        doTweenAlpha('byeHUD6', 'timeBar', 1, crochet*0.0025, 'linear')
        doTweenAlpha('byeHUD7', 'songIcon', 1, crochet*0.0025, 'linear')
        doTweenAlpha('byeHUD8', 'timeTxt', 1, crochet*0.0025, 'linear')
    end
end

