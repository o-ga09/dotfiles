export PATH=$PATH:/opt/homebrew/bin/
export PATH="$PATH:/Users/taichi/development/flutter/bin"
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=/Users/taichi/go
export PATH="$GOPATH/bin:$PATH"
export GOOGLE_APPLICATION_CREDENTIALS="/Users/taichi/Downloads/receipt-kakeibo-20210208-ed3653bb4652.json" 
export EDITOR="/usr/bin/vim"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/taichi/google-cloud-sdk/path.bash.inc' ]; then . '/Users/taichi/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/taichi/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/taichi/google-cloud-sdk/completion.bash.inc'; fi
export PATH=$HOME/.nodebrew/current/bin:$PATH
. "$HOME/.cargo/env"
export BASH_SILENCE_DEPRECATION_WARNING=1
source ~/.bashrc
