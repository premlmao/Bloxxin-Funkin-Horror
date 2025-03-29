function onCreate()
    makeAnimatedLuaSprite('hatefire','stages/hatefire',-600,-100);
    addAnimationByPrefix('hatefire','dance','fire',10,true);
    objectPlayAnimation('hatefire','dance',false);
    setScrollFactor('hatefire', 0.5, 0.5);
    scaleObject ('hatefire', 3, 3);
    setProperty('hatefire.antialiasing', false);

    makeAnimatedLuaSprite('hateplatform','stages/hateplatform',680,780);
    addAnimationByPrefix('hateplatform','dance','vibrate',10,true);
    objectPlayAnimation('hateplatform','dance',false);
    setScrollFactor('hateplatform', 1, 1);
    scaleObject ('hateplatform', 3, 3);
    setProperty('hateplatform.antialiasing', false);


      addLuaSprite('hatefire', false);
      addLuaSprite('hateplatform', false);
end
