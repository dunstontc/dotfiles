read -e IMAGE;
	sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '$IMAGE'" && killall Dock
# killall Dock
