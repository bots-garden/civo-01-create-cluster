#!/bin/bash

# Get the kubernetes config file
CLUSTER_REGION="FRA1"
CLUSTER_NAME="first-cluster"

civo --region=${CLUSTER_REGION} \
kubernetes config ${CLUSTER_NAME} > ./config/k3s.yaml
