#!/bin/bash

set -x

type curl > /dev/null 2>&1 

if [ $? -ne 0 ]
then
  echo "curl not installed, exiting" >&2
  exit 1
fi

[ -r /vagrant/agent-config.txt ] && source /vagrant/agent-config.txt

curl -s -d "{"token":\"$BOUNDARY_PREMIUM_AGENT_TOKEN\"}" -H 'Content-Type: application/json' https://$BOUNDARY_PREMIUM_API_HOST/agent/install | sh
