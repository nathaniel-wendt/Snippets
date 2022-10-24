# Toggle desktop icon visibility in OSX

if [[ `defaults read com.apple.finder CreateDesktop` = true ]]; then
	defaults write com.apple.finder CreateDesktop false;
	killall Finder;
else
	defaults write com.apple.finder CreateDesktop true;
	killall Finder;
fi
