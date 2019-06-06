#!/usr/bin/env bash

# Necessary .bash_profile edits in bash_profile

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew upgrade

# Upgrade bash
brew install bash
echo '/usr/local/bin/bash' | sudo tee -a /etc/shells
chsh -s /usr/local/bin/bash

# Non-system Git
brew install git

# Auto-complete
brew install bash-completion
curl https://raw.githubusercontent.com/bobthecow/git-flow-completion/master/git-flow-completion.bash >> /usr/local/etc/bash_completion.d/git-flow-completion.bash

# Python environment management
brew install pyenv
brew install pyenv-virtualenv
brew install readline xz
sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /

# Generate ssh-key
ssh-keygen -t rsa -b 4096

# Disable trackpad acceleration (default 2). Mouse best disabled via steelSeries Exact Mouse Tool.
defaults write .GlobalPreferences com.apple.trackpad.scaling -1

# Java development kit management
brew install jenv
  # add bash_profile lines
jenv enable-plugin export
  # restart shell
brew cask install java
brew tap AdoptOpenJDK/openjdk
brew install adoptopenjdk8
jenv add <things>

# Spark
brew install apache-spark
