# Chainlink Node Compose

This compose script launches 5 chainlink nodes, and a single postgres DB that they all share. It's intended for testing
and local development.

## Configuration

There are 3 environment variables that you may need to change. You can set them in the
`.env` file, those 3 are

* `ETH_CHAIN_ID`
* `ETH_URL`
* `LINK_CONTRACT_ADDRESS` <- Hardhat will not have this preset, you'll need to launch your own LINK contract on a hardhat
  network before launching your nodes. Or, if connecting to testnets, find the proper address
  [here](https://docs.chain.link/docs/link-token-contracts/)

The `.env` file assumes that you are running an instance of our local hardhat instance that simulates ethereum, which
you can find [here](https://github.com/smartcontractkit/hardhat-network). Change them as necessary for other desired chains.

### If you do not set up a connection to a valid blockchain instance before running, the nodes will continuously error and fail

## Running

Once configured as desired, launch your chainlink nodes with

`docker-compose up -d`

### Node Locations

| Node Number | Address               |
| ----------- | --------------------- |
| 1           | http://localhost:6711 |
| 2           | http://localhost:6722 |
| 3           | http://localhost:6733 |
| 4           | http://localhost:6744 |
| 5           | http://localhost:6755 |

### Credentials

**Email**: notreal@fakeemail.ch

**Password**: twochains

## // TODO

I was thinking about using `scale` to allow smaller / larger clusters, but there's some difficulty in that, plus no
one has asked yet. Might get to it if there is demand.
