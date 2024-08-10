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
    end
    
    function onSongStart()
        noteTweenAlpha('NoteAlpha0', 0, 0, 0.2, linear)
        noteTweenAlpha('NoteAlpha1', 1, 0, 0.2, linear)
        noteTweenAlpha('NoteAlpha2', 2, 0, 0.2, linear)
        noteTweenAlpha('NoteAlpha3', 3, 0, 0.2, linear)
        doTweenX('hudX1', 'healthBar', 100,crochet*0.0025,'cubeInOut')
        doTweenX('hudX2', 'healthBarAround', 100,crochet*0.0025,'cubeInOut')
        doTweenX('hudX3', 'iconP1', 100,crochet*0.0025,'cubeInOut')
        doTweenX('hudX4', 'iconP2', 100,crochet*0.0025,'cubeInOut')
        doTweenX('hudX5', 'scoreTxt', -235,crochet*0.0025,'cubeInOut')
    end
    
    function onBeatHit()
        if curBeat == 36 then
            setHealth(50/50)
        end
    
        if curBeat == 40 then
            doTweenY('hiHUD1','healthBar',641,crochet*0.0075,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',629,crochet*0.0075,'cubeInOut')
            doTweenY('hiHUD3','iconP1',554,crochet*0.0075,'cubeInOut')
            doTweenY('hiHUD4','iconP2',554,crochet*0.0075,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',689,crochet*0.0075,'cubeInOut')
            noteTweenX('NoteX4', 4, 100, 0.5, 'cubeInOut')
            noteTweenX('NoteX5', 5, 210, 0.5, 'cubeInOut')
            noteTweenX('NoteX6', 6, 320, 0.5, 'cubeInOut')
            noteTweenX('NoteX7', 7, 430, 0.5, 'cubeInOut')
            noteTweenAngle('NoteAngle4', 4, -360, 0.5, 'cubeInOut')
            noteTweenAngle('NoteAngle5', 5, -360, 0.5, 'cubeInOut')
            noteTweenAngle('NoteAngle6', 6, -360, 0.5, 'cubeInOut')
            noteTweenAngle('NoteAngle7', 7, -360, 0.5, 'cubeInOut')
        end
    
        if curBeat == 216 then
            doTweenY('byeHUD1','healthBar',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD3','iconP1',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD4','iconP2',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',900,crochet*0.002,'cubeInOut')
        end
    
        if curBeat == 232 then
            noteTweenX('NoteX4', 4, 750, 0.5, 'cubeInOut')
            noteTweenX('NoteX5', 5, 860, 0.5, 'cubeInOut')
            noteTweenX('NoteX6', 6, 970, 0.5, 'cubeInOut')
            noteTweenX('NoteX7', 7, 1080, 0.5, 'cubeInOut')
            doTweenX('hudX1', 'healthBar', 600,crochet*0.0025,'cubeInOut')
            doTweenX('hudX2', 'healthBarAround', 600,crochet*0.0025,'cubeInOut')
            doTweenX('hudX3', 'iconP1', 600,crochet*0.0025,'cubeInOut')
            doTweenX('hudX4', 'iconP2', 600,crochet*0.0025,'cubeInOut')
            doTweenX('hudX5', 'scoreTxt', 265,crochet*0.0025,'cubeInOut')
        end
    
        if curBeat == 280 then
            doTweenY('hiHUD1','healthBar',641,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
            setHealth(50/50)
        end
    
        if curBeat == 335 then
            doTweenY('byeHUD1','healthBar',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD3','iconP1',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD4','iconP2',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',900,crochet*0.002,'cubeInOut')
        end
    
        if curBeat == 339 then
            screenCenter('healthBar', 'x')
            screenCenter('healthBarAround', 'x')
            screenCenter('scoreTxt', 'x')
            setHealth(50/50)
        end
    
        if curBeat == 343 then
            noteTweenX('NoteX0', 0, 315, 0.5, 'cubeInOut')
            noteTweenX('NoteX1', 1, 425, 0.5, 'cubeInOut')
            noteTweenX('NoteX2', 2, 735 ,0.5, 'cubeInOut')
            noteTweenX('NoteX3', 3, 845, 0.5, 'cubeInOut')
            noteTweenX('NoteX4', 4, 315, 0.5, 'cubeInOut')
            noteTweenX('NoteX5', 5, 425, 0.5, 'cubeInOut')
            noteTweenX('NoteX6', 6, 735, 0.5, 'cubeInOut')
            noteTweenX('NoteX7', 7, 845, 0.5, 'cubeInOut')
            noteTweenAngle('NoteAngle0', 0, 360, 0.5, 'cubeInOut')
            noteTweenAngle('NoteAngle1', 1, 360, 0.5, 'cubeInOut')
            noteTweenAngle('NoteAngle2', 2, 360, 0.5, 'cubeInOut')
            noteTweenAngle('NoteAngle3', 3, 360, 0.5, 'cubeInOut')
            noteTweenAngle('NoteAngle4', 4, -360, 0.5, 'cubeInOut')
            noteTweenAngle('NoteAngle5', 5, -360, 0.5, 'cubeInOut')
            noteTweenAngle('NoteAngle6', 6, -360, 0.5, 'cubeInOut')
            noteTweenAngle('NoteAngle7', 7, -360, 0.5, 'cubeInOut')
            noteTweenAlpha('NoteAlpha0', 0, 0.1, 0.2, linear)
            noteTweenAlpha('NoteAlpha1', 1, 0.1, 0.2, linear)
            noteTweenAlpha('NoteAlpha2', 2, 0.1, 0.2, linear)
            noteTweenAlpha('NoteAlpha3', 3, 0.1, 0.2, linear)
            doTweenY('hiHUD1','healthBar',641,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
        end
    
        if curBeat == 407 then
            doTweenY('byeHUD1','healthBar',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD3','iconP1',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD4','iconP2',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',900,crochet*0.002,'cubeInOut')
        end
    
        if curBeat == 411 then
            noteTweenX('NoteX0', 0, 100, 0.5, 'cubeInOut')
            noteTweenX('NoteX1', 1, 210, 0.5, 'cubeInOut')
            noteTweenX('NoteX2', 2, 320 ,0.5, 'cubeInOut')
            noteTweenX('NoteX3', 3, 430, 0.5, 'cubeInOut')
            noteTweenX('NoteX4', 4, 750, 0.5, 'cubeInOut')
            noteTweenX('NoteX5', 5, 860, 0.5, 'cubeInOut')
            noteTweenX('NoteX6', 6, 970, 0.5, 'cubeInOut')
            noteTweenX('NoteX7', 7, 1080, 0.5, 'cubeInOut')
            doTweenX('hudX1', 'healthBar', 600,crochet*0.0025,'cubeInOut')
            doTweenX('hudX2', 'healthBarAround', 600,crochet*0.0025,'cubeInOut')
            doTweenX('hudX3', 'iconP1', 600,crochet*0.0025,'cubeInOut')
            doTweenX('hudX4', 'iconP2', 600,crochet*0.0025,'cubeInOut')
            doTweenX('hudX5', 'scoreTxt', 265,crochet*0.0025,'cubeInOut')
        end
    
        if curBeat == 475 then
            noteTweenAlpha('NoteAlpha0', 0, 0, 0.2, linear)
            noteTweenAlpha('NoteAlpha1', 1, 0, 0.2, linear)
            noteTweenAlpha('NoteAlpha2', 2, 0, 0.2, linear)
            noteTweenAlpha('NoteAlpha3', 3, 0, 0.2, linear)
        end
    
        if curBeat == 479 then
            setHealth(50/50)
            doTweenY('hiHUD1','healthBar',641,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
        end
    
        if curBeat == 543 then
            doTweenY('byeHUD1','healthBar',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD3','iconP1',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD4','iconP2',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',900,crochet*0.002,'cubeInOut')
            noteTweenAlpha('NoteAlpha4', 4, 0, 0.2, linear)
            noteTweenAlpha('NoteAlpha5', 5, 0, 0.2, linear)
            noteTweenAlpha('NoteAlpha6', 6, 0, 0.2, linear)
            noteTweenAlpha('NoteAlpha7', 7, 0, 0.2, linear)
        end
    
        if curBeat == 551 then
            screenCenter('healthBar', 'x')
            screenCenter('healthBarAround', 'x')
            screenCenter('scoreTxt', 'x')
        end
    
        if curBeat == 587 then
            noteTweenAlpha('NoteAlpha4', 4, 1, 0.2, linear)
            noteTweenAlpha('NoteAlpha5', 5, 1, 0.2, linear)
            noteTweenAlpha('NoteAlpha6', 6, 1, 0.2, linear)
            noteTweenAlpha('NoteAlpha7', 7, 1, 0.2, linear)
        end
    
        if curBeat == 623 then
            setHealth(50/50)
            doTweenY('hiHUD1','healthBar',641,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
        end
    
        if curBeat == 759 then
            doTweenY('byeHUD1','healthBar',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD3','iconP1',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD4','iconP2',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',900,crochet*0.002,'cubeInOut')
        end
    
        if curBeat == 761 then
            doTweenX('hudX1', 'healthBar', 100,crochet*0.0025,'cubeInOut')
            doTweenX('hudX2', 'healthBarAround', 100,crochet*0.0025,'cubeInOut')
            doTweenX('hudX3', 'iconP1', 100,crochet*0.0025,'cubeInOut')
            doTweenX('hudX4', 'iconP2', 100,crochet*0.0025,'cubeInOut')
            doTweenX('hudX5', 'scoreTxt', -235,crochet*0.0025,'cubeInOut')
        end
    
        if curBeat == 762 then
            noteTweenX('NoteX4', 4, 100, 0.5, 'cubeInOut')
            noteTweenX('NoteX5', 5, 210, 0.5, 'cubeInOut')
            noteTweenX('NoteX6', 6, 320, 0.5, 'cubeInOut')
            noteTweenX('NoteX7', 7, 430, 0.5, 'cubeInOut')
        end
    
        if curBeat == 763 then
            setHealth(50/50)
            doTweenY('hiHUD1','healthBar',641,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
        end

        if curBeat == 895 then
            doTweenY('byeHUD1','healthBar',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD3','iconP1',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD4','iconP2',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',900,crochet*0.002,'cubeInOut')
        end

        if curBeat == 897 then
            noteTweenX('NoteX4', 4, 750, 0.5, 'cubeInOut')
            noteTweenX('NoteX5', 5, 860, 0.5, 'cubeInOut')
            noteTweenX('NoteX6', 6, 970, 0.5, 'cubeInOut')
            noteTweenX('NoteX7', 7, 1080, 0.5, 'cubeInOut')
            doTweenX('hudX1', 'healthBar', 600,crochet*0.0025,'cubeInOut')
            doTweenX('hudX2', 'healthBarAround', 600,crochet*0.0025,'cubeInOut')
            doTweenX('hudX3', 'iconP1', 600,crochet*0.0025,'cubeInOut')
            doTweenX('hudX4', 'iconP2', 600,crochet*0.0025,'cubeInOut')
            doTweenX('hudX5', 'scoreTxt', 265,crochet*0.0025,'cubeInOut')
            setHealth(50/50)
        end

        if curBeat == 898 then
            setHealth(50/50)
        end

        if curBeat == 899 then
            doTweenY('hiHUD1','healthBar',641,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD2','healthBarAround',629,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD3','iconP1',554,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD4','iconP2',554,crochet*0.005,'cubeInOut')
            doTweenY('hiHUD5','scoreTxt',689,crochet*0.005,'cubeInOut')
            setHealth(50/50)
        end

        if curBeat == 1036 then
            doTweenY('byeHUD1','healthBar',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD2','healthBarAround',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD3','iconP1',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD4','iconP2',900,crochet*0.002,'cubeInOut')
            doTweenY('byeHUD5','scoreTxt',900,crochet*0.002,'cubeInOut')
            noteTweenX('NoteMove4', 4, 415, 1, 'cubeInOut')
            noteTweenX('NoteMove5', 5, 525, 1, 'cubeInOut')
            noteTweenX('NoteMove6', 6, 635, 1, 'cubeInOut')
            noteTweenX('NoteMove7', 7, 745, 1, 'cubeInOut')
        end
    end
    
    function onStepHit()
    if curStep == 864 then
    setProperty('black.visible', true)
    doTweenAlpha('silly','black',1,1)
    end
    
    if curStep == 960 then
    setProperty('black.visible', true)
    doTweenAlpha('silly','black',0,2.5)
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