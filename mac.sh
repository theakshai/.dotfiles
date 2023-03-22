#!/usr/bin/env zsh 

echo"Setting up Mac environment....."
sleep 2
echo"Installing HomeBrew....."
sleep 2
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Creating symlink for Brewfile 
ln -s ~/.dotfiles/Brewfile ~/Brewfile 
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig 
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
echo"Tapping Brewfile applications...."
sleep 2
brew bundle install

echo "Installing oh-my-zsh........."
sleep 2
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo"Sourcing config files........"
sleep 2
source ~/.bash_profile
source ~/.zshrc

echo"Installing Packer.nvim"
sleep 2
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Creating symlink for  nvim folder
ln -s ~/.dotfiles/nvim ~/.config/nvim 

# Installing rust
echo"Installing Rust......."
sleep 2
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


