#! /bin/zsh

# Homebrew - Install
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

# Homebrew - Add to Path
echo >> ~/.zprofile
	
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile

eval "$(/opt/homebrew/bin/brew shellenv)"

# Terminal - Install Theme Customizer
brew install jandedobbeleer/oh-my-posh/oh-my-posh

# Terminall - Create .cache folder to hold cache files from Oh My Posh
if [ ! -d "/Users/$(whoami)/.cache" ]; then
    mkdir ~/.cache
fi

# Terminal - Install Font
oh-my-posh font install meslo

# Terminal - Install Theme
echo 'eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/microverse-power.omp.json)"' >> ~/.zshrc # Need to get rid of original config line

# Git - Install
brew install git
brew link --overwrite git # Forces manual Git install precedence over Apple Git installed by Xcode CLT install during Homebrew install

# Git - Configure 
git config --global init.defaultBranch main

echo "Enter Your Git Username: "
read user
git config --global user.name $user

echo "Enter Your Git Email: "
read email
git config --global user.email $email

# Git - Create Directory for cloned Git Repos
mkdir ~/Git