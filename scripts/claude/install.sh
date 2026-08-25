#!/bin/bash

BREW_PACKAGES=(
    claude-code
    ollama
    herdr
)

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

brew install "${BREW_PACKAGES[@]}" -y

cp $SCRIPT_DIR/settings.json $HOME/.claude/settings.json
cp $SCRIPT_DIR/rules/*.md $HOME/.claude/rules/
cp -r $SCRIPT_DIR/skills $HOME/.claude/skills

npx skills@latest add mattpocock/skills --global -a claude-code
