### Expose a port after cluster creation
```console
k3d cluster edit cluster --port-add 32672:32672@loadbalancer
```
See https://k3d.io/v5.7.3/usage/commands/k3d_cluster_edit/ for docs
