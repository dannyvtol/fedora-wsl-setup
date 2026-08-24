#!/bin/bash

# Declare packages to install
BREW_PACKAGES=(
    python3
    uv
    node
    bun
    php
    composer
    just
    gh
)

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

sudo passwd $USER

# Update Distro packages and prepare for development environment
sudo dnf update -y && sudo dnf upgrade -y
sudo dnf group install development-tools -y
sudo dnf install -y gawk

ssh-keygen

echo "Provide your Git user.name"
read GIT_USERNAME

echo "Provide your Git user.email"
read GIT_EMAIL

git config --global init.defaultBranch main
git config --global user.name $GIT_USERNAME
git config --global user.email $GIT_EMAIL

echo "Cloning repository"
git clone https://github.com/dannyvtol/fedora-wsl-setup.git

# Install Brew
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /home/wsl/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"' >> /home/wsl/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"

brew install "${BREW_PACKAGES[@]}" -y

chmod +x "$SCRIPT_DIR/fedora-wsl-setup/scripts/claude/install.sh"
bash -c "$SCRIPT_DIR/fedora-wsl-setup/scripts/claude/install.sh"

rm -rf "$SCRIPT_DIR/fedora-wsl-setup"
