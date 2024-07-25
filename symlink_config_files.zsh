#!/bin/zsh
emulate -LR zsh

ln -s "$(pwd)"/zshrc ~/.zshrc
ln -s "$(pwd)"/vimrc ~/.vimrc
ln -s "$(pwd)"/sshconfig ~/.ssh/config
ln -s "$(pwd)"/global_gitignore ~/.global_gitignore
ln -s "$(pwd)"/gitconfig ~/.gitconfig
mkdir -p ~/.matplotlib
ln -s "$(pwd)"/matplotlibrc ~/.matplotlib/matplotlibrc
mkdir -p ~/.jupyter
ln -s "$(pwd)"/jupyter_notebook_config.py ~/.jupyter/jupyter_notebook_config.py
ln -s "$(pwd)"/ideavimrc ~/.ideavimrc
ln -s "$(pwd)"/vsc_settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s "$(pwd)"/vsc_keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
