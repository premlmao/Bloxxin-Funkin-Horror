playVideo = true;

function onEndSong()
	if isStoryMode and not seenCutscene then
		if playVideo then
			startVideo('bfgetswhooped');
			playVideo = false;
			return Function_Stop;
		end
	end
	return Function_Continue;
end