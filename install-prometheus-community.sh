#!/bin/bash

# add the repo to helm list of repos
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

# create a namespace
kubectl create namespace monitoring

# install kube prometheus helm charts
helm install monitoring prometheus-community/kube-prometheus-stack -n monitoring

