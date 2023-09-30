# Civo-01: Create a K8S cluster

## Remarks

- With Gitpod and GitLab, to store `CIVO_API_KEY`, use this pattern `*/**` for the scope of the variable.

## First deployment

```bash
# Run a test container image that includes a webserver
export KUBECONFIG=$PWD/config/k3s.yaml

kubectl create deployment hello-node --image=registry.k8s.io/e2e-test-images/agnhost:2.39 -- /agnhost netexec --http-port=8080

kubectl expose deployment hello-node --type=LoadBalancer --port=8080

kubectl get services
```