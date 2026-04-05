# ─── Homebrew ─────────────────────────────────────────────────────────────────
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# ─── Go ───────────────────────────────────────────────────────────────────────
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# ─── Node (nodebrew) ──────────────────────────────────────────────────────────
export PATH="$HOME/.nodebrew/current/bin:$PATH"

# ─── Rust ─────────────────────────────────────────────────────────────────────
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"

# ─── Flutter ──────────────────────────────────────────────────────────────────
export PATH="$HOME/development/flutter/bin:$PATH"

# ─── OpenSSL (homebrew) ───────────────────────────────────────────────────────
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"

# ─── Kubernetes ───────────────────────────────────────────────────────────────
export KUBECONFIG="$HOME/k3s.yaml"

# ─── Editor ───────────────────────────────────────────────────────────────────
export EDITOR="nvim"

# ─── pnpm ─────────────────────────────────────────────────────────────────────
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# ─── Android SDK ──────────────────────────────────────────────────────────────
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

# ─── TinyGo ───────────────────────────────────────────────────────────────────
export PATH="$PATH:$HOME/.tinygo/bin"

# ─── Vite+ ────────────────────────────────────────────────────────────────────
[ -f "$HOME/.vite-plus/env" ] && . "$HOME/.vite-plus/env"

# ─── Antigravity ──────────────────────────────────────────────────────────────
export PATH="$HOME/.antigravity/antigravity/bin:$PATH"

# ─── TiCloud CLI ──────────────────────────────────────────────────────────────
export PATH="$PATH:$HOME/.ticloud/bin"

# ─── Local bin ────────────────────────────────────────────────────────────────
export PATH="$HOME/.local/bin:$PATH"

export BASH_SILENCE_DEPRECATION_WARNING=1

source ~/.bashrc
