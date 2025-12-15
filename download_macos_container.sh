#!/bin/bash

export username=$(whoami)
echo "Hello $username, Initiating the macos container installation script"
brew install container
launchctl list | grep -i container
