#!/bin/bash

set -x

[ -r /vagrant/relay-config.txt ] && source /vagrant/relay-config.txt
mkdir $HOME/graphdat-relay
pushd $HOME/graphdat-relay
sudo graphdat-relay -e $BOUNDARY_PREMIUM_EMAIL -t $BOUNDARY_PREMIUM_API_TOKEN
popd

