#Open Terminal
#Enable execute function: chmod +x ~/Desktop/showDesktop.sh


#!/bin/bash

# Unhide all files on the desktop
for file in ~/Desktop/*; do
    chflags nohidden "$file"
done

# Ensure desktop icons are enabled (optional, for consistency)
defaults write com.apple.finder CreateDesktop -bool true; killall Finder
