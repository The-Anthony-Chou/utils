tell application "Finder"
	try
		set targetPath to (POSIX path of (target of front window as alias))
	on error
		set targetPath to (POSIX path of (path to desktop))
	end try
end tell

do shell script "open -a 'Visual Studio Code' " & quoted form of targetPath