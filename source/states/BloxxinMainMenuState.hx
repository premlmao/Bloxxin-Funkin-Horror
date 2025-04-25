package states;

import flixel.FlxG;
import flixel.FlxObject;
import lime.app.Application;


import states.PlayState;
import states.LoadingState;

import options.OptionsState;

import backend.WeekData;
import backend.Highscore;
import backend.Song;

class BloxxinMainMenuState extends MusicBeatState
{
    public static var psychEngineVersion:String = '0.7.2h';
    public static var curSelected:Int = 0;
    public static var started:Bool = true;
    public var hovering:Bool = false;

    var menuOptions:FlxTypedGroup<FlxSprite>;

    var optionArray:Array<String> = ['week1', 'week2', 'freeplay', 'credits', 'options'];

    var bg:FlxSprite;
    var menuItem:FlxSprite;

    override function create()
    {
        #if desktop
		// Updating Discord Rich Presence
		DiscordClient.changePresence("In the Menus", null);
		#end

		if (!FlxG.mouse.visible)
            FlxG.mouse.visible = true;
        
        persistentUpdate = persistentDraw = true;

        bg = new FlxSprite(0, 0).loadGraphic(Paths.image('mainmenu/bg'));
        bg.antialiasing = ClientPrefs.data.antialiasing;
        bg.updateHitbox();
        bg.screenCenter();
        add(bg);

        menuOptions = new FlxTypedGroup<FlxSprite>();
        add(menuOptions);

        for (i in 0...optionArray.length)
        {
            menuItem = new FlxSprite().loadGraphic(Paths.image('mainmenu/menu_' + optionArray[i]));
            menuItem.antialiasing = ClientPrefs.data.antialiasing;
            menuItem.ID = i;
            
            menuItem.scale.set(0.5, 0.5);

            switch(i)
            {
                case 0:
                    menuItem.scale.set(0.35, 0.35);
                    menuItem.setPosition(190, 390);

                case 1:
                    menuItem.scale.set(0.35, 0.35);
                    menuItem.setPosition(555, 390);
                case 2:
                    menuItem.setPosition(45, 50);
                case 3:
                    menuItem.setPosition(32, 100);
                case 4:
                    menuItem.setPosition(37, 150);
                case 5:
                    menuItem.setPosition(36, 200);
            }
            menuItem.updateHitbox();
            menuOptions.add(menuItem);
        }
        super.create();
    }

    var selected:Bool = false;
    var ableToClick:Bool = true;

    override function update(elapsed:Float)
    {

        menuOptions.forEach(function(item:FlxSprite)
        {
            if (FlxG.mouse.overlaps(item))
            {
                if (ableToClick)
                {
                    curSelected = item.ID;
                    trace("hovering: " + optionArray[curSelected]);
                    
                    if (FlxG.mouse.justPressed)
                    {
                        accepted();
                    }
                }
            }
        });
        super.update(elapsed);
    }
    function accepted()
    {
        if (optionArray[curSelected] == 'week2')
        {
            selected = false;
            var targetsArray:Array<FlxCamera> = FlxG.cameras.list;
            for (i in 0...targetsArray.length)
            {
                targetsArray[i].shake(0.001, 0.1);
            }
        }
        else
        {
            FlxG.sound.play(Paths.sound('confirmMenu'));
            
            selected = true;

            if (FlxG.mouse.visible == true)
                FlxG.mouse.visible = false;

            FlxTween.tween(FlxG.camera, {zoom: 2.5}, 1, {ease: FlxEase.circIn});
            {
                switch(optionArray[curSelected])
                {
                    case 'week1':
                        PlayState.storyPlaylist = ['ProveIt', 'Deadline', 'Powering'];
                        PlayState.isStoryMode = true;
                        WeekData.reloadWeekFiles(true);
                        PlayState.SONG = Song.loadFromJson(PlayState.storyPlaylist[0].toLowerCase() + "", PlayState.storyPlaylist[0].toLowerCase());
                        PlayState.campaignScore = 0;
                        PlayState.campaignMisses = 0;
                        LoadingState.loadAndSwitchState(new PlayState(), true);
                        FreeplayState.destroyFreeplayVocals();
                    case 'freeplay':
                        MusicBeatState.switchState(new BloxxinFreeplayState());
                    case 'options':
                            MusicBeatState.switchState(new OptionsState());
                            OptionsState.onPlayState = false;
                            if (PlayState.SONG != null)
                            {
                                PlayState.SONG.arrowSkin = null;
                                PlayState.SONG.splashSkin = null;
                                PlayState.stageUI = 'normal';
                            }
                    case 'credits':
                        MusicBeatState.switchState(new BloxxinCreditsState());
                }
            }
    }
}
}