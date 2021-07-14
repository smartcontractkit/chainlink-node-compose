# Docker Compose

Uses a basic `docker-compose` setup to launch 5 chainlink nodes and a single postgres DB. This assumes that you are
already running a local instance of hardhat. You can get one from our handy
[docker container](https://github.com/smartcontractkit/hardhat-network).

## Node Access

| Node Number | Address               |
| ----------- | --------------------- |
| 1           | http://localhost:6711 |
| 2           | http://localhost:6722 |
| 3           | http://localhost:6733 |
| 4           | http://localhost:6744 |
| 5           | http://localhost:6755 |

# Other setups
Also, you can run default setup with different ethereum clients installed
```
docker compose -f geth.yml up
docker compose -f hh.yml up
```