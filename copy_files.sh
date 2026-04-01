#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

files_to_symlink=(tmux.conf vimrc zshrc gitignore_global bashrc bash_profile)

for f in ${files_to_symlink[@]}; do
  echo "Processing $f"
  ln -sf "$DOTFILES_DIR/$f" ~/."$f"
done

mkdir -p ~/.config/nvim/lua
ln -sf "$DOTFILES_DIR/init.lua" ~/.config/nvim/init.lua
ln -sf "$DOTFILES_DIR/plugins.lua" ~/.config/nvim/lua/plugins.lua

# Claude Code config
mkdir -p ~/.claude
ln -sf "$DOTFILES_DIR/claude/settings.json" ~/.claude/settings.json
ln -sf "$DOTFILES_DIR/claude/CLAUDE.md" ~/.claude/CLAUDE.md
