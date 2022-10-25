# How to run a shell script from Mac Menu bar
1. Go to **Applications > Utilites > Script Editor** to open a new AppleScript
2. Open **Preferences > General** and check _'Show Script menu in menu bar'_ and _'Show Computer scripts'_
3. Choose a location for your finished script and select **New Document** to open a blank editor window.
> Note: Default save location for AppleScript is `~/Library/Scripts`
4. write `do shell script "/path/to/script.sh"` and select 'Play' to ensure the script executes as intended.
> Note: The script must be executable (chmod +x) to work with AppleScript
5. Under **File Format** save as 'script' or if you want a clickable app, save as 'Application' instead.

## Embed your shell script within an AppleScript
1. Follow steps 1 & 2 from above
2. write `do shell script` followed by parenthesis containing the entire shell script:
```
do shell script "if [[ `defaults read com.apple.finder CreateDesktop` = true ]]; then
	defaults write com.apple.finder CreateDesktop false;
	killall Finder;
else
	defaults write com.apple.finder CreateDesktop true;
	killall Finder;
fi"
```

### Resources
- [How to Turn Bash Scripts Into Clickable Apps Using AppleScript](https://www.makeuseof.com/tag/applescript-bash-scripts-apps/)
- [How to Get Started with AppleScript](https://medium.com/@Times_New_Rohan/how-to-get-started-with-applescript-c57c5555d55e)
- [How to run a Shell Script from an AppleScript?](https://apple.stackexchange.com/questions/235167/how-to-run-a-shell-script-from-an-applescript)
