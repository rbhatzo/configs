#!/bin/bash

# Powerlevel 9k theme
echo "Cloning Powerlevel 9k.."
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k


# ZSH AutoSuggestions
echo "Cloning ZSH Auto Suggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# ZSH Syntax Highlighting
echo "Cloning ZSH Syntax Highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Installing Nerd Font
echo "Installed Nerd Font..."
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
