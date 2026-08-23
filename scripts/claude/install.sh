#!/bin/bash

BREW_PACKAGES=(
    claude-code
    ollama
)

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

brew install "${BREW_PACKAGES[@]}" -y

cp $SCRIPT_DIR/CLAUDE.md $HOME/.claude/
cp $SCRIPT_DIR/settings.json $HOME/.claude/settings.json
cp $SCRIPT_DIR/rules/*.md $HOME/.claude/rules/
