# ─── Prompt ───────────────────────────────────────────────────────────────────
function parse_git_branch {
    git branch --no-color 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

function set_prompt {
    local BLUE="\[\e[1;34m\]"
    local GREEN="\[\e[1;32m\]"
    local WHITE="\[\e[00m\]"

    case $TERM in
        xterm*) TITLEBAR='\[\e]0;\W\007\]';;
        *)      TITLEBAR="";;
    esac

    PS1="${TITLEBAR}${GREEN}\u@\h${WHITE}:${BLUE}\W${GREEN}\$(parse_git_branch)${BLUE}\$${WHITE} "
}
set_prompt

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


