#!/bin/bash

set -x

#
# Update all existing packages
#
sudo apt-get update -y

#
# Update Nodejs
#
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update -y
sudo apt-get install -y nodejs

#
# Install the Graphdat Relay
#
sudo npm install graphdat-relay -g
sudo su - vagrant /vagrant/relay-config.sh
