#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

info()    { echo -e "${GREEN}[install]${NC} $*"; }
warning() { echo -e "${YELLOW}[warning]${NC} $*"; }
error()   { echo -e "${RED}[error]${NC} $*"; exit 1; }

symlink() {
  local src="$1"
  local dst="$2"

  if [ -e "$dst" ] && [ ! -L "$dst" ]; then
    warning "Backing up existing $dst -> ${dst}.bak"
    mv "$dst" "${dst}.bak"
  fi

  if [ -L "$dst" ]; then
    rm "$dst"
  fi

  ln -s "$src" "$dst"
  info "Linked $dst -> $src"
}

# ─── Shell ───────────────────────────────────────────────────────────────────
symlink "$DOTFILES_DIR/.bashrc"       "$HOME/.bashrc"
symlink "$DOTFILES_DIR/.bash_profile" "$HOME/.bash_profile"
symlink "$DOTFILES_DIR/.zshrc"        "$HOME/.zshrc"

# ─── App configs (~/.config/) ────────────────────────────────────────────────
mkdir -p "$HOME/.config"

symlink "$DOTFILES_DIR/.config/nvim"    "$HOME/.config/nvim"
symlink "$DOTFILES_DIR/.config/ghostty" "$HOME/.config/ghostty"
symlink "$DOTFILES_DIR/.config/lazygit" "$HOME/.config/lazygit"

info "All done! 🎉"
