# Chainlink Node Compose

This is a script to help launch dev and test environments for chainlink nodes. **Production use would take some heavy
modifications.** Both `docker-compose` and `kubernetes` style deployments have been provided for flexibility. Docker
compose for simpler, local setups, and Kubernetes for more complicated environments. Both launch a single postgres DB
and 5 chainlink nodes that all connect to it.

## Running

`./deploy.sh <deployment-type> <blockchain-selection> <chainlink-version>`

### Deployment Types

* `d` : local docker-compose script, see the docker-compose folder for more details
* `k` : kubernetes deployment, see the kubernetes folder for more details

### Blockchain Selections

* `hardhat` : assumes a local hardhat instance is running on port 8585
* `kovan`   : connects to the kovan testnet
* `goerli`  : connects to the goerli testnet

### Chainlink Version

* `mix`    : A mix of chainlink versions, each node will have one of the latest 5 major versions
* `latest` : All chainlink nodes are set to the latest release version
* `0.xx.x` : Choose your version, must be a valid docker-hub tag

## Accessing Nodes

Accessing the nodes depends on which deployment you choose. Check the respective deployment's folder for more details.

**Email**: notreal@fakeemail.ch

**Password**: twochains

## Issues Running

5 chainlink nodes + a postgres instance takes a decent amount of resources to run. If you're experiencing lots of
unexplained crashes, try giving docker some more resources.
