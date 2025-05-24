# Kubernetes Dashboard with Hugo

A minimalist Kubernetes dashboard that displays your cluster's pod information on a single page, built with Hugo and automatically updated via Kubernetes CronJobs.

## System Flow

```
┌─────────────────┐     ┌─────────────────┐     ┌─────────────────┐
│                 │     │                 │     │                 │
│  Kubernetes     │     │   Git Repo      │     │  GitHub Actions │
│  CronJob        │────>│   (content      │────>│  (Build & Push  │
│  (Update Pods)  │     │    update)      │     │   Docker Image) │
│                 │     │                 │     │                 │
└─────────────────┘     └─────────────────┘     └─────────────────┘
        │                                                 │
        │                                                 │
        │                                                 ▼
        │                                       ┌─────────────────┐
        │                                       │                 │
        │                                       │  Container      │
        │                                       │  Registry       │
        │                                       │                 │
        │                                       └─────────────────┘
        │                                                 │
        │                                                 │
        ▼                                                 ▼
┌─────────────────┐                             ┌─────────────────┐
│                 │                             │                 │
│  kubectl        │                             │  ArgoCD         │
│  (Pod Data)     │                             │  (Deployment)   │
│                 │                             │                 │
└─────────────────┘                             └─────────────────┘
                                                         │
                                                         │
                                                         ▼
                                               ┌─────────────────┐
                                               │                 │
                                               │  Hugo Site      │
                                               │  (Dashboard)    │
                                               │                 │
                                               └─────────────────┘
```

## Architecture

The system works as follows:

1. A Kubernetes CronJob runs periodically to gather pod information
2. The CronJob updates the Hugo content directly in the _index.md file
3. GitHub Actions workflow builds the Hugo site and packages it as a Docker image
4. ArgoCD deploys the updated image to the Kubernetes cluster

## Features

- **Simple dashboard**: Shows current cluster status and all pods on a single page
- **Automatic updates**: CronJob refreshes pod information hourly

## Setup Instructions

### 1. GitHub Repository

1. Fork or clone this repository
2. Replace `YOUR_USERNAME` in the following files:
   - `manifest/argo-hugo-app.yaml` 
   - `manifest/cronjob-update-pods.yaml`

### 2. Create GitHub Personal Access Token

1. Go to GitHub Settings > Developer Settings > Personal Access Tokens
2. Create a new token with `repo` scope
3. Create a Kubernetes secret with this token (for use by the CronJob):

```shell
kubectl create namespace prod
kubectl create secret generic github-token-secret -n prod --from-literal=GITHUB_TOKEN=your_github_token
```

### 3. Apply RBAC for the CronJob

```shell
kubectl apply -f manifest/cronjob-rbac.yaml
```

### 4. Deploy the CronJob

```shell
kubectl apply -f manifest/cronjob-update-pods.yaml
```

### 5. Set up ArgoCD Application

1. Install ArgoCD in your cluster if not already present
2. Update the repository URL in `manifest/argo-hugo-app.yaml` to point to your fork
3. Apply the ArgoCD application:

```shell
kubectl apply -f manifest/argo-hugo-app.yaml
```

## Architecture Details

### CronJob Update Process

The CronJob performs these steps:
1. Clones the GitHub repository
2. Fetches cluster pod information using kubectl
3. Updates the _index.md file with current pod data
4. Generates a simple JSON API endpoint for status information
5. Commits and pushes changes back to GitHub
6. GitHub Actions builds and publishes the Docker image
7. ArgoCD detects the new image and updates the deployment

### Development

To run the site locally for development:

```shell
hugo server -D
```

## Customization

To change the dashboard:

- Edit `content/_index.md` for the main page content
- Modify styles directly in the _index.md file
- Adjust the CronJob schedule in `manifest/cronjob-update-pods.yaml`

## License

MIT License
