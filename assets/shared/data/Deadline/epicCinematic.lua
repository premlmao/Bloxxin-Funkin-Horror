function onCreate()

    makeLuaSprite('bigblackbartop', 'bigBlackBarTop',0,0)
    setObjectCamera('bigblackbartop', 'other')
    setScrollFactor('bigblackbartop', 0, 0)
    addLuaSprite('bigblackbartop', true)

    makeLuaSprite('bigblackbarbottom', 'bigBlackBarBottom',0,0)
    setObjectCamera('bigblackbarbottom', 'other')
    setScrollFactor('bigblackbarbottom', 0, 0)
    addLuaSprite('bigblackbarbottom', true)
end

function onSongStart()
    doTweenY('woohooTop', 'bigblackbartop', -300, 1.25, 'cubeOut')
    doTweenY('woohoobottom', 'bigblackbarbottom', 300, 1.25, 'cubeOut')
    noteTweenAlpha('byeNotes1', 0, 0, 0.5, 'cubeOut');
    noteTweenAlpha('byeNotes2', 1, 0, 0.5, 'cubeOut');
    noteTweenAlpha('byeNotes3', 2, 0, 0.5, 'cubeOut');
    noteTweenAlpha('byeNotes4', 3, 0, 0.5, 'cubeOut');
    noteTweenY('hiNotes5', 4, 100, 1.25, 'backInOut');
    noteTweenY('hiNotes6', 5, 100, 1.25, 'backInOut');
    noteTweenY('hiNotes7', 6, 100, 1.25, 'backInOut');
    noteTweenY('hiNotes8', 7, 100, 1.25, 'backInOut');
end

function onBeatHit()
    if curBeat == 144 then
        doTweenY('woohooTop', 'bigblackbartop', -200, 2.75, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 200, 2.75, 'cubeOut')
    end

    if curBeat == 152 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 1.75, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 1.75, 'cubeOut')
    end

    if curBeat == 468 then
        doTweenY('woohooTop', 'bigblackbartop', -300, 2.75, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 300, 2.75, 'cubeOut')
        noteTweenY('notesY5', 4, 100, 2.75, 'backInOut');
        noteTweenY('notesY6', 5, 100, 2.75, 'backInOut');
        noteTweenY('notesY7', 6, 100, 2.75, 'backInOut');
        noteTweenY('notesY8', 7, 100, 2.75, 'backInOut');
        doTweenY('HUDmove1','healthBar',591,crochet*0.0075,'backInOut')
        doTweenY('HUDmove2','healthBarAround',579,crochet*0.0075,'backInOut')
        doTweenY('HUDmove3','iconP1',504,crochet*0.0075,'backInOut')
        doTweenY('HUDmove4','iconP2',504,crochet*0.0075,'backInOut')
        doTweenY('HUDmove5','scoreTxt',629,crochet*0.0075,'backInOut')
    end

    if curBeat == 544 then
        doTweenY('woohooTop', 'bigblackbartop', -500, 2.75, 'cubeOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 500, 2.75, 'cubeOut')
        noteTweenY('notesY5', 4, 50, 2.75, 'backInOut');
        noteTweenY('notesY6', 5, 50, 2.75, 'backInOut');
        noteTweenY('notesY7', 6, 50, 2.75, 'backInOut');
        noteTweenY('notesY8', 7, 50, 2.75, 'backInOut');
        doTweenY('HUDmove1','healthBar',641,crochet*0.0075,'backInOut')
        doTweenY('HUDmove2','healthBarAround',629,crochet*0.0075,'backInOut')
        doTweenY('HUDmove3','iconP1',554,crochet*0.0075,'backInOut')
        doTweenY('HUDmove4','iconP2',554,crochet*0.0075,'backInOut')
        doTweenY('HUDmove5','scoreTxt',679,crochet*0.0075,'backInOut')
    end

    if curBeat == 584 then
        doTweenY('woohooTop', 'bigblackbartop', -350, 1.25, 'cubeInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 350, 1.25, 'cubeInOut')
    end 

    if curBeat == 592 then
        doTweenY('woohooTop', 'bigblackbartop', -300, 1.25, 'cubeInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 300, 1.25, 'cubeInOut')
    end

    if curBeat == 600 then
        doTweenY('woohooTop', 'bigblackbartop', -250, 1.25, 'cubeInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 250, 1.25, 'cubeInOut')
    end

    if curBeat == 604 then
        doTweenY('woohooTop', 'bigblackbartop', -225, 1.25, 'cubeInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 225, 1.25, 'cubeInOut')
    end 

    if curBeat == 608 then
        doTweenY('woohooTop', 'bigblackbartop', 0, 2, 'cubeInOut')
        doTweenY('woohoobottom', 'bigblackbarbottom', 0, 2, 'cubeInOut')
    end 
end
