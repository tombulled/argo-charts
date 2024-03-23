# Argo CD

## About
Helm chart taken from: https://github.com/argoproj/argo-helm

## Notes
To apply changes, run:
```sh
cd argo-cd
helm dependency build
helm upgrade argo-cd . --namespace argo-cd
```
If you need to delete CRDs first, you can use:
```sh
kubectl delete $(kubectl get crd -l app.kubernetes.io/part-of=argocd -o name)
```