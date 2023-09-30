# Create a directory to store the configuration file to connect to the cluster
mkdir -p config
export KUBECONFIG=$PWD/config/k3s.yaml

CLUSTER_NAME="first-cluster"
CLUSTER_NODES=1
CLUSTER_SIZE="g4s.kube.xsmall"
CLUSTER_REGION="FRA1"

# Create the cluster
civo kubernetes create ${CLUSTER_NAME} \
--size=${CLUSTER_SIZE} \
--nodes=${CLUSTER_NODES} \
--region=${CLUSTER_REGION} \
--wait
