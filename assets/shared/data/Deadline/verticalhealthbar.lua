function onCreate()

    makeLuaSprite('deadlineBar', 'deadlineBar',0,0)
    setObjectCamera('deadlineBar', 'hud')
    setScrollFactor('deadlineBar', 0, 0)
    setProperty('deadlineBar.visible', false)
    addLuaSprite('deadlineBar', true)
    setProperty('deadlineBar.angle', 90)
    setProperty('deadlineBar.y', 335)
    setProperty('deadlineBar.x', 1200)


    makeLuaSprite('house', 'icons/icon-house',0,0)
    setObjectCamera('house', 'hud')
    setScrollFactor('house', 0, 0)
    setProperty('house.visible', false)
    addLuaSprite('house', true)

    makeLuaSprite('idiots', 'icons/icon-idiots',0,0)
    setObjectCamera('idiots', 'hud')
    setScrollFactor('idiots', 0, 0)
    setProperty('idiots.visible', false)
    addLuaSprite('idiots', true)

    makeLuaSprite('moon', 'icons/icon-moon',0,0)
    setObjectCamera('moon', 'hud')
    setScrollFactor('moon', 0, 0)
    setProperty('moon.visible', false)
    addLuaSprite('moon', true)
end

function onBeatHit()
    if curBeat == 348 then
        setProperty('healthBar.angle', 90)
        setProperty('healthBar.y', 350)
        setProperty('healthBar.x', 1200)
        setProperty('healthBar.alpha', 0)
        setProperty('healthBarAround.alpha', 0)

        setProperty('house.x', 1300)
        setProperty('idiots.x', 1500)
        setProperty('moon.x', 500)
        setProperty('house.y', 554)
        setProperty('idiots.y', 0)
        setProperty('moon.y', 0)
        setProperty('iconP1.alpha', 0)
        setProperty('iconP2.alpha', 0)
        setProperty('house.visible', true)
        setProperty('idiots.visible', true)
        setProperty('moon.visible', true)
        setProperty('deadlineBar.visible', true)
    end

    if curBeat == 425 then
        doTweenAlpha('hiHUD6','scoreTxt',0,0.2,'linear')
        doTweenAlpha('hiHUD7','songIcon',0,0.2,'linear')
        doTweenAlpha('hiHUD8','timeTxt',0,0.2,'linear')
    end

    if curBeat == 433 then
        doTweenAlpha('hiHUD1','healthBar',0,0.4,'linear')
        doTweenAlpha('hiHUD2','healthBarAround',1,0.4,'linear')
        doTweenAlpha('hiHUD3','house',1,0.4,'linear')
        doTweenAlpha('hiHUD4','idiots',1,0.4,'linear')
        doTweenAlpha('hiHUD5','moon',1,0.4,'linear')
    end

    if curBeat == 464 then
        doTweenAlpha('hiHUD2','healthBarAround',0,0.6,'linear')
        doTweenAlpha('hiHUD2','deadlineBar',0,0.6,'linear')
        doTweenAlpha('hiHUD3','house',0,0.6,'linear')
        doTweenAlpha('hiHUD4','idiots',0,0.6,'linear')
        doTweenAlpha('hiHUD5','moon',0,0.6,'linear')
    end
end

function onStepHit()
    if curStep == 1405 then
        doTweenX('byeHUD1','healthBar',875,crochet*0.0025,'cubeInOut')
        doTweenX('byeHUD2','healthBarAround',871,crochet*0.0025,'cubeInOut')
        doTweenX('thehell','deadlineBar',871,crochet*0.0025,'cubeInOut')
        doTweenX('doyouwork', 'house',1100,crochet*0.0025,'cubeInOut')
        doTweenX('byeHUD3','idiots',1100,crochet*0.0025,'cubeInOut')
        doTweenY('yahhhhh', 'idiots',554,43,'linear')
        doTweenY('aa','house',554,crochet*0.0025,'cubeInOut')
        doTweenY('byeHUD5','scoreTxt',689,crochet*0.0025,'cubeInOut')
        doTweenAlpha('byeHUD6', 'timeBar', 1, crochet*0.0025, 'linear')
        doTweenAlpha('byeHUD7', 'songIcon', 1, crochet*0.0025, 'linear')
        doTweenAlpha('byeHUD8', 'timeTxt', 1, crochet*0.0025, 'linear')
    end
end