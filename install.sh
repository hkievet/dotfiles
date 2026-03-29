#!/bin/bash

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Load .env
if [ ! -f "$DOTFILES_DIR/.env" ]; then
  echo "No .env found. Copy .env-template to .env and fill in your values:"
  echo "  cp .env-template .env"
  exit 1
fi

source "$DOTFILES_DIR/.env"

if [ -z "$GIT_NAME" ] || [ -z "$GIT_EMAIL" ]; then
  echo "GIT_NAME and GIT_EMAIL must be set in .env"
  exit 1
fi

echo "==> Installing dependencies..."
bash "$DOTFILES_DIR/install_dependencies.sh"

echo "==> Symlinking dotfiles..."
bash "$DOTFILES_DIR/copy_files.sh"

echo "==> Configuring git..."
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"
echo "    git user: $GIT_NAME <$GIT_EMAIL>"

echo "==> Fixing key repeat in VS Code..."
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

echo "Done."
