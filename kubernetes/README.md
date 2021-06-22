# Kubernetes

Launches a kubernetes cluster of 5 chainlink nodes and 1 postgres DB.

## Access Nodes

Use `kubectl get pods` to find the IP addresses of the chainlink nodes. You can then connect to them using
`<ip-address>:6688`
