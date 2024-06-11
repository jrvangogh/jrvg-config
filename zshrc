# ---- General ----
# Ensure user-installed binaries take precedence
export PATH=/opt/homebrew/opt/llvm/bin:$PATH
export PATH=/usr/local/bin:$PATH

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Auto-completion
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
autoload -Uz compinit
compinit

# Visual Studio Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Color outputs by default
autoload -U colors && colors
export CLICOLOR=1

# Directories
hash -d mega=/Users/jacobvangogh/src/MEGATRON-LM
hash -d conf=/Users/jacobvangogh/JayArr/jrvg-config

# Basic Aliases
alias c="clear"
alias ll="ls -oAp"
alias lt="ll -rt"
alias tf="tail -f"
alias h="history"
alias hg="history | grep"


f() {
    NC=$fg[green]
    VC=$fg[magenta]
    GB=$(git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\1/p')
    PV=$(pyenv version-name)
    echo "    ${NC}Git Branch: ${VC}$GB"
    echo "    ${NC}Python Env: ${VC}$PV"
}


# ---- remote ----
plsync() {
    UN="${3:-jacob}"
    rsync -azP "$UN@phx:/mnt/weka/$UN/$1" "/Users/jacobvangogh/$2"
}

lpsync() {
    UN="${3:-jacob}"
    rsync -azP "/Users/jacobvangogh/$1" "$UN@phx:/mnt/weka/$UN/$2"
}


# ---- Python ----
# pyenv and virtualenv initialization
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Python Aliases
alias ppython="PYTHONPATH=${PYTHONPATH}:$PWD python"
alias mmypy="mypy --namespace-packages --follow-imports=skip --show-error-codes --strict"

# Prevents pip from executing if there is no virtualenv currently activated
# For installing/updating global packages use gpip
export PIP_REQUIRE_VIRTUALENV=true
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT='1'

# startup
export PYTHONSTARTUP="/Users/jacobvangogh/JayArr/jrvg-utils/startup.py"


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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
