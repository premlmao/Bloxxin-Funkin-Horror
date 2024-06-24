//Personalized SPECIFICALLY for unfunny, youre welcome -nil


import psychlua.LuaUtils;

import hxcodec.flixel.FlxVideo;

var globalData:Array<Array<Dynamic>> = [];

/////////////////////////////////////IGNORE EVERYTHING HERE


function onStartCountdown()
{
	return Function_Stop; //IGNORE THIS TOO
}





////////////////////////////////////PAY ATTENTION HERE
function onStepHit()
{
	switch (curStep)
    {
        case 502: //Timing reasons
		makeVideoSprite("Hi", 'LandmineCutscene', -300,-190, false); 


		//The thing above is an example, remove the // and change VIDEONAME to well, the .mp4s name
	}
}






//Video stuff (IGNORE THIS TOO BTW, BUT SCROLL DOWN STILL THERES SOMETHING IMPORTATN)
function makeVideoSprite(tag:String, videoFile:String, ?x:Float, ?y:Float, ?shouldLoop:Bool):Void
{
	var videoData:Array<Dynamic> = [];
	
	var sprite:FlxSprite = new FlxSprite(x, y).makeGraphic(1, 1, FlxColor.TRANSPARENT);
	sprite.camera = FlxG.cameras.list[FlxG.cameras.list.length - 2];
    sprite.scale.set(0.7, 0.7);
	game.modchartSprites.set(tag + '_video', sprite);
	add(sprite);
	
	var video:FlxVideo = new FlxVideo();
	
	video.alpha = 0;
	
	video.onTextureSetup.add(function()
	{
		sprite.loadGraphic(video.bitmapData);
	});
	
	video.play(Paths.video(videoFile), shouldLoop);
	
	video.onEndReached.add(function()
	{
		video.dispose();
		
		if (FlxG.game.contains(video))
			FlxG.game.removeChild(video);
		
		if (globalData.indexOf(videoData) >= 0)
			globalData.remove(videoData);
		
		if (game.modchartSprites.exists(tag + '_video'))
		{
			game.modchartSprites.get(tag + '_video').destroy();
			game.modchartSprites.remove(tag + '_video');
		}
			
		game.callOnLuas('onVideoFinished', [tag]);
        
	});
	
	FlxG.game.addChild(video);
	
	videoData.push(video);
	videoData.push(sprite);
	
	globalData.push(videoData);
};

function onPause()
{
	for (video in globalData)
	{
		if (video[0] != null)
		{
			video[0].pause();
			
			if (FlxG.autoPause)
			{
				if (FlxG.signals.focusGained.has(video[0].resume))
					FlxG.signals.focusGained.remove(video[0].resume);

				if (FlxG.signals.focusLost.has(video[0].pause))
					FlxG.signals.focusLost.remove(video[0].pause);
			}
		}
	}
}

function onResume()
{
	for (video in globalData)
	{
		if (video[0] != null)
			video[0].resume();
			
		if (FlxG.autoPause)
		{
			if (!FlxG.signals.focusGained.has(video[0].resume))
				FlxG.signals.focusGained.add(video[0].resume);

			if (!FlxG.signals.focusLost.has(video[0].pause))
				FlxG.signals.focusLost.add(video[0].pause);
		}
	}
}

function onDestroy()
{
	for (video in globalData)
	{
		if (video[0] != null)
			video[0].stop();
	}
}




/////////////////////////////////////////PAY ATTENTION HERE
var cacheList:Array<String> = [
	'LandmineCutscene' //Change this to the videos .mp4 name, For example if the video is named "Hotel_Cutscene", put that here!
];

function precacheVideos(list:Array<String>)
{	
	for (i in 0 ... list.length)
	{	
		var video:FlxVideo = new FlxVideo();
		
		video.play(Paths.video(list[i]));
		
		video.onEndReached.add(function()
		{
			video.dispose();
		});
		
		video.stop();
		game.startCountdown();
	}
}

precacheVideos(cacheList);