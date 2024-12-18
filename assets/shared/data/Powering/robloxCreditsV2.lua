function onCreate()

    -- made by Prem1um

    makeLuaSprite('bigblackbar', 'robloxCreds',0,0)
    scaleObject('bigblackbar', 3, 3)
    setObjectCamera('bigblackbar', 'hud')
    setProperty('bigblackbar.alpha', 0.5)
    addLuaSprite('bigblackbar', true)
    setScrollFactor('bigblackbar', 0, 0)
    setProperty('bigblackbar.y', -200)

    makeLuaText("[", '[    ', 0, 45, 5)
    addLuaText('[');
    setTextSize('[', 25);
    setObjectCamera('[', 'hud');
    setTextFont('[', 'Gotham Black Regular.ttf');
    setTextBorder('[', 2.5, 'black')
    setProperty('[.y', -200)

    makeLuaText("song", songName, 0, 105, 5)
    addLuaText('song');
    setTextSize('song', 25);
    setObjectCamera('song', 'hud');
    setTextFont('song', 'Gotham Black Regular.ttf');
    setTextBorder('song', 2.5, 'black')
    setProperty('song.y', -200)

    makeLuaText("|", '|', 0, 255, 5)
    addLuaText('|');
    setTextSize('|', 25);
    setObjectCamera('|', 'hud');
    setTextFont('|', 'Gotham Black Regular.ttf');
    setTextBorder('|', 2.5, 'black')
    setProperty('|.y', -200)

    -----------------musicians--------------------
    makeLuaText("musicText", 'musicians:', 0, 275, 5);
	addLuaText('musicText');
	setTextSize('musicText', 25);
	setTextColor("musicText", "FFFFFF")
	setObjectCamera('musicText', 'hud');
    setTextFont('musicText', 'Gotham Black Regular.ttf');
    setTextBorder('musicText', 2.5, 'black')
    setProperty('musicText.y', -200)

	makeLuaText("musicians", 'Unfunny2 |', 0, 420, 5); --change this to musicians name
	addLuaText('musicians');
	setTextSize('musicians', 25);
	setObjectCamera('musicians', 'hud');
    setTextFont('musicians', 'Gotham Black Regular.ttf');
    setTextBorder('musicians', 2.5, 'black')
    setProperty('musicians.y', -200)

    -----------------charters--------------------
    makeLuaText("chartText", 'charters:', 0, 575, 5);
	addLuaText('chartText');
	setTextSize('chartText', 25);
	setTextColor("chartText", "FFFFFF")
	setObjectCamera('chartText', 'hud');
    setTextFont('chartText', 'Gotham Black Regular.ttf');
    setTextBorder('chartText', 2.5, 'black')
    setProperty('chartText.y', -200)

	makeLuaText("charters", 'Unfunny2  |', 0, 705, 5); --change this to charters name
	addLuaText('charters');
	setTextSize('charters', 25);
	setObjectCamera('charters', 'hud');
    setTextFont('charters', 'Gotham Black Regular.ttf');
    setTextBorder('charters', 2.5, 'black')
    setProperty('charters.y', -200)

    -----------------artists--------------------
    makeLuaText("artText", 'artists:', 0, 865, 5);
	addLuaText('artText');
	setTextSize('artText', 25);
	setTextColor("artText", "FFFFFF")
	setObjectCamera('artText', 'hud');
    setTextFont('artText', 'Gotham Black Regular.ttf');
    setTextBorder('artText', 2.5, 'black')
    setProperty('artText.y', -200)

	makeLuaText("artists", 'Unfunny2, Nohomatta     ]', 0, 965, 5); --change this to artists name
	addLuaText('artists');
	setTextSize('artists', 25);
	setObjectCamera('artists', 'hud');
    setTextFont('artists', 'Gotham Black Regular.ttf');
    setTextBorder('artists', 2.5, 'black')
    setProperty('artists.y', -200)
end

function onBeatHit()
    if curBeat == 32 then
        doTweenY('hi', 'bigblackbar', 0, 1, 'circInOut');
        doTweenY('hi2', '[', 25, 1, 'circInOut');
        doTweenY('hi3', 'song', 25, 1, 'circInOut');
        doTweenY('hi4', '|', 25, 1, 'circInOut');
        doTweenY('hi5', 'musicText', 25, 1, 'circInOut');
        doTweenY('hi6', 'musicians', 25, 1, 'circInOut');
        doTweenY('hi7', 'chartText', 25, 1, 'circInOut');
        doTweenY('hi8', 'charters', 25, 1, 'circInOut');
        doTweenY('hi9', 'artText', 25, 1, 'circInOut');
        doTweenY('hi10', 'artists', 25, 1, 'circInOut');
    end
    if curBeat == 40 then
        doTweenY('bye', 'bigblackbar', -200, 1, 'circInOut')
        doTweenY('bye2', '[', -200, 1, 'circInOut');
        doTweenY('bye3', 'song', -200, 1, 'circInOut');
        doTweenY('bye4', '|', -200, 1, 'circInOut');
        doTweenY('bye5', 'musicText', -200, 1, 'circInOut');
        doTweenY('bye6', 'musicians', -200, 1, 'circInOut');
        doTweenY('bye7', 'chartText', -200, 1, 'circInOut');
        doTweenY('bye8', 'charters', -200, 1, 'circInOut');
        doTweenY('bye9', 'artText', -200, 1, 'circInOut');
        doTweenY('bye10', 'artists', -200, 1, 'circInOut');
    end
    if curBeat == 48 then
        removeLuaSprite('bigblackbar', true)
        removeLuaSprite('[', true)
        removeLuaSprite('song', true)
        removeLuaSprite('|', true)
        removeLuaSprite('musicText', true)
        removeLuaSprite('musicians', true)
        removeLuaSprite('chartText', true)
        removeLuaSprite('charters', true)
        removeLuaSprite('artText', true)
        removeLuaSprite('artists', true)
    end
end
