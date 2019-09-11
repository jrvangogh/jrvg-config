#!/usr/bin/env bash

ln -s "$(pwd)"/bash_profile ~/.bash_profile
ln -s "$(pwd)"/vimrc ~/.vimrc
# ln -s "$(pwd)"/sshconfig ~/.ssh/config (Use Lyft's)
ln -s "$(pwd)"/gitconfig ~/.gitconfig
ln -s "$(pwd)"/gitconfig_work_include ~/LyftSpace/.gitconfig_work_include
ln -s "$(pwd)"/matplotlibrc ~/.matplotlib/matplotlibrc
# ln -s "$(pwd)"/awsconfig ~/.aws/config (Use Lyft's)
ln -s "$(pwd)"/jupyter_notebook_config.py ~/.jupyter/jupyter_notebook_config.py
ln -s "$(pwd)"/ideavimrc ~/.ideavimrc

