playVideo = true;

function onStartCountdown()
	if isStoryMode and not seenCutscene then
		if playVideo then
			startVideo('GoodDeadlineCutscene'); -- i'll do the cutscene acc thing later
			playVideo = false;
			return Function_Stop;
		end
	end
	return Function_Continue;
end