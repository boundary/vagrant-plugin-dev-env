#!/bin/bash

set -x

[ -r /vagrant/agent-config.txt ] && source /vagrant/agent-config.txt
mkdir $HOME/graphdat-relay
pushd $HOME/graphdat-relay
sudo graphdat-relay -e $BOUNDARY_PREMIUM_EMAIL -t $BOUNDARY_PREMIUM_API_TOKEN
popd

