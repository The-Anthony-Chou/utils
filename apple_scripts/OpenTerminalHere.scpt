tell application "Finder"
	try
		set finderPath to (target of front Finder window as alias)
	on error
		set finderPath to (path to desktop)
	end try
end tell

set posixPath to POSIX path of finderPath

tell application "Terminal"
	activate
	do script "cd " & quoted form of posixPath
end tell