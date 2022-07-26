# rancher
Helm chart for Rancher from https://github.com/rancher/rancher/tree/release/v2.6/chart
Rancher uses the following helm chart repo: https://releases.rancher.com/server-charts/latest/index.yaml
Chart documentation can be found here: https://rancher.com/docs/rancher/v2.6/en/installation/install-rancher-on-k8s/chart-options/

## Adding TLS Secrets
Before Rancher can be used, it must first be bootsrapped to work with `step-ca`. [This section](https://rancher.com/docs/rancher/v2.5/en/installation/resources/tls-secrets/) of the docs covers this.

First, get the root CA cert:
```sh
kubectl get -o jsonpath="{.data['root_ca\.crt']}" configmaps/step-certificates-certs
```