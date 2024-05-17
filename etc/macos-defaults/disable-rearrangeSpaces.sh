#!/bin/bash

# From https://apple.stackexchange.com/questions/214348/how-to-prevent-mac-from-changing-the-order-of-desktops-spaces
#
defaults write com.apple.dock "mru-spaces" -bool "false" && killall Dock
