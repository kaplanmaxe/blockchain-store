# Blockchain Store

Store data inside the blockchain.

### Blockchains supported

- Bitcoin

### Requirements

- Bitcoin Core

### Commands

##### Send a bitcoin transaction with some OP_RETURN metadata

- `docker run -ti -v /usr/bin/bitcoin-cli/user/bin/bitcoin-cli blockchain-store bash -c "btc-send 149wHUMa41Xm2jnZtqgRx94uGbZD9kPXnS 0.001 'Hello, blockchain!'"`
- testnet: `docker run -ti -v /usr/bin/bitcoin-cli/user/bin/bitcoin-cli blockchain-store bash -c "btc-send 149wHUMa41Xm2jnZtqgRx94uGbZD9kPXnS 0.001 'Hello, blockchain!' 1"`

##### Store some data in the blockchain using OP_RETURN

- `docker run -ti -v /usr/bin/bitcoin-cli/user/bin/bitcoin-cli blockchain-store bash -c "btc-store 'This example stores 47 bytes in the blockchain.'"`
- testnet: `docker run -ti blockchain-store bash -c "btc-store 'This example stores 47 bytes in the blockchain.' 1"`

##### Retrieve some data from OP_RETURNs in the blockchain

- `docker run -ti blockchain-store bash -c "btc-store 356115-052075"`
- testnet: `docker run -ti blockchain-store bash -c "btc-store 356115-052075 1"`

### Authors

- Max Kaplan [@maxekaplan](https://twitter.com/maxekaplan)
- [php-OP_RETURN](https://github.com/coinspark/php-OP_RETURN)
