#!/usr/bin/env bash
#
# need to install developer tools along with xcode
xcode-select --install
sudo xcodebuild -license

# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.
echo "› sudo softwareupdate -i -a"
sudo softwareupdate -i -a

# install brew itself
echo "Installing homebrew latest version........................................"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "done..."

# Run Homebrew through the Brewfile
echo "› brew bundle"
brew bundle

# git configuration
echo "setting up git configuration and gitignore files.........................."
echo "removing existing .gitconfig and .gitignore files"
rm -fv ~/.gitconfig ~/.gitignore_global > /dev/null 2> /dev/null
ln -s ~/Dropbox/dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/Dropbox/dotfiles/git/gitignore_global ~/.gitignore_global
echo "done..."

# spectacle configuration
# https://github.com/eczarny/spectacle/issues/424
echo "setting up shortcuts for Spectacle........................................"
echo "removing existing Spectacle shortcuts configuration file.................."
rm -fv ~/Library/Application\ Support/Spectacle/Shortcuts.json
cp -r ~/Dropbox/dotfiles/Spectacle/Shortcuts.json ~/Library/Application\ Support/Spectacle/Shortcuts.json 2> /dev/null
echo "done..."

# vim configuration
ln -s ~/Dropbox/dotfiles/vim/vimrc ~/.vimrc
