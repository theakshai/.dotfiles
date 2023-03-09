#!/usr/bin/env zsh 

echo"Setting up Mac environment....."
echo"Installing HomeBrew....."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo"Tapping Brewfile applications...."
brew bundle --file=~/.dotfiles/Brewfile


# Installing rust
echo"Installing Rust......."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

#Configuring tools with stow
for d in *:
  if[ -d "$d"] ;then
    stow "$d" -t $HOME 
  fi
done

echo"Sourcing config files........"
source ~/.zshrc
source ~/.bashrc
