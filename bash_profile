########################################################################
# Sections
#   1. General
#   2. pyenv
#   3. Spark
#   4. Docker
########################################################################


# ---- General ----

# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH

# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# Include homebrew completion (assumes if one file exists, they all do)
source $(brew --prefix)/etc/bash_completion
source $(brew --prefix)/etc/bash_completion.d/git-completion.bash
source $(brew --prefix)/etc/bash_completion.d/git-flow-completion.bash


# ---- pyenv ----

# pyenv and virtualenv initialization
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Prevents pip from executing if there is no virtualenv currently activated
# For installing/updating global packages use gpip
export PIP_REQUIRE_VIRTUALENV=true

gpip2(){
    PIP_REQUIRE_VIRTUALENV="" pip2 "$@"
}

gpip3(){
    PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}


# ---- jenv ----

# initialization
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"


# ---- Spark ----

# Set Spark local IP and Home Directory
export SPARK_LOCAL_IP=127.0.0.1
export SPARK_HOME=/usr/local/Cellar/apache-spark/2.4.3/libexec


# ---- Docker ----
dockercleanall() {
    docker stop $(docker ps -a -q)
    docker rm $(docker ps -a -q)
}
export -f dockercleanall


# ---- GCC ----
# Warning: alias only kicks in for the command, resulting
# in default gcc path not changing. 'which gcc' will still
# return the default, system gcc path.
alias gcc='gcc-9'
alias g++='g++-9'

