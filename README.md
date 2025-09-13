# k3s-GitOps-assignement
# k3s GitOps Assignment

This repository contains all declarative manifests and configurations for the GitOps assignment.

## Repository Structure

- `clusters/kube-practice/0-infra/` – MetalLB & cluster resources
- `clusters/kube-practice/1-ingress/` – ingress-nginx HelmRelease
- `clusters/kube-practice/2-databases/` – MySQL HelmRelease and SOPS-encrypted secret
- `clusters/kube-practice/3-wordpress/` – WordPress HelmRelease
- `clusters/kube-practice/4-monitoring/` – Prometheus, Loki, Grafana, Promtail HelmReleases
- `clusters/kube-practice/age.pubkey` – SOPS age key

## Notes

- FluxCD is bootstrapped and will reconcile all manifests automatically.
- SOPS secrets are included for encrypted MySQL credentials.
- Grafana dashboard JSON (`grafana/wordpress-dashboard.json`) is included and can be imported to visualize logs.
- All applications are designed to be deployed via FluxCD; no imperative `kubectl apply` required.
