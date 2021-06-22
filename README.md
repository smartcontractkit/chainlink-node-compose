# Chainlink Node Compose

This is a script to help launch dev and test environments for chainlink nodes. **Production use would take some heavy
modifications.** Both `docker-compose` and `kubernetes` style deployments have been provided for flexibility. Docker
compose for simpler, local setups, and Kubernetes for more complicated environments. Both launch a single postgres DB
and 5 chainlink nodes that all connect to it.

## Running

Running depends on which deployment you'd like to use, see the folders for more info.

## Accessing Nodes

Accessing the nodes depends on which deployment you choose. Check the respective deployment's folder for more details.

**Email**: notreal@fakeemail.ch

**Password**: twochains

## Issues Running

5 chainlink nodes + a postgres instance takes a decent amount of resources to run. If you're experiencing lots of
unexplained crashes, try giving docker some more resources.
