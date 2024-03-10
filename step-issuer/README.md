# step-issuer
Chart for [step-issuer](https://github.com/smallstep/step-issuer) from repo: https://smallstep.github.io/helm-charts/
Config options at: https://artifacthub.io/packages/helm/smallstep/step-issuer

## Setup
First, get the base64 version of the root certificate (`caBundle`):
```sh
kubectl get -o jsonpath="{.data['root_ca\.crt']}" configmaps/step-certificates-certs | base64
```

Next, get provisioner information (contains provisioner `kid`):
```sh
kubectl get -o jsonpath="{.data['ca\.json']}" configmaps/step-certificates-config | jq .authority.provisioners
```

## Usage
The following annotations can be added to ingresses to use the `step-issuer`:
```yaml
cert-manager.io/issuer: step-issuer
cert-manager.io/issuer-kind: StepClusterIssuer
cert-manager.io/issuer-group: certmanager.step.sm
```