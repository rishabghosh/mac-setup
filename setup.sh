#! /bin/bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -nv true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "HomeBrew Install"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/luckyganesh/mac-setup/master/scripts/homebrew.sh)"

echo "core_utils Install"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/luckyganesh/mac-setup/master/scripts/coreUtils.sh)"

echo "node_modules install"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/luckyganesh/mac-setup/master/scripts/nodeModules.sh)"

echo "install zsh_features"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/luckyganesh/mac-setup/master/scripts/zshFeatures.sh)"

echo "Vim upgrade"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/luckyganesh/mac-setup/master/scripts/vimScript.sh)"

echo "install vim plugins"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/luckyganesh/mac-setup/master/scripts/vimPlugins.sh)"

echo "APPLICATIONS";
sh -c "$(curl -fsSL https://raw.githubusercontent.com/luckyganesh/mac-setup/master/scripts/applications.sh)"

echo "install intellij and java11"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/luckyganesh/mac-setup/master/scripts/intellijAndJava.sh)"