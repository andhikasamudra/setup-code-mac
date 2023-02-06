#!/bin/bash

# Update the system
sudo softwareupdate -i -a

# Install Xcode Command Line Tools
xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install common tools and packages
brew install git
brew install node
brew install yarn

# Install Visual Studio Code
brew cask install visual-studio-code

# Install Google Chrome
brew cask install google-chrome

# Install Slack
brew cask install slack

# Install Docker
brew cask install docker

# Install Go
brew install go

# Install PostgreSQL
brew install postgresql

# Start PostgreSQL on login
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

# Load PostgreSQL at startup
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

# Install JetBrains Goland
brew cask install goland

# Set up Git configuration
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# Set up Visual Studio Code as the default editor for Git
git config --global core.editor "code --wait"
