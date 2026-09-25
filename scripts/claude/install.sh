#!/bin/bash

BREW_PACKAGES=(
    claude-code
    ollama
    herdr
    git-gtr
    fzf
)

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

brew tap coderabbitai/tap
brew trust coderabbitai/tap
brew install "${BREW_PACKAGES[@]}" -y

cp $SCRIPT_DIR/settings.json $HOME/.claude/settings.json

npx skills@latest add mattpocock/skills --global -a claude-code
echo "eval \"\$(fzf --bash)\"" >> ~/.bashrc

git gtr init bash

echo "RUN: source ~/.bashrc"
