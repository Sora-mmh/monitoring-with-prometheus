#!/bin/bash
kubectl run cpu-stress-test \
    --image=containerstack/cpustress -- \
    --cpu 2 \
    --timeout 30s \
    --metrics-brief