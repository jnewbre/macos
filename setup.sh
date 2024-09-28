#! /usr/bin/bash 

# Install Homebrew
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

# Add Homebrew to Path
echo >> ~/.zprofile
	
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile

eval "$(/opt/homebrew/bin/brew shellenv)"

# Customize Terminal
brew install jandedobbeleer/oh-my-posh/oh-my-posh

oh-my-posh font install meslo

# Need to get rid of original config line
echo 'eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/microverse-power.omp.json)"' >> ~/.zshrc

# Git
brew install git
brew link --overwrite git # Forces manual Git install precedence over Apple Git installed by Xcode CLT install during Homebrew install

mkdir ~/Git