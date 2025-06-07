function onCreate()
    makeLuaSprite('black',nil,0,0)
    makeGraphic('black',0xff00000,screenWidth * 2,screenHeight * 2)
    setObjectCamera('black', 'hud')
    setProperty('black.alpha', 0)
    screenCenter('black')
    addLuaSprite('black',true)
    setProperty('black.visible', false)
    setProperty('healthBar.y', 900)
    setProperty('healthBarAround.y', 900)
    setProperty('iconP1.y', 900)
    setProperty('iconP2.y', 900)
    setProperty('scoreTxt.y', 900)
    setProperty('skipCountdown', true)

    downscroll = getPropertyFromClass('backend.ClientPrefs', 'data.downScroll')
    if downscroll then
        setProperty('healthBar.y', -300)
        setProperty('healthBarAround.y', -300)
        setProperty('iconP1.y', -300)
        setProperty('iconP2.y', -300)
        setProperty('scoreTxt.y', -300)
        setProperty('songIcon.visible', false)
    end
    end
    
    function onSongStart()
        noteTweenX('noteX1', 0, -1000, 0.1, 'backInOut');
        noteTweenX('noteX2', 1, -1000, 0.1, 'backInOut');
        noteTweenX('noteX3', 2, -1000, 0.1, 'backInOut');
        noteTweenX('noteX4', 3, -1000, 0.1, 'backInOut');
        noteTweenY('noteY5', 4, -1000, 0.1, 'backInOut');
        noteTweenY('noteY6', 5, -1000, 0.1, 'backInOut');
        noteTweenY('noteY7', 6, -1000, 0.1, 'backInOut');
        noteTweenY('noteY8', 7, -1000, 0.1, 'backInOut');
        noteTweenAlpha('alphaNotes1', 0, 0, 0.1, 'linear');
        noteTweenAlpha('alphaNotes2', 1, 0, 0.1, 'linear');
        noteTweenAlpha('alphaNotes3', 2, 0, 0.1, 'linear');
        noteTweenAlpha('alphaNotes4', 3, 0, 0.1, 'linear');
        if downscroll then
            noteTweenY('noteY5', 4, 1000, 0.1, 'backInOut');
            noteTweenY('noteY6', 5, 1000, 0.1, 'backInOut');
            noteTweenY('noteY7', 6, 1000, 0.1, 'backInOut');
            noteTweenY('noteY8', 7, 1000, 0.1, 'backInOut');
        end
    end
    
    function onBeatHit()
        if curBeat == 32 then
            noteTweenY('noteY5', 4, 150, 5, 'backInOut');
            noteTweenY('noteY6', 5, 150, 5, 'backInOut');
            noteTweenY('noteY7', 6, 150, 5, 'backInOut');
            noteTweenY('noteY8', 7, 150, 5, 'backInOut');
            if downscroll then
                noteTweenY('noteY5', 4, 470, 5, 'backInOut');
                noteTweenY('noteY6', 5, 470, 5, 'backInOut');
                noteTweenY('noteY7', 6, 470, 5, 'backInOut');
                noteTweenY('noteY8', 7, 470, 5, 'backInOut');
            end
        end

        if curBeat == 96 then
            noteTweenY('hiNotes1', 0, 50, 1.75, 'sineInOut');
            noteTweenY('hiNotes2', 1, 50, 1.75, 'sineInOut');
            noteTweenY('hiNotes3', 2, 50, 1.75, 'sineInOut');
            noteTweenY('hiNotes4', 3, 50, 1.75, 'sineInOut');
            noteTweenY('hiNotes5', 4, 50, 1.75, 'sineInOut');
            noteTweenY('hiNotes6', 5, 50, 1.75, 'sineInOut');
            noteTweenY('hiNotes7', 6, 50, 1.75, 'sineInOut');
            noteTweenY('hiNotes8', 7, 50, 1.75, 'sineInOut');
            noteTweenX('NoteX0', 0, 100, 1.75, 'sineInOut')
            noteTweenX('NoteX1', 1, 210, 1.75, 'sineInOut')
            noteTweenX('NoteX2', 2, 320 ,1.75, 'sineInOut')
            noteTweenX('NoteX3', 3, 430, 1.75, 'sineInOut')
            noteTweenAlpha('alphaNotes1', 0, 1, 0.1, 'linear');
            noteTweenAlpha('alphaNotes2', 1, 1, 0.1, 'linear');
            noteTweenAlpha('alphaNotes3', 2, 1, 0.1, 'linear');
            noteTweenAlpha('alphaNotes4', 3, 1, 0.1, 'linear');
            setHealth(50/50)
            doTweenY('hiHUD1','healthBar',648,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',629,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD3','iconP1',554,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD4','iconP2',554,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',689,crochet*0.0099,'cubeInOut')
            doTweenAlpha('hiHUD6', 'timeBar',1,crochet*0.0099,'linear')
            doTweenAlpha('hiHUD7', 'songIcon',1,crochet*0.0099,'linear')
            doTweenAlpha('hiHUD8', 'timeTxt',1,crochet*0.0099,'linear')
            if downscroll then
                noteTweenY('hiNotes1', 0, 570, 1.75, 'sineInOut');
                noteTweenY('hiNotes2', 1, 570, 1.75, 'sineInOut');
                noteTweenY('hiNotes3', 2, 570, 1.75, 'sineInOut');
                noteTweenY('hiNotes4', 3, 570, 1.75, 'sineInOut');
                noteTweenY('hiNotes5', 4, 570, 1.75, 'sineInOut');
                noteTweenY('hiNotes6', 5, 570, 1.75, 'sineInOut');
                noteTweenY('hiNotes7', 6, 570, 1.75, 'sineInOut');
                noteTweenY('hiNotes8', 7, 570, 1.75, 'sineInOut');
                doTweenY('hiHUD1','healthBar',79,crochet*0.0099,'cubeInOut')
                doTweenY('hiHUD2','healthBarAround',67,crochet*0.0099,'cubeInOut')
                doTweenY('hiHUD3','iconP1',4,crochet*0.0099,'cubeInOut')
                doTweenY('hiHUD4','iconP2',4,crochet*0.0099,'cubeInOut')
                doTweenY('hiHUD5','scoreTxt',129,crochet*0.0099,'cubeInOut')
                setProperty('songIcon.visible', true)
            end
        end
        
        if curBeat == 168 then
            doTweenY('byeHUD1','healthBar',900,crochet*0.0099,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',900,crochet*0.0099,'cubeInOut')
            doTweenY('byeHUD3','iconP1',900,crochet*0.0099,'cubeInOut')
            doTweenY('byeHUD4','iconP2',900,crochet*0.0099,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',900,crochet*0.0099,'cubeInOut')
            doTweenAlpha('byeHUD6', 'timeBar', 0, crochet*0.0099, 'linear')
            doTweenAlpha('byeHUD7', 'songIcon', 0, crochet*0.0099, 'linear')
            doTweenAlpha('byeHUD8', 'timeTxt', 0, crochet*0.0099, 'linear')
            if downscroll then
                doTweenY('byeHUD1','healthBar',-300,crochet*0.0099,'cubeInOut')
                doTweenY('byeHUD2','healthBarAround',-300,crochet*0.0099,'cubeInOut')
                doTweenY('byeHUD3','iconP1',-300,crochet*0.0099,'cubeInOut')
                doTweenY('byeHUD4','iconP2',-300,crochet*0.0099,'cubeInOut')
                doTweenY('byeHUD5','scoreTxt',-300,crochet*0.0099,'cubeInOut')
            end
        end

        if curBeat == 236 then
            noteTweenY('hiNotes1', 0, 50, 1.75, 'sineInOut');
            noteTweenY('hiNotes2', 1, 50, 1.75, 'sineInOut');
            noteTweenY('hiNotes3', 2, 50, 1.75, 'sineInOut');
            noteTweenY('hiNotes4', 3, 50, 1.75, 'sineInOut');
            noteTweenY('hiNotes5', 4, 50, 1.75, 'sineInOut');
            noteTweenY('hiNotes6', 5, 50, 1.75, 'sineInOut');
            noteTweenY('hiNotes7', 6, 50, 1.75, 'sineInOut');
            noteTweenY('hiNotes8', 7, 50, 1.75, 'sineInOut');
            setHealth(50/50)
            doTweenY('hiHUD1','healthBar',648,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',629,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD3','iconP1',554,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD4','iconP2',554,crochet*0.0099,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',689,crochet*0.0099,'cubeInOut')
            doTweenAlpha('hiHUD6', 'timeBar',1,crochet*0.0099,'linear')
            doTweenAlpha('hiHUD7', 'songIcon',1,crochet*0.0099,'linear')
            doTweenAlpha('hiHUD8', 'timeTxt',1,crochet*0.0099,'linear')
            if downscroll then
                noteTweenY('hiNotes1', 0, 570, 1.75, 'sineInOut');
                noteTweenY('hiNotes2', 1, 570, 1.75, 'sineInOut');
                noteTweenY('hiNotes3', 2, 570, 1.75, 'sineInOut');
                noteTweenY('hiNotes4', 3, 570, 1.75, 'sineInOut');
                noteTweenY('hiNotes5', 4, 570, 1.75, 'sineInOut');
                noteTweenY('hiNotes6', 5, 570, 1.75, 'sineInOut');
                noteTweenY('hiNotes7', 6, 570, 1.75, 'sineInOut');
                noteTweenY('hiNotes8', 7, 570, 1.75, 'sineInOut');
                doTweenY('hiHUD1','healthBar',79,crochet*0.0099,'cubeInOut')
                doTweenY('hiHUD2','healthBarAround',67,crochet*0.0099,'cubeInOut')
                doTweenY('hiHUD3','iconP1',4,crochet*0.0099,'cubeInOut')
                doTweenY('hiHUD4','iconP2',4,crochet*0.0099,'cubeInOut')
                doTweenY('hiHUD5','scoreTxt',129,crochet*0.0099,'cubeInOut')
            end
        end

        if curBeat == 376 then
            doTweenY('byeHUD1','healthBar',900,crochet*0.0099,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',900,crochet*0.0099,'cubeInOut')
            doTweenY('byeHUD3','iconP1',900,crochet*0.0099,'cubeInOut')
            doTweenY('byeHUD4','iconP2',900,crochet*0.0099,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',900,crochet*0.0099,'cubeInOut')
            doTweenAlpha('byeHUD6', 'timeBar', 0, crochet*0.0025, 'linear')
            doTweenAlpha('byeHUD7', 'songIcon', 0, crochet*0.0025, 'linear')
            doTweenAlpha('byeHUD8', 'timeTxt', 0, crochet*0.0025, 'linear')
            if downscroll then
                doTweenY('byeHUD1','healthBar',-300,crochet*0.0099,'cubeInOut')
                doTweenY('byeHUD2','healthBarAround',-300,crochet*0.0099,'cubeInOut')
                doTweenY('byeHUD3','iconP1',-300,crochet*0.0099,'cubeInOut')
                doTweenY('byeHUD4','iconP2',-300,crochet*0.0099,'cubeInOut')
                doTweenY('byeHUD5','scoreTxt',-300,crochet*0.0099,'cubeInOut')
            end
        end

        function opponentNoteHit()
            if curBeat >= 240 then
            triggerEvent('Screen Shake', '0.1, 0.0075')
            end
        end
    end
    function onStepHit()
        if curStep == 800 then
                noteTweenY('hiNotes1', 0, 100, 0.25, 'cubeInOut');
                noteTweenY('hiNotes2', 1, 100, 0.25, 'cubeInOut');
                noteTweenY('hiNotes3', 2, 100, 0.25, 'cubeInOut');
                noteTweenY('hiNotes4', 3, 100, 0.25, 'cubeInOut');
                noteTweenY('hiNotes5', 4, 100, 0.25, 'cubeInOut');
                noteTweenY('hiNotes6', 5, 100, 0.25, 'cubeInOut');
                noteTweenY('hiNotes7', 6, 100, 0.25, 'cubeInOut');
                noteTweenY('hiNotes8', 7, 100, 0.25, 'cubeInOut');
                doTweenY('byeHUD1','healthBar',900,crochet*0.0025,'cubeInOut')
                doTweenY('byeHUD2','healthBarAround',900,crochet*0.0025,'cubeInOut')
                doTweenY('byeHUD3','iconP1',900,crochet*0.0025,'cubeInOut')
                doTweenY('byeHUD4','iconP2',900,crochet*0.0025,'cubeInOut')
                doTweenY('byeHUD5','scoreTxt',900,crochet*0.0025,'cubeInOut')
                doTweenAlpha('byeHUD6', 'timeBar', 0, crochet*0.0025, 'linear')
                doTweenAlpha('byeHUD7', 'songIcon', 0, crochet*0.0025, 'linear')
                doTweenAlpha('byeHUD8', 'timeTxt', 0, crochet*0.0025, 'linear')
                if downscroll then
                    noteTweenY('hiNotes1', 0, 520, 0.25, 'cubeInOut');
                    noteTweenY('hiNotes2', 1, 520, 0.25, 'cubeInOut');
                    noteTweenY('hiNotes3', 2, 520, 0.25, 'cubeInOut');
                    noteTweenY('hiNotes4', 3, 520, 0.25, 'cubeInOut');
                    noteTweenY('hiNotes5', 4, 520, 0.25, 'cubeInOut');
                    noteTweenY('hiNotes6', 5, 520, 0.25, 'cubeInOut');
                    noteTweenY('hiNotes7', 6, 520, 0.25, 'cubeInOut');
                    noteTweenY('hiNotes8', 7, 520, 0.25, 'cubeInOut');
                    doTweenY('byeHUD1','healthBar',-300,crochet*0.0025,'cubeInOut')
                    doTweenY('byeHUD2','healthBarAround',-300,crochet*0.0025,'cubeInOut')
                    doTweenY('byeHUD3','iconP1',-300,crochet*0.0025,'cubeInOut')
                    doTweenY('byeHUD4','iconP2',-300,crochet*0.0025,'cubeInOut')
                    doTweenY('byeHUD5','scoreTxt',-300,crochet*0.0025,'cubeInOut')
                end
            end

            if curStep == 928 then
                noteTweenAlpha('alphaNotes1', 0, 0, 1, linear);
                noteTweenAlpha('alphaNotes2', 1, 0, 1, linear);
                noteTweenAlpha('alphaNotes3', 2, 0, 1, linear);
                noteTweenAlpha('alphaNotes4', 3, 0, 1, linear);
            end
    if curStep == 1636 then
    setProperty('black.visible', true)
    doTweenAlpha('silly','black',1,4)
    end
    end