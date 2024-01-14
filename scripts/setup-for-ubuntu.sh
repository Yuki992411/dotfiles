#!/bin/bash

if [ "$1" != "run" ]; then
    echo "Usage: $0 run"
    echo "Info: This script is only for Ubuntu."
    echo "Info: This script do 'apt upgrade'"
    echo "Info: script overwrite your .zshrc file."
    exit 0
fi

# Check Ubuntu
if [ ! -e /etc/lsb-release ]; then
    echo "Error: This script is only for Ubuntu." >&2
    exit 1
fi

# Install
sudo apt update && sudo apt upgrade -y && sudo apt install curl zsh -y

# Install sheldon
# see https://sheldon.cli.rs/Installation.html
curl --proto '=https' -fLsS https://rossmacarthur.github.io/install/crate.sh |
    bash -s -- --repo rossmacarthur/sheldon --to /usr/local/bin

# Setup
(echo 'eval "$(sheldon source)"') >~/.zshrc

./make-ln-s.sh

chsh -s $(which zsh)

echo "Setup Done"
