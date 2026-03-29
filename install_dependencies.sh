#!/bin/bash

# Install Xcode CLI tools (no-op if already installed)
if ! xcode-select -p &>/dev/null; then
  echo "==> Installing Xcode CLI tools..."
  xcode-select --install
  # Wait for installation to complete before continuing
  until xcode-select -p &>/dev/null; do
    sleep 5
  done
else
  echo "==> Xcode CLI tools already installed, skipping."
fi

# Install Homebrew (no-op if already installed)
if ! command -v brew &>/dev/null; then
  echo "==> Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  echo "==> Homebrew already installed, skipping."
fi

# Install packages from list
if [ -f "$(dirname "$0")/homebrewpackages.txt" ]; then
  echo "==> Installing Homebrew packages..."
  xargs brew install < "$(dirname "$0")/homebrewpackages.txt"
fi

# Bootstrap Packer (Neovim plugin manager)
PACKER_DIR="$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"
if [ ! -d "$PACKER_DIR" ]; then
  echo "==> Installing Packer (Neovim plugin manager)..."
  git clone --depth 1 https://github.com/wbthomason/packer.nvim "$PACKER_DIR"
else
  echo "==> Packer already installed, skipping."
fi
