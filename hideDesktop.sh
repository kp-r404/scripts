#Open Terminal
#Enable execute function: chmod +x ~/Desktop/hideDesktop.sh


#!/bin/bash

# Ensure 'showDesktop.sh' is visible
chflags nohidden ~/Desktop/showDesktop.sh

# Hide all other desktop icons
for file in ~/Desktop/*; do
    if [ "$file" != "$HOME/Desktop/showDesktop.sh" ]; then
        chflags hidden "$file"
    fi
done
