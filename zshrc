# ---- General ----
# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Auto-completion
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
autoload -Uz compinit
compinit

# Visual Studio Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"


# ---- pyenv ----
# pyenv and virtualenv initialization
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
# Prevents pip from executing if there is no virtualenv currently activated
# For installing/updating global packages use gpip
export PIP_REQUIRE_VIRTUALENV=true
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

gpip2(){
    PIP_REQUIRE_VIRTUALENV="" pip2 "$@"
}

gpip3(){
    PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}


# ---- Docker ----
dockercleanall() {
    docker stop $(docker ps -a -q)
    docker rm $(docker ps -a -q)
}


# ---- GCC ----
# Warning: alias only kicks in for the command, resulting
# in default gcc path not changing. 'which gcc' will still
# return the default, system gcc path.
alias gcc='gcc-9'
alias g++='g++-9'

