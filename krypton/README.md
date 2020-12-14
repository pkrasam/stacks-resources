# Stacks Krypton Scripts

A set of scripts to help automate some of the DevOps.

## List of Scripts

1. [Fetch Stacks Node Info](#fetchstacksnodeinfo)

## Fetch Stacks Node Info

This script fetches the node info from the official node and my local node.

You can find the script [here](fetch-stacks-node-info.sh)

When you execute the script the expected output is as such:

```bash
###############
# Stacks Node #
###############
curl https://stacks-node-api.krypton.blockstack.org/v2/info
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   653    0   653    0     0   1229      0 --:--:-- --:--:-- --:--:--  1229
{
  "peer_version": 385875968,
  "pox_consensus": "f856c676ab7e6f38a8e5cbb0b62a216dc621771c",
  "burn_block_height": 4105,
  "stable_pox_consensus": "da2191e5ea16d255dfd16037cf9071c349d5e060",
  "stable_burn_block_height": 4104,
  "server_version": "blockstack-core 0.0.1 => 23.0.0.0 (master:c176dda+, release build, linux [x86_64])",
  "network_id": 2147483648,
  "parent_network_id": 3669344250,
  "stacks_tip_height": 3614,
  "stacks_tip": "0356844e43ba5bbbf3e85cd2640ddc8d67522568a621214e453af1f9edbc0127",
  "stacks_tip_consensus_hash": "f856c676ab7e6f38a8e5cbb0b62a216dc621771c",
  "unanchored_tip": "559c4b426f0ad3999004301b6346ec337d05da327d9d4093db7f7eb2c429c19a",
  "exit_at_block_height": null
}
###########
# My Node #
###########
curl http://localhost:20443/v2/info
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   654    0   654    0     0  29727      0 --:--:-- --:--:-- --:--:-- 29727
{
  "peer_version": 385875968,
  "pox_consensus": "f856c676ab7e6f38a8e5cbb0b62a216dc621771c",
  "burn_block_height": 4105,
  "stable_pox_consensus": "da2191e5ea16d255dfd16037cf9071c349d5e060",
  "stable_burn_block_height": 4104,
  "server_version": "blockstack-core 0.0.1 => 23.0.0.0 (master:154f99f7e, release build, linux [x86_64])",
  "network_id": 2147483648,
  "parent_network_id": 3669344250,
  "stacks_tip_height": 3613,
  "stacks_tip": "8269755435ac9c2c67318c6e5c13b0e27a9ce02f02f0545d0c5cfaa96e13e034",
  "stacks_tip_consensus_hash": "da2191e5ea16d255dfd16037cf9071c349d5e060",
  "unanchored_tip": "6ad2fbf451ea0c3fea597c06a47d74c003098c3b38c6b9005102881770e3320e",
  "exit_at_block_height": 5130
}
```
[API Reference](https://blockstack.github.io/stacks-blockchain-api/#operation/get_core_api_info)