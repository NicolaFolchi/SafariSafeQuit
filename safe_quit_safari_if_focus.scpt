if frontmost of application "Safari" then
	tell application "Safari"
		set _window_count to count windows
		set _tab_count to 0
		
		repeat with _w in every window
			set _tab_count to _tab_count + (count tabs of _w)
		end repeat
		
		-- Make a string like "1 window containing 3 tabs."
		if _window_count is 1 then
			set _msg to _window_count & " window containing " as string
		else
			set _msg to _window_count & " windows containing " as string
		end if
		if _tab_count is 1 then
			set _msg to _msg & _tab_count & " tab." as string
		else
			set _msg to _msg & _tab_count & " tabs." as string
		end if
	  activate	
		display alert ¬
			"Are you sure you want to quit Safari?" message _msg ¬
			buttons {"Quit", "Cancel"} default button "Quit" cancel button "Cancel" ¬
			giving up after 60
		if button returned of result is "Quit" then quit
	end tell
else
	set {name:n, name extension:e} to (info for (path to frontmost application))
	set appName to n's text 1 thru ((my (offset of ("." & e) in n)) - 1)
	tell application appName
		quit
	end tell
end if
