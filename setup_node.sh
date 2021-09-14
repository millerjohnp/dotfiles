#!/bin/bash
# Configure Ubuntu 18.04 LTS EC2 instance for headless setup.

# Install nvm: node-version-manager
sudo apt-get install -y git
sudo apt-get install -y curl
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# Load nvm and install latest production node
source $HOME/.nvm/nvm.sh
nvm install v14.17.6
nvm use v14.17.6

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap


# Install latest Heroku toolkit
curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
