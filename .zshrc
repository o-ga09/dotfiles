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
# KUBECONFIG defaults to ~/.kube/config

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

# ─── Aliases ──────────────────────────────────────────────────────────────────
alias ls='ls -FG'
alias ll='ls -alFh'

alias k='kubectl'

alias gpl='git pull'
alias gp='git push'
alias gs='git status'
alias gc='git checkout'
alias gcm='git commit -m'
alias gadd='git add'
alias glog='git log --oneline'
alias gitmerge='git merge'
alias docker-rm='docker system prune && rm -rf ~/Library/Containers/com.docker.docker/Data/vms'

# ─── Kiro shell integration ───────────────────────────────────────────────────
[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

# ─── git-wt ───────────────────────────────────────────────────────────────────
eval "$(git wt --init zsh)"
git config wt.basedir "../{gitroot}-worktrees"
git config --add wt.copy ".vscode/"
git config --add wt.hook "npm install"
git config --add wt.hook "go generate ./..."

# ─── Prompt (Starship) ────────────────────────────────────────────────────────
eval "$(starship init zsh)"
