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

export BASH_SILENCE_DEPRECATION_WARNING=1

source ~/.bashrc
