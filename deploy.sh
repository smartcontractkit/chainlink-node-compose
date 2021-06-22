help_message="A helper script to facilitate the launching of chainlink nodes for different environments\

Commands:
    ./deploy.sh help  Displays this help menu

    Typical usage is in the form of
    
    ./deploy.sh <deployment-type> <blockchain-selection> <chainlink-version>

    Deployment Types
    * d : local docker-compose script, see the docker-compose folder for more details
    * k : kubernetes deployment, see the kubernetes folder for more details
    
    Blockchain Selections
    * hardhat : assumes a local hardhat instance is running on port 8585
    * kovan   : connects to the kovan testnet
    * goerli  : connects to the goerli testnet
    
    Chainlink Version
    * mix    : A mix of chainlink versions, each node will have one of the latest 5 major versions
    * latest : All chainlink nodes are set to the latest release version
    * 0.xx.x : Choose your version, must be a valid docker-hub tag"

deploy_type = ""
blockchain = ""
chainlink_ver = ""
latest_chainlink_ver = "0.10.7"

case "$1" in
help)
  echo "$help_message"
  ;;
d)
  cd ./docker-compose
  deploy_type = "docker-compose up -d"
  ;;
k)
  cd ./kubernetes
  deploy_type = "kubectl apply -f ."
  ;;
*)
  echo "$help_message"
  exit 1
  ;;
esac

case "$2" in
hardhat)
  deploy_type = "docker-compose up -d"
  ;;
kovan)
  deploy_type = "kubectl apply -f ."
  ;;
goerli)
  
  ;;
*)
  echo "$help_message"
  exit 1
  ;;
esac

case "$3" in
mix)
  chainlink_ver = 
  ;;
latest)
  chainlink_ver = $latest_chainlink_ver
  ;;
*)
  chainlink_ver = $3
  echo "Using custom chainlink version, $3"
  ;;
esac