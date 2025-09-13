# k3s GitOps Assignment

This repository contains all declarative manifests and configurations for a Kubernetes GitOps setup using FluxCD.

## Repository Structure

- `clusters/kube-practice/0-infra/` – Cluster infrastructure and MetalLB configuration
- `clusters/kube-practice/1-ingress/` – ingress-nginx HelmRelease
- `clusters/kube-practice/2-databases/` – MySQL HelmRelease with SOPS-encrypted secrets
- `clusters/kube-practice/3-wordpress/` – WordPress HelmRelease
- `clusters/kube-practice/4-monitoring/` – Prometheus, Loki, Grafana, and Promtail HelmReleases
- `clusters/kube-practice/age.pubkey` – Public SOPS age key for secret encryption

## Notes

- FluxCD is bootstrapped and will continuously reconcile all manifests automatically.
- MySQL credentials are stored securely using SOPS encryption.
- Grafana dashboard JSON (`grafana/wordpress-dashboard.json`) is included and can be imported to visualize WordPress metrics and logs.
- All applications and configurations are deployed declaratively via FluxCD; no manual `kubectl apply` commands are required.
