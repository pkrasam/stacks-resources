#!/bin/bash

echo "###############"
echo "# Stacks Node #"
echo "###############"
export STACKS_NODE_URL="curl https://stacks-node-api.krypton.blockstack.org/v2/info"
echo $STACKS_NODE_URL
( $STACKS_NODE_URL ) | jq


echo "###########"
echo "# My Node #"
echo "###########"
export MY_NODE_URL="curl http://localhost:20443/v2/info"
echo $MY_NODE_URL
( $MY_NODE_URL ) | jq