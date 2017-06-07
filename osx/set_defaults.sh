# Set all keys reapeat when hold
defaults write -g ApplePressAndHoldEnabled -bool false
# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 0

# Turn off mission control animations
defaults write com.apple.dock expose-animation-duration -int 0
