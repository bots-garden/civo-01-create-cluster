#!/bin/bash
export KUBECONFIG=$PWD/config/k3s.yaml

CLUSTER_REGION="FRA1"
CLUSTER_NAME="first-cluster"
civo kubernetes remove ${CLUSTER_NAME} --region=${CLUSTER_REGION} --yes 
