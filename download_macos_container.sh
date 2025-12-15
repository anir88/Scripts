#!/bin/bash

export username=$(whoami)
echo "Hello $username, Initiating the macos container installation script"
brew install container
echo "The container process status is as follows:"
launchctl list | grep -i container
export containervar=$(which container)
if [ -n '$containervar' ];then
	echo "Macos container is installed at $containervar"
else
	echo "Container installation failed"
fi
