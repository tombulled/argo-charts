#!/bin/bash

echo "[+] Creating Cluster"
k3d cluster create --config cluster/cluster.yaml
echo

echo "[+] Creating Namespaces"
kubectl apply -f namespaces
echo

echo "[+] Installing ArgoCD"
helm install argo-cd ../argo-cd -n argo-cd
echo
