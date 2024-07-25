# MacOS Setup Guide

## System Preferences
- Touch ID
  - Add both index fingers
- Trackpad
  - Tracking speed: fastest
  - More Gestures -> Swipe between pages: false
- Keyboard
  - Key repeat rate: fastest
  - Delay until repeat: shortest
  - Keyboard Shortcuts...
    - Modifier Keys
      - Caps Lock -> Escape
      - Control -> Command
      - Command -> Control
    - Spotlight
      - Show Spotlight search: ^Space
- Displays
  - Automatically adjust brightness: false
- Battery: Options...
  - Slightly dim the display on battery: false
- Lock Screen
  - Turn display off on battery when inactive: for 5 min
- Desktop & Dock
  - Automatically hide and show the Dock: true
  - Show suggested and recent apps in Dock: false
  - Automatically rearrange Spaces based on most recent use: false
  - Displays have separate Spaces: true

## Development
- Make ~/JayArr and ~/src

### Base Software
- Enable Touch ID for sudo
  - `sudo vim /etc/pam.d/sudo`
  - Add `auth sufficient pam_tid.so` under the first line
- Homebrew
  - `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
  - `brew update && brew upgrade`
- Non-system Git
  - `brew install git`
- Pre-Commit
  - `brew install pre-commit`
- Generate SSH key
  - `ssh-keygen -t rsa -b 4096`
- iterm2
  - `brew install --cask iterm2`
- Rectangle
  - `brew install --cask rectangle`

### Command Line Settings
- Disable trackpad acceleration (default 2)
  - `defaults write .GlobalPreferences com.apple.trackpad.scaling -1`
- Enable repeat key on hold (disable accent character on hold)
  - `defaults write -g ApplePressAndHoldEnabled -bool false`

### Python
- `brew install pyenv pyenv-virtualenv`

### Spark
- `brew install apache-spark`

### Build Tools
- `brew install gcc`
- `brew install llvm`
- `brew install libomp`
- `brew install cmake`

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
  - Install [Solarized](https://themes.vivaldi.net/themes/q2Vv9V9JKL3) theme
- iTerm2
  - Keys -> Hotkeys -> Create a Dedicated Hotkey Window
  - Profiles -> Hotkey Window
    - Style: Full-Height Left of Screen
    - Transparency: 15
    - Columns: 120
  - General -> Closing -> Confirm "Quit iTerm2": false
  - Profiles -> Text -> Font: Menlo (all profiles)
- Visual Studio Code
  - `brew install --cask visual-studio-code`
  - Extensions
    - Vim
    - Python
    - rust-analyzer
- Spotify
  - Log in
- Send to Kindle
