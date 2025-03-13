playVideo = true;

function onEndSong()
	if playVideo then
		startVideo('OOFEXEDEATH');
		playVideo = false;
		return Function_Stop;
	end
end