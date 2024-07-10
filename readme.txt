virtualbox 

node1 
besu --data-path=data --genesis-file=../cliqueGenesis.json --permissions-nodes-config-file-enabled --data-storage-format=FOREST --permissions-accounts-config-file-enabled --rpc-http-enabled --rpc-http-api=ADMIN,ETH,NET,PERM,CLIQUE --host-allowlist="*" --rpc-http-cors-origins="*" --rpc-http-host=0.0.0.0

enode://e4958c8f328f46f2665cbc43c01e2c455f7bac645d87a54f63748ee7a736c58ebd5def5542baf84033f71424b1d722edd59943cb08cc6a0b656f6b460a14aaa2@127.0.0.1:30303


curl -X POST --data '{"jsonrpc":"2.0","method":"perm_addNodesToAllowlist","params":[["enode://e4958c8f328f46f2665cbc43c01e2c455f7bac645d87a54f63748ee7a736c58ebd5def5542baf84033f71424b1d722edd59943cb08cc6a0b656f6b460a14aaa2@127.0.0.1:30303","enode://976272f642832a8b2f007cacd3dcb048aeb7c3908371ddaa62170708e7d1a1ed4b362b155d5a139ca02d1442db5d46c968e53192ac81f51521cf7618329fe407@127.0.0.1:30304","enode://46a941acc2099e13c2823088e7d68b8608640dcb98e68c4c9270cc3a8873ed1c465c20bee4c3572943dd3c2112d23afc01a8977cf8ecb938918779fef3dc962f@127.0.0.1:30305","enode://bd7a63ed75265c8ad9536ba554da6c706f0c7d7470fe25d402c4e3cf126f30f7a94c8172d0ee5f527f493d8ee814b20b4e7f2effa45d18022dc867c488853349@59.120.189.105:30303"]], "id":1}' http://127.0.0.1:8545



node2
besu --data-path=data --genesis-file=../cliqueGenesis.json --permissions-nodes-config-file-enabled --data-storage-format=FOREST --permissions-accounts-config-file-enabled --rpc-http-enabled --rpc-http-api=ADMIN,ETH,NET,PERM,CLIQUE --host-allowlist="*" --rpc-http-cors-origins="*" --p2p-port=30304 --rpc-http-port=8556 --rpc-http-host=0.0.0.0

enode://976272f642832a8b2f007cacd3dcb048aeb7c3908371ddaa62170708e7d1a1ed4b362b155d5a139ca02d1442db5d46c968e53192ac81f51521cf7618329fe407@127.0.0.1:30304


curl -X POST --data '{"jsonrpc":"2.0","method":"perm_addNodesToAllowlist","params":[["enode://e4958c8f328f46f2665cbc43c01e2c455f7bac645d87a54f63748ee7a736c58ebd5def5542baf84033f71424b1d722edd59943cb08cc6a0b656f6b460a14aaa2@127.0.0.1:30303","enode://976272f642832a8b2f007cacd3dcb048aeb7c3908371ddaa62170708e7d1a1ed4b362b155d5a139ca02d1442db5d46c968e53192ac81f51521cf7618329fe407@127.0.0.1:30304","enode://46a941acc2099e13c2823088e7d68b8608640dcb98e68c4c9270cc3a8873ed1c465c20bee4c3572943dd3c2112d23afc01a8977cf8ecb938918779fef3dc962f@127.0.0.1:30305","enode://bd7a63ed75265c8ad9536ba554da6c706f0c7d7470fe25d402c4e3cf126f30f7a94c8172d0ee5f527f493d8ee814b20b4e7f2effa45d18022dc867c488853349@59.120.189.105:30303"]], "id":1}' http://127.0.0.1:8556

curl -X POST --data '{"jsonrpc":"2.0","method":"admin_addPeer","params":["enode://e4958c8f328f46f2665cbc43c01e2c455f7bac645d87a54f63748ee7a736c58ebd5def5542baf84033f71424b1d722edd59943cb08cc6a0b656f6b460a14aaa2@127.0.0.1:30303"],"id":1}' http://127.0.0.1:8556


node3
besu --data-path=data --genesis-file=../cliqueGenesis.json --permissions-nodes-config-file-enabled --data-storage-format=FOREST --permissions-accounts-config-file-enabled --rpc-http-enabled --rpc-http-api=ADMIN,ETH,NET,PERM,CLIQUE --host-allowlist="*" --rpc-http-cors-origins="*" --p2p-port=30305 --rpc-http-port=8575 --rpc-http-host=0.0.0.0

enode://46a941acc2099e13c2823088e7d68b8608640dcb98e68c4c9270cc3a8873ed1c465c20bee4c3572943dd3c2112d23afc01a8977cf8ecb938918779fef3dc962f@127.0.0.1:30305

curl -X POST --data '{"jsonrpc":"2.0","method":"perm_addNodesToAllowlist","params":[["enode://e4958c8f328f46f2665cbc43c01e2c455f7bac645d87a54f63748ee7a736c58ebd5def5542baf84033f71424b1d722edd59943cb08cc6a0b656f6b460a14aaa2@127.0.0.1:30303","enode://976272f642832a8b2f007cacd3dcb048aeb7c3908371ddaa62170708e7d1a1ed4b362b155d5a139ca02d1442db5d46c968e53192ac81f51521cf7618329fe407@127.0.0.1:30304","enode://46a941acc2099e13c2823088e7d68b8608640dcb98e68c4c9270cc3a8873ed1c465c20bee4c3572943dd3c2112d23afc01a8977cf8ecb938918779fef3dc962f@127.0.0.1:30305","enode://bd7a63ed75265c8ad9536ba554da6c706f0c7d7470fe25d402c4e3cf126f30f7a94c8172d0ee5f527f493d8ee814b20b4e7f2effa45d18022dc867c488853349@59.120.189.105:30303"]], "id":1}' http://127.0.0.1:8575

Windows: 

Node4 

besu --data-path=data --genesis-file=../cliqueGenesis.json --permissions-nodes-config-file-enabled --data-storage-format=FOREST --permissions-accounts-config-file-enabled --rpc-http-enabled --rpc-http-api=ADMIN,ETH,NET,PERM,CLIQUE --host-allowlist="*" --rpc-http-cors-origins="*" --rpc-http-host=0.0.0.0

curl -X POST --data '{"jsonrpc":"2.0","method":"admin_addPeer","params":["enode://bd7a63ed75265c8ad9536ba554da6c706f0c7d7470fe25d402c4e3cf126f30f7a94c8172d0ee5f527f493d8ee814b20b4e7f2effa45d18022dc867c488853349@59.120.189.105:30303"],"id":1}' http://127.0.0.1:8545



nodes-allowlist=["enode://e4958c8f328f46f2665cbc43c01e2c455f7bac645d87a54f63748ee7a736c58ebd5def5542baf84033f71424b1d722edd59943cb08cc6a0b656f6b460a14aaa2@180.176.208.96:30303","enode://976272f642832a8b2f007cacd3dcb048aeb7c3908371ddaa62170708e7d1a1ed4b362b155d5a139ca02d1442db5d46c968e53192ac81f51521cf7618329fe407@180.176.208.96:30304","enode://46a941acc2099e13c2823088e7d68b8608640dcb98e68c4c9270cc3a8873ed1c465c20bee4c3572943dd3c2112d23afc01a8977cf8ecb938918779fef3dc962f@180.176.208.96:30305","enode://7e4ef30e9ec683f26ad76ffca5b5148fa7a6575f4cfad4eb0f52f9c3d8335f4a9b6f9e66fcc73ef95ed7a2a52784d4f372e7750ac8ae0b544309a5b391a23dd7@180.176.208.96:30303","enode://2feb33b3c6c4a8f77d84a5ce44954e83e5f163e7a65f7f7a7fec499ceb0ddd76a46ef635408c513d64c076470eac86b7f2c8ae4fcd112cb28ce82c0d64ec2c94@180.176.208.96:30304","enode://bd7a63ed75265c8ad9536ba554da6c706f0c7d7470fe25d402c4e3cf126f30f7a94c8172d0ee5f527f493d8ee814b20b4e7f2effa45d18022dc867c488853349@127.0.0.1:30303"]
accounts-allowlist=["0xfe3b557e8fb62b89f4916b721be55ceb828dbd73","0x627306090abab3a6e1400e9345bc60c78a8bef57"]


Debugging 


besu --data-path=data --genesis-file=../cliqueGenesis.json --permissions-nodes-config-file-enabled --permissions-accounts-config-file-enabled --rpc-http-enabled --rpc-http-api=ADMIN,ETH,NET,PERM,CLIQUE --host-allowlist="*" --rpc-http-cors-origins="*" --rpc-http-host=0.0.0.0 --logging=TRACE | grep eth_send

curl -X POST --data '{"jsonrpc":"2.0", "method":"admin_changeLogLevel", "params":["ALL", ["org.hyperledger.besu.ethereum.mainnet"]], "id":1}' http://127.0.0.1:8545

