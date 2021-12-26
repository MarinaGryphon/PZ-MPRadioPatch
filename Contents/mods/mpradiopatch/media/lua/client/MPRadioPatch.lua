oldProcessSayMessage = processSayMessage;
processSayMessage = function(spokenMessage)
	if not spokenMessage then return end
	trimmedMessage = luautils.trim(spokenMessage);
	if not trimmedMessage or #trimmedMessage == 0 then return end
	getPlayer():setLastSpokenLine(trimmedMessage);
	print(getPlayer():getLastSpokenLine());
	oldProcessSayMessage(trimmedMessage);
end