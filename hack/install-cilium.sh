#!/usr/bin/env bash

helm install cilium cilium/cilium \
  --version 1.11.2 \
  --namespace kube-system \
  --set ipam.mode=kubernetes
