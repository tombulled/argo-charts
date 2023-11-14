#!/bin/bash

echo "Bootstrapping..."

# Recursively apply all files in the bootstrap directory
kubectl apply -R -f _bootstrap

echo "[+] Installing ArgoCD"
helm install argo-cd argo-cd -n argocd
