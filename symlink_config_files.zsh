#!/bin/zsh
emulate -LR zsh

ln -s "$(pwd)"/zshrc ~/.zshrc
ln -s "$(pwd)"/zprofile ~/.zprofile
ln -s "$(pwd)"/vimrc ~/.vimrc
# ln -s "$(pwd)"/sshconfig ~/.ssh/config (use Adept's)
ln -s "$(pwd)"/global_gitignore ~/.global_gitignore
ln -s "$(pwd)"/gitconfig ~/.gitconfig
ln -s "$(pwd)"/gitconfig_work_include ~/src/.gitconfig_work_include
mkdir -p ~/.matplotlib
ln -s "$(pwd)"/matplotlibrc ~/.matplotlib/matplotlibrc
# ln -s "$(pwd)"/awsconfig ~/.aws/config (not needed)
mkdir -p ~/.jupyter
ln -s "$(pwd)"/jupyter_notebook_config.py ~/.jupyter/jupyter_notebook_config.py
ln -s "$(pwd)"/ideavimrc ~/.ideavimrc
ln -s "$(pwd)"/vsc_settings.json ~/Library/Application\ Support/Code/User/settings.json
