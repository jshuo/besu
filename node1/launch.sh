#!/bin/bash

besu --data-path=data \
     --genesis-file=../cliqueGenesis.json \
     --permissions-nodes-config-file-enabled \
     --data-storage-format=FOREST \
     --permissions-accounts-config-file-enabled \
     --rpc-http-enabled \
     --rpc-http-api=ADMIN,ETH,NET,PERM,CLIQUE \
     --host-allowlist="*" \
     --rpc-http-cors-origins="*" \
     --rpc-http-host=0.0.0.0 \
     --logging=DEBUG \
     | grep 'eth_send'
