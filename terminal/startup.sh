#!/bin/bash

GREEN='\033[1;32m'
NC='\033[0m'

# Install Homebrew
echo -e "${GREEN}Installing Homebrew...${NC}"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Xcode command line tools
echo -e "${GREEN}Installing xcode command line tools...${NC}"
xcode-select --install

# Install oh-my-zsh
echo -e "${GREEN}Installing oh-my-zsh...${NC}"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerlevel 9k theme
echo -e "${GREEN}Cloning Powerlevel 9k...${NC}"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# ZSH AutoSuggestions
echo -e "${GREEN}Cloning ZSH Auto Suggestions...${NC}"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# ZSH Syntax Highlighting
echo -e "${GREEN}Cloning ZSH Syntax Highlighting...${NC}"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Installing Nerd Font
echo -e "${GREEN}Installing Nerd Font...${NC}"
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# Installing Utilities
echo -e "${GREEN}Installing tig...${NC}"
brew install tig

echo -e "${GREEN}Installing tmux...${NC}"
brew install tmux

echo -e "${GREEN}Installing bat...${NC}"
brew install bat

echo -e "${GREEN}Installing htop...${NC}"
brew install htop
