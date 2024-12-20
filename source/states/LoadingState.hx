package states;

import lime.app.Promise;
import lime.app.Future;

import flixel.FlxState;
import flixel.text.FlxText;

import openfl.utils.Assets;
import lime.utils.Assets as LimeAssets;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;

import backend.StageData;
import backend.WeekData;
import backend.Highscore;
import backend.Song;

import haxe.io.Path;

class LoadingState extends MusicBeatState
{
	inline static var MIN_TIME = 1.0;

	// Browsers will load create(), you can make your song load a custom directory there
	// If you're compiling to desktop (or something that doesn't use NO_PRELOAD_ALL), search for getNextState instead
	// I'd recommend doing it on both actually lol
	
	// TO DO: Make this easier

	var curDifficulty:Int = 0;
	
	var target:FlxState;
	var stopMusic = false;
	var directory:String;
	var callbacks:MultiCallback;
	var targetShit:Float = 0;

	function new(target:FlxState, stopMusic:Bool, directory:String)
	{
		super();
		this.target = target;
		this.stopMusic = stopMusic;
		this.directory = directory;
	}

	var loadRoblox:FlxSprite;
	var portrait:FlxSprite;
	var songText:FlxText;
	var credText:FlxText;
	var joiningText:FlxText;
	override function create()
	{
		var bg:FlxSprite = new FlxSprite(0, 0).makeGraphic(FlxG.width, FlxG.height, 0xff2c2c2c);
		bg.antialiasing = ClientPrefs.data.antialiasing;
		add(bg);

		loadRoblox = new FlxSprite().loadGraphic(Paths.image('mainmenuUI/robloxBackdropWhite'));
		loadRoblox.antialiasing = ClientPrefs.data.antialiasing;
		loadRoblox.updateHitbox();
		loadRoblox.screenCenter();
		loadRoblox.x += 575;
		loadRoblox.y += 300;
		add(loadRoblox);
		FlxTween.tween(loadRoblox, {angle: 180}, 1, {ease: FlxEase.backInOut, type: FlxTweenType.LOOPING});

		songText = new FlxText(FlxG.width * 2, 2, 0, PlayState.SONG.song, 32);
		songText.setFormat(Paths.font("Arial Regular.ttf"), 48, FlxColor.WHITE);
		songText.alignment = "center";
		songText.screenCenter();
		songText.y += 70;
		add(songText);

		credText = new FlxText(FlxG.width * 2, 2, 0, "[no creds yet]", 32);
		credText.setFormat(Paths.font("Arial Regular.ttf"), 24, FlxColor.GRAY);
		credText.alignment = "center";
		credText.screenCenter();
		credText.y = songText.y + 60;
		credText.alpha = 0.85;
		add(credText);

		joiningText = new FlxText(FlxG.width * 2, 2, 0, "Joining server", 32);
		joiningText.setFormat(Paths.font("Arial Regular.ttf"), 22, FlxColor.GRAY);
		joiningText.alignment = "center";
		joiningText.screenCenter();
		joiningText.y = credText.y + 35;
		joiningText.alpha = 0.75;
		add(joiningText);

		if (Highscore.getScore(PlayState.SONG.song, curDifficulty) == 0 && PlayState.SONG.song != "Deformed")
		{
			portrait = new FlxSprite().loadGraphic(Paths.image('freeplay/portrait_Loced'));
			songText.text = 'RESTRICTED_AREA';
			songText.alignment = "center";
			songText.screenCenter();
			songText.y += 70;
			credText.text = 'ERROR_404';
			credText.alignment = "center";
			credText.screenCenter();
			credText.y = songText.y + 60;
		}
		else
		{
			portrait = new FlxSprite().loadGraphic(Paths.image('freeplay/portrait_' + PlayState.SONG.song));
		}
		portrait.antialiasing = ClientPrefs.data.antialiasing;
		portrait.scale.set(0.275, 0.275);
		portrait.updateHitbox();
		portrait.screenCenter();
		portrait.y -= 100;
		add(portrait);

		initSongsManifest().onComplete
		(
			function (lib)
			{
				callbacks = new MultiCallback(onLoad);
				var introComplete = callbacks.add("introComplete");
				/*if (PlayState.SONG != null) {
					checkLoadSong(getSongPath());
					if (PlayState.SONG.needsVoices)
						checkLoadSong(getVocalPath());
				}*/
				if(directory != null && directory.length > 0 && directory != 'shared') {
					checkLibrary('week_assets');
				}

				var fadeTime = 0.5;
				FlxG.camera.fade(FlxG.camera.bgColor, fadeTime, true);
				new FlxTimer().start(fadeTime + MIN_TIME, function(_) introComplete());
			}
		);
	}
	
	function checkLoadSong(path:String)
	{
		if (!Assets.cache.hasSound(path))
		{
			var library = Assets.getLibrary("songs");
			final symbolPath = path.split(":").pop();
			// @:privateAccess
			// library.types.set(symbolPath, SOUND);
			// @:privateAccess
			// library.pathGroups.set(symbolPath, [library.__cacheBreak(symbolPath)]);
			var callback = callbacks.add("song:" + path);
			Assets.loadSound(path).onComplete(function (_) { callback(); });
		}
	}
	
	function checkLibrary(library:String) {
		trace(Assets.hasLibrary(library));
		if (Assets.getLibrary(library) == null)
		{
			@:privateAccess
			if (!LimeAssets.libraryPaths.exists(library))
				throw new haxe.Exception("Missing library: " + library);

			var callback = callbacks.add("library:" + library);
			Assets.loadLibrary(library).onComplete(function (_) { callback(); });
		}
	}
	
	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if(callbacks != null) {
			targetShit = FlxMath.remapToRange(callbacks.numRemaining / callbacks.length, 1, 0, 0, 1);
		}
	}
	
	function onLoad()
	{
		if (stopMusic && FlxG.sound.music != null)
			FlxG.sound.music.stop();
		
		MusicBeatState.switchState(target);
	}
	
	static function getSongPath()
	{
		return Paths.inst(PlayState.SONG.song);
	}
	
	static function getVocalPath()
	{
		return Paths.voices(PlayState.SONG.song);
	}
	
	inline static public function loadAndSwitchState(target:FlxState, stopMusic = false)
	{
		MusicBeatState.switchState(getNextState(target, stopMusic));
	}
	
	static function getNextState(target:FlxState, stopMusic = false):FlxState
	{
		var directory:String = 'shared';
		var weekDir:String = StageData.forceNextDirectory;
		StageData.forceNextDirectory = null;

		if(weekDir != null && weekDir.length > 0 && weekDir != '') directory = weekDir;

		Paths.setCurrentLevel(directory);
		trace('Setting asset folder to ' + directory);

		
		var loaded:Bool = false;
		if (PlayState.SONG != null) {
			loaded = isSoundLoaded(getSongPath()) && (!PlayState.SONG.needsVoices || isSoundLoaded(getVocalPath())) && isLibraryLoaded("shared") && isLibraryLoaded('week_assets');
		}
		
		if (!loaded)
			return new LoadingState(target, stopMusic, directory);
		
		if (stopMusic && FlxG.sound.music != null)
			FlxG.sound.music.stop();
		
		return target;
	}
	
	
	static function isSoundLoaded(path:String):Bool
	{
		trace(path);
		return Assets.cache.hasSound(path);
	}
	
	static function isLibraryLoaded(library:String):Bool
	{
		return Assets.getLibrary(library) != null;
	}
	
	
	override function destroy()
	{
		super.destroy();
		
		callbacks = null;
	}
	
	static function initSongsManifest()
	{
		var id = "songs";
		var promise = new Promise<AssetLibrary>();

		var library = LimeAssets.getLibrary(id);

		if (library != null)
		{
			return Future.withValue(library);
		}

		var path = id;
		var rootPath = null;

		@:privateAccess
		var libraryPaths = LimeAssets.libraryPaths;
		if (libraryPaths.exists(id))
		{
			path = libraryPaths[id];
			rootPath = Path.directory(path);
		}
		else
		{
			if (StringTools.endsWith(path, ".bundle"))
			{
				rootPath = path;
				path += "/library.json";
			}
			else
			{
				rootPath = Path.directory(path);
			}
			@:privateAccess
			path = LimeAssets.__cacheBreak(path);
		}

		AssetManifest.loadFromFile(path, rootPath).onComplete(function(manifest)
		{
			if (manifest == null)
			{
				promise.error("Cannot parse asset manifest for library \"" + id + "\"");
				return;
			}

			var library = AssetLibrary.fromManifest(manifest);

			if (library == null)
			{
				promise.error("Cannot open library \"" + id + "\"");
			}
			else
			{
				@:privateAccess
				LimeAssets.libraries.set(id, library);
				library.onChange.add(LimeAssets.onChange.dispatch);
				promise.completeWith(Future.withValue(library));
			}
		}).onError(function(_)
		{
			promise.error("There is no asset library with an ID of \"" + id + "\"");
		});

		return promise.future;
	}
}

class MultiCallback
{
	public var callback:Void->Void;
	public var logId:String = null;
	public var length(default, null) = 0;
	public var numRemaining(default, null) = 0;
	
	var unfired = new Map<String, Void->Void>();
	var fired = new Array<String>();
	
	public function new (callback:Void->Void, logId:String = null)
	{
		this.callback = callback;
		this.logId = logId;
	}
	
	public function add(id = "untitled")
	{
		id = '$length:$id';
		length++;
		numRemaining++;
		var func:Void->Void = null;
		func = function ()
		{
			if (unfired.exists(id))
			{
				unfired.remove(id);
				fired.push(id);
				numRemaining--;
				
				if (logId != null)
					log('fired $id, $numRemaining remaining');
				
				if (numRemaining == 0)
				{
					if (logId != null)
						log('all callbacks fired');
					callback();
				}
			}
			else
				log('already fired $id');
		}
		unfired[id] = func;
		return func;
	}
	
	inline function log(msg):Void
	{
		if (logId != null)
			trace('$logId: $msg');
	}
	
	public function getFired() return fired.copy();
	public function getUnfired() return [for (id in unfired.keys()) id];
}