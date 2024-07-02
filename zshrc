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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
