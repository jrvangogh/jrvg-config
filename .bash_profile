# Set architecture flags
export ARCHFLAGS="-arch x86_64"


# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH


# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc


# Include homebrew completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi


# Initialize jenv
export JENV_ROOT=/usr/local/opt/jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi


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


# Set Hadoop home and configuration, add bin to path,
# create start and stop scripts
# export HADOOP_HOME=/usr/local/Cellar/hadoop/2.7.3  -- screwed up Spark's local setting
# export HADOOP_CONF_DIR=$HADOOP_HOME/libexec/etc/hadoop
# 
# export PATH=$PATH:/usr/local/Cellar/hadoop/2*/bin
#
# hstart() {
#     $HADOOP_HOME/sbin/start-dfs.sh
#     $HADOOP_HOME/sbin/start-yarn.sh
# }
#
# hstop() {
#     $HADOOP_HOME/sbin/stop-yarn.sh
#     $HADOOP_HOME/sbin/stop-dfs.sh
# }
#
# hclean() {
#     hdfs dfs -rm -r /user/jacobvangogh/output
#     hdfs dfs -rm -r /user/jacobvangogh/tmp
#     hdfs dfs -mkdir /user/jacobvangogh/output
#     hdfs dfs -mkdir /user/jacobvangogh/tmp
# }
#
# hcleanall() {
#     hclean
#     hdfs dfs -rm -r /user/jacobvangogh/input
#     hdfs dfs -mkdir /user/jacobvangogh/input
# }
#
# export -f hstart
# export -f hstop
# export -f hclean
# export -f hcleanall


# Set Spark local IP and Home Directory
export SPARK_LOCAL_IP=127.0.0.1
export SPARK_HOME=/usr/local/Cellar/apache-spark/2.4.2/libexec


# Set WEKA Home Directory
export WEKA_HOME=~/.wekafiles


# Docker
dockercleanall() {
    docker stop $(docker ps -a -q)
    docker rm $(docker ps -a -q)
}
export -f dockercleanall
