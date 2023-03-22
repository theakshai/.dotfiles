#!/usr/bin/env zsh

# Install ubuntu using wsl in windows before using it
# For installing ubuntu, open the cmd and execute the below cmd
# cmd: wsl --install


# Installing applications
# Node
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

# Java
sudo apt install default-jdk

# .net
wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
sudo chmod +x ./dotnet-install.sh
./dotnet-install.sh --version latest

# neovim ( nightly build )
sudo snap install --edge nvim --classic


# configuring zsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


