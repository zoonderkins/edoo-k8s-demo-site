# GitHub Container Registry Authentication

This document explains how to set up authentication for pulling images from GitHub Container Registry (GHCR) if you have private images.

## Creating a Pull Secret

If your GitHub Container Registry images are private, you need to create a Kubernetes secret with your GitHub credentials:

```shell
kubectl create secret docker-registry regcred \
  --namespace=prod \
  --docker-server=ghcr.io \
  --docker-username=zoonderkins \
  --docker-password=YOUR_GITHUB_TOKEN \
  --docker-email=git-ed@runbox.no
```

Replace `YOUR_GITHUB_TOKEN` with a GitHub Personal Access Token that has the `read:packages` scope.

## Updating Helm Values

Once the secret is created, update the Helm values to use it:

```yaml
image:
  repository: ghcr.io/zoonderkins/hugo-k8s-dashboard
  tag: latest
  pullPolicy: IfNotPresent
  pullSecrets:
    - name: regcred
```

You can do this by editing the values.yaml file directly or by providing a custom values file to ArgoCD.

## Notes

- By default, GitHub Container Registry packages are private
- To make a package public, go to the package settings on GitHub
- If your images are public, you don't need to create pull secrets 