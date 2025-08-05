#!/bin/bash
eksctl create cluster \
  --name pr-cluster \
  --version 1.28 \
  --region eu-north-1 \
  --zones eu-north-1a,eu-north-1b \
  --nodegroup-name pr-nodes \
  --node-type m5.large \
  --nodes 1 \
  --nodes-min 1 \
  --nodes-max 1

# Add another instance
# eksctl scale nodegroup \
#   --cluster pr-cluster \
#   --name pr-nodes \
#   --nodes 2 --nodes-max 2