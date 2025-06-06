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

    downscroll = getPropertyFromClass('backend.ClientPrefs', 'data.downScroll')
end

function onBeatHit()
    if curBeat == 96 or curBeat == 110 or curBeat == 292 or curBeat == 310 then
        doTweenY('woohooTop', 'bigblackbartop', -300, 0.75, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 300, 0.75, 'cubeOut')
        noteTweenY('hiNotes1', 0, 100, 0.75, 'cubeOut');
        noteTweenY('hiNotes2', 1, 100, 0.75, 'cubeOut');
        noteTweenY('hiNotes3', 2, 100, 0.75, 'cubeOut');
        noteTweenY('hiNotes4', 3, 100, 0.75, 'cubeOut');
        noteTweenY('hiNotes5', 4, 100, 0.75, 'cubeOut');
        noteTweenY('hiNotes6', 5, 100, 0.75, 'cubeOut');
        noteTweenY('hiNotes7', 6, 100, 0.75, 'cubeOut');
        noteTweenY('hiNotes8', 7, 100, 0.75, 'cubeOut');
        doTweenY('byeHUD1','healthBar',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD2','healthBarAround',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD3','iconP1',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD4','iconP2',900,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',900,crochet*0.0025,'cubeInOut')
        doTweenAlpha('byeHUD6', 'timeBar', 0, crochet*0.0025, 'linear')
        doTweenAlpha('byeHUD7', 'songIcon', 0, crochet*0.0025, 'linear')
        doTweenAlpha('byeHUD8', 'timeTxt', 0, crochet*0.0025, 'linear')
        if downscroll then
            noteTweenY('hiNotes1', 0, 520, 0.75, 'cubeOut');
            noteTweenY('hiNotes2', 1, 520, 0.75, 'cubeOut');
            noteTweenY('hiNotes3', 2, 520, 0.75, 'cubeOut');
            noteTweenY('hiNotes4', 3, 520, 0.75, 'cubeOut');
            noteTweenY('hiNotes5', 4, 520, 0.75, 'cubeOut');
            noteTweenY('hiNotes6', 5, 520, 0.75, 'cubeOut');
            noteTweenY('hiNotes7', 6, 520, 0.75, 'cubeOut');
            noteTweenY('hiNotes8', 7, 520, 0.75, 'cubeOut');
            doTweenY('byeHUD1','healthBar',-300,crochet*0.0025,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',-300,crochet*0.0025,'cubeInOut')
            doTweenY('byeHUD3','iconP1',-300,crochet*0.0025,'cubeInOut')
            doTweenY('byeHUD4','iconP2',-300,crochet*0.0025,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',-300,crochet*0.0025,'cubeInOut')
        end
    end

    if curBeat == 101 or curBeat == 297 then
        doTweenY('woohooTop', 'bigblackbartop', -250, 0.75, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 250, 0.75, 'cubeOut')
        noteTweenY('hiNotes1', 0, 150, 0.75, 'cubeOut');
        noteTweenY('hiNotes2', 1, 150, 0.75, 'cubeOut');
        noteTweenY('hiNotes3', 2, 150, 0.75, 'cubeOut');
        noteTweenY('hiNotes4', 3, 150, 0.75, 'cubeOut');
        noteTweenY('hiNotes5', 4, 150, 0.75, 'cubeOut');
        noteTweenY('hiNotes6', 5, 150, 0.75, 'cubeOut');
        noteTweenY('hiNotes7', 6, 150, 0.75, 'cubeOut');
        noteTweenY('hiNotes8', 7, 150, 0.75, 'cubeOut');
        if downscroll then
            noteTweenY('hiNotes1', 0, 470, 0.75, 'cubeOut');
            noteTweenY('hiNotes2', 1, 470, 0.75, 'cubeOut');
            noteTweenY('hiNotes3', 2, 470, 0.75, 'cubeOut');
            noteTweenY('hiNotes4', 3, 470, 0.75, 'cubeOut');
            noteTweenY('hiNotes5', 4, 470, 0.75, 'cubeOut');
            noteTweenY('hiNotes6', 5, 470, 0.75, 'cubeOut');
            noteTweenY('hiNotes7', 6, 470, 0.75, 'cubeOut');
            noteTweenY('hiNotes8', 7, 470, 0.75, 'cubeOut');
        end
    end

    if curBeat == 104 or curBeat == 300 then
        doTweenY('woohooTop', 'bigblackbartop', -275, 0.75, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 275, 0.75, 'cubeOut')
        noteTweenY('hiNotes1', 0, 125, 0.75, 'cubeOut');
        noteTweenY('hiNotes2', 1, 125, 0.75, 'cubeOut');
        noteTweenY('hiNotes3', 2, 125, 0.75, 'cubeOut');
        noteTweenY('hiNotes4', 3, 125, 0.75, 'cubeOut');
        noteTweenY('hiNotes5', 4, 125, 0.75, 'cubeOut');
        noteTweenY('hiNotes6', 5, 125, 0.75, 'cubeOut');
        noteTweenY('hiNotes7', 6, 125, 0.75, 'cubeOut');
        noteTweenY('hiNotes8', 7, 125, 0.75, 'cubeOut');
        if downscroll then
            noteTweenY('hiNotes1', 0, 495, 0.75, 'cubeOut');
            noteTweenY('hiNotes2', 1, 495, 0.75, 'cubeOut');
            noteTweenY('hiNotes3', 2, 495, 0.75, 'cubeOut');
            noteTweenY('hiNotes4', 3, 495, 0.75, 'cubeOut');
            noteTweenY('hiNotes5', 4, 495, 0.75, 'cubeOut');
            noteTweenY('hiNotes6', 5, 495, 0.75, 'cubeOut');
            noteTweenY('hiNotes7', 6, 495, 0.75, 'cubeOut');
            noteTweenY('hiNotes8', 7, 495, 0.75, 'cubeOut');
        end
    end

    if curBeat == 112 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 1, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 1, 'cubeOut')
        noteTweenY('hiNotes1', 0, 50, 1.75, 'cubeOut');
        noteTweenY('hiNotes2', 1, 50, 1.75, 'cubeOut');
        noteTweenY('hiNotes3', 2, 50, 1.75, 'cubeOut');
        noteTweenY('hiNotes4', 3, 50, 1.75, 'cubeOut');
        noteTweenY('hiNotes5', 4, 50, 1.75, 'cubeOut');
        noteTweenY('hiNotes6', 5, 50, 1.75, 'cubeOut');
        noteTweenY('hiNotes7', 6, 50, 1.75, 'cubeOut');
        noteTweenY('hiNotes8', 7, 50, 1.75, 'cubeOut');
        doTweenY('hiHUD1','healthBar',648,crochet*0.0025,'cubeInOut')
        doTweenY('hiHUD2','healthBarAround',629,crochet*0.0025,'cubeInOut')
        doTweenY('hiHUD3','iconP1',554,crochet*0.0025,'cubeInOut')
        doTweenY('hiHUD4','iconP2',554,crochet*0.0025,'cubeInOut')
        doTweenY('hiHUD5','scoreTxt',689,crochet*0.0025,'cubeInOut')
        doTweenAlpha('hiHUD6', 'timeBar',1,crochet*0.0025,'linear')
        doTweenAlpha('hiHUD7', 'songIcon',1,crochet*0.0025,'linear')
        doTweenAlpha('hiHUD8', 'timeTxt',1,crochet*0.0025,'linear')
        if downscroll then
            noteTweenY('hiNotes1', 0, 570, 1.75, 'cubeOut');
            noteTweenY('hiNotes2', 1, 570, 1.75, 'cubeOut');
            noteTweenY('hiNotes3', 2, 570, 1.75, 'cubeOut');
            noteTweenY('hiNotes4', 3, 570, 1.75, 'cubeOut');
            noteTweenY('hiNotes5', 4, 570, 1.75, 'cubeOut');
            noteTweenY('hiNotes6', 5, 570, 1.75, 'cubeOut');
            noteTweenY('hiNotes7', 6, 570, 1.75, 'cubeOut');
            noteTweenY('hiNotes8', 7, 570, 1.75, 'cubeOut');
            doTweenY('hiHUD1','healthBar',79,crochet*0.0025,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',67,crochet*0.0025,'cubeInOut')
            doTweenY('hiHUD3','iconP1',4,crochet*0.0025,'cubeInOut')
            doTweenY('hiHUD4','iconP2',4,crochet*0.0025,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',129,crochet*0.0025,'cubeInOut')
        end
    end

    if curBeat == 316 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 5, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 5, 'cubeOut')
    end
end

