# Kubernetes

Launches a Kubernetes cluster of 5 chainlink nodes and 1 postgres DB, along with a simulated hardhat blockchain.
This assumes you have K8s environment going already.

## Run

1. Have a Kubernetes setup ready, for example: [Minikube](https://minikube.sigs.k8s.io/docs/)
2. `kubectl apply -f .`

### Tear Down

`kubectl delete -f .`

## Access Nodes

Use `kubectl get pods` to find the IP addresses of the chainlink nodes. You can then connect to them using
`<ip-address>:6688`
