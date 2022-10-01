# MacOS Setup Guide

## System Preferences
- Touch ID
  - Add both index fingers
- Trackpad
  - Tracking speed: fastest
  - More Gestures -> Swipe between pages: false
- Keyboard
  - Modifier Keys
    - Caps Lock -> Escape
    - Control -> Command
    - Command -> Control
  - Shortcuts
    - Show Spotlight search: ^Space
  - Text
    - Add period with double-space: false
- Displays
  - Automatically adjust brightness: false
- Battery: Battery
  - Turn display off after: 5 min
  - Slightly dim the display while on battery power: false
- Dock & Menu Bar
  - Automatically hide and show the Dock: true
  - Show recent applications in Dock: false
- Mission Control
  - Automatically rearrange Spaces based on most recent use: false

## Apps
- Vivaldi
  - Go to LastPass to get Vivaldi Encryption key
  - Log in to Vivaldi account and enable sync
  - Set as default browser
  - Search
    - Change default search to Google (should be 
    - Remove other search engines except for Wikipedia
    - Search Field Display: Show as Button
  - Clean up Start Page
- iTerm2
  - Keys -> Hotkeys -> Create a Dedicated Hotkey Window
  - Profiles -> Hotkey Window
    - Style: Full-Height Left of Screen
    - Transparency: 15
    - Columns: 120
  - General -> Closing -> Confirm "Quit iTerm2": false
- OneNote
  - Sign in to Apple store to install
  - Log in to Microsoft account
  - Preferences -> Spelling
    - Automatically correct spelling and formatting as you type: false
    - Capitalize the first letter of sentences: false
  - Preferences -> Edit & View
    - Default font - > Size: 14
    - Paste Options: Default paste option: Keep Text Only
- Spotify
  - Log in
- PyCharm CE (Apple Silicon version)
  - Preferences -> Editor -> Code Style -> General
    - Hard wrap at: 120
      - Wrap on typing: false
    - Visual Guides: 120
  - Plugins
    - IdeaVim
    - Requirements
  - File -> New Projects Setup -> Preferences for New Projects -> Python Interpreter: Set to glob
- GoLand (Apple Silicon version)
  - Plugins
    - IdeaVim
- Send to Kindle

### Command Line Settings
- Disable trackpad acceleration (default 2)
  - `defaults write .GlobalPreferences com.apple.trackpad.scaling -1`
- Enable repeat key on hold (disable accent character on hold)
  - `defaults write -g ApplePressAndHoldEnabled -bool false`

## Development
- Make ~/JayArr and ~/src

### Base Software
- Enable Touch ID for sudo
  - `sudo vim /etc/pam.d/sudo`
  - Add `auth sufficient pam_tid.so` under the first line
- Homebrew
  - `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
  - `brew update && brew upgrade`
- Non-system Git
  - `brew install git`
- Pre-Commit
  - `brew install pre-commit`
- Generate SSH key
  - `ssh-keygen -t rsa -b 4096`
- Rectangle
  - `brew install --cask rectangle`

### Python
- `brew install pyenv pyenv-virtualenv`

### GoLang
- `brew install go@1.17 && brew link go@1.17` (Lyft)

### Java
- `brew tap AdoptOpenJDK/openjdk`
- `brew install --cask adoptopenjdk11`
- `brew install maven` (Lyft)

### Spark
- `brew install apache-spark`

### Build Tools
- `brew install gcc`
- `brew install libomp`
- `brew install cmake`

### AWS (Lyft)
- `brew install aws-okta`
- `brew install awscli`

## Config Files
- Add SSH key to GitHub account
- (in ~/JayArr) `git clone git@github.com:jrvangogh/jrvg-config.git`
- (in ~/JayArr/jrvg-config) `bash symlink_config_files.sh`

## Set Up Python
- `pyenv install 3.9.13`
- `pyenv virtualenv 3.9.13 glob`
- `pyenv global glob`
- `pyenv activate glob`
- `pip install notebook`
- `ipython kernel install --user --name=glob`

