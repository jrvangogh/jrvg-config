# jrvg-config
Stores my config files (.bash_profile, .vimrc, etc.) and documents my typical install 
process for a new MacOS machine.

## Symlinked config files
Instead of copying config files to their proper locations, symlinking them allows me to 
keep them all in one directory and git repository.

symlink_config_files.sh should be run from the git repo's directory

## Install process
In order to help remember typical installations, I've documented things in installs.sh. 
This script shouldn't necessarily be run straight-up, but lists steps that should be taken.


## Other setup notes
Current fix to successfully install Python versions with pyenv:

SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk MACOSX_DEPLOYMENT_TARGET=10.14 pyenv install {python-version}

Adding a virtualenv to Jupyter: (from inside desired virtualenv)

ipython kernel install --user --name=<virtualenv-name>

