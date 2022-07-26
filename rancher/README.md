# rancher
Helm chart for Rancher from https://github.com/rancher/rancher/tree/release/v2.6/chart
Rancher uses the following helm chart repo: https://releases.rancher.com/server-charts/latest/index.yaml
Chart documentation can be found here: https://rancher.com/docs/rancher/v2.6/en/installation/install-rancher-on-k8s/chart-options/

## Password Reset
If for any reason the password needs to be reset, this can be done as follows:
```sh
kubectl -n cattle-system exec (kubectl -n cattle-system get pods -l app=rancher | grep '1/1' | head -1 | awk '{ print $1 }') -- reset-password
```