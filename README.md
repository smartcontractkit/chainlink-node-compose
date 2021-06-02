# Chainlink Node Compose

This compose script launches 5 chainlink nodes, and a single postgres DB that they all share. It's intended for testing
and local development.

## How To Run

There are 3 environment variables we leave up to you to deal with. You can set them in the
`environmnet/chainlink-variables.env` or set them at runtime. Those 3 are

* ETH_CHAIN_ID
* ETH_URL
* LINK_CONTRACT_ADDRESS

## // TODO

I was thinking about using `scale` to allow smaller / larger clusters, but there's some difficulty in that, plus no
one has asked yet. Might get to it if there is demand.
