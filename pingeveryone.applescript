tell application "Adium"
	set im_message to "Hello, this is an AppleScript Test. Sorry to annoy you."
	repeat with destContact in (every contact of contact group "Test Group")
		activate
		set destAccount to (account of destContact)
		tell destAccount to set destChat to make new chat with contacts {destContact} with new chat window
		tell destChat to send message im_message
	end repeat
end tell