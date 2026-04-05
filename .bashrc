# ─── Prompt (Starship) ────────────────────────────────────────────────────────
eval "$(starship init bash)"

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
[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path bash)"

# ─── git-wt ───────────────────────────────────────────────────────────────────
eval "$(git wt --init bash)"
git config wt.basedir "../{gitroot}-worktrees"
git config --add wt.copy ".vscode/"
git config --add wt.hook "npm install"
git config --add wt.hook "go generate ./..."


