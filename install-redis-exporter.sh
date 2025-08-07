#!/bin/bash

# add the repo to helm list of repos
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

# install redis exporter helm charts
helm install redis-exporter prometheus-community/prometheus-redis-exporter -f redis-values.yaml
