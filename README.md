# Safari Safe Quit
After finding myself accidentally quitting Safari with the Command + Q shortcut and having to reset my windows and pages, I decided to create a simple solution using Karabiner. Now, Safari will warn the user before quitting.


## How to run
To implement this, simply clone the repo and edit the *karabiner.json* file located in *~/.config/karabiner/karabiner.json*. Add the complex command rule found in *karabiner_complex_command.json*.

**Please note** the directory where the repo is cloned. If it's different from *~/Projects/SafariSafeQuit/*, adjust the json complex rule accordingly to point to your specific path.