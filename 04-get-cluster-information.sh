#!/bin/bash

CLUSTER_REGION="FRA1"
CLUSTER_NAME="first-cluster"

civo --region=${CLUSTER_REGION} kubernetes show ${CLUSTER_NAME}

