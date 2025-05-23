---
date: 2025-05-23T13:00:32+00:00
---

# K8s Production Cluster

<div class="node-info">

Worker node: <strong id="worker-node-name">k0s-color-worker-1</strong><br>
<span style="color: green">Cluster Status: <strong id="index-cluster-status">Healthy</strong>
<br>
Total Pods: <strong id="index-total-pods">62</strong>

Repository: <a href="https://github.com/zoonderkins/edoo-k8s-demo-site" target="_blank">https://github.com/zoonderkins/edoo-k8s-demo-site</a>
</div>

<div class="last-update">
Hash: <span class="commit-hash" id="git-commit-hash">25beecf</span>
</div>

### Kubernetes Pods
<table class="pod-table" id="summary-table">
<table class="pod-table" id="summary-table">
<table class="pod-table" id="summary-table">
<table class="pod-table" id="summary-table">
<table class="pod-table" id="summary-table">
<table class="pod-table" id="summary-table">
  <thead>
      <tr>
          <th>Pod Name</th>
          <th>Namespace</th>
          <th>Status</th>
          <th>Node</th>
      </tr>
  </thead>
  <tbody>
      <tr>
          <td>alloy-lw24s</td>
          <td>alloy</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>alloy-6sghp</td>
          <td>alloy</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>k0s-color-argo-argocd-applicationset-controller-5ff797b646hh47p</td>
          <td>argocd</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>k0s-color-argo-argocd-application-controller-0</td>
          <td>argocd</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>k0s-color-argo-argocd-dex-server-648b7c9844-k994n</td>
          <td>argocd</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>k0s-color-argo-argocd-notifications-controller-68bd6b9c47-w7s2x</td>
          <td>argocd</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>k0s-color-argo-argocd-redis-645cb8b784-25krn</td>
          <td>argocd</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>k0s-color-argo-argocd-repo-server-6c7479f898-99qq7</td>
          <td>argocd</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>k0s-color-argo-argocd-server-d75dcf45-dk5zv</td>
          <td>argocd</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>cert-manager-cainjector-7fd85dcc7-kcwxb</td>
          <td>cert-manager</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>cert-manager-webhook-57df45f686-z97tc</td>
          <td>cert-manager</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>cert-manager-6468fc8f56-mhtqg</td>
          <td>cert-manager</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>cloudflared-68fd85bfc8-xvnjs</td>
          <td>cloudflare</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>cilium-2mf7n</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>cilium-envoy-gw5hp</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>coredns-7d4f7fbd5c-jb7tq</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>hubble-relay-7b4c9d4474-5gtzm</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>hubble-ui-76d4965bb6-nsfgq</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>konnectivity-agent-n6bqk</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>cilium-envoy-n299t</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>cilium-jgwgn</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>cilium-operator-5b47585b65-rfgqz</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>coredns-7d4f7fbd5c-6jgc5</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>konnectivity-agent-rx2vm</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>metrics-server-7778865875-kxhj5</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>csi-attacher-7bfc99fdf6-9tlkx</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>csi-provisioner-5bfbf9655-fmjpd</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>csi-provisioner-5bfbf9655-mw9xz</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>csi-resizer-6d8bdc48b6-7vqjm</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>csi-snapshotter-68467df45d-n6njl</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>engine-image-ei-b907910b-hdffg</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>instance-manager-dbe93ac7ea3ffe11771491a4a2ad12de</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>longhorn-csi-plugin-glqfw</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>longhorn-driver-deployer-5f44b4dc59-w2pbb</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>longhorn-manager-52rrz</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>longhorn-ui-f7ff9c74-dvllq</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>csi-attacher-7bfc99fdf6-25w29</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>csi-attacher-7bfc99fdf6-5mm9v</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>csi-provisioner-5bfbf9655-qj6dc</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>csi-resizer-6d8bdc48b6-489kx</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>csi-resizer-6d8bdc48b6-nw9qk</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>csi-snapshotter-68467df45d-pg44m</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>csi-snapshotter-68467df45d-xtfm8</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>engine-image-ei-b907910b-hf7hj</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>instance-manager-297c356f09fdf32b65cce1893ddc5485</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>longhorn-csi-plugin-n9gvd</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>longhorn-manager-t5xln</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>longhorn-ui-f7ff9c74-pg4sr</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>hugo-site-7d9df8cd75-7vxwl</td>
          <td>prod</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>update-pods-md-29133420-wkg4r</td>
          <td>prod</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>update-pods-md-29133120-tnwtn</td>
          <td>prod</td>
          <td>Succeeded</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>update-pods-md-29133180-6tpn7</td>
          <td>prod</td>
          <td>Succeeded</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>update-pods-md-29133240-9tjfs</td>
          <td>prod</td>
          <td>Succeeded</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>update-pods-md-29133300-g9fm7</td>
          <td>prod</td>
          <td>Succeeded</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>update-pods-md-29133360-747vp</td>
          <td>prod</td>
          <td>Succeeded</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>grafana-99b45986c-qr6nb</td>
          <td>victoria</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>otel-opentelemetry-collector-7cdd676b7d-psjhl</td>
          <td>victoria</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>tempo-0</td>
          <td>victoria</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>victoria-logs-vector-tgs72</td>
          <td>victoria</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>victoria-logs-victoria-logs-single-server-0</td>
          <td>victoria</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>vmsingle-victoria-metrics-single-server-0</td>
          <td>victoria</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>victoria-logs-vector-gsxl9</td>
          <td>victoria</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
  </tbody>
</table>
<style>
.pod-table {
  width: 100%;
  border-collapse: collapse;
  margin-bottom: 30px;
}

.pod-table th {
  background-color: #f8f9fa;
  padding: 10px 15px;
  text-align: left;
  font-weight: 600;
  border-bottom: 2px solid #dee2e6;
}

.pod-table td {
  padding: 10px 15px;
  border-bottom: 1px solid #e9ecef;
}

.pod-table tbody tr:hover {
  background-color: #f8f9fa;
}

.status-running {
  color: #28a745;
  font-weight: 600;
}

.status-pending {
  color: #ffc107;
  font-weight: 600;
}

.status-error {
  color: #dc3545;
  font-weight: 600;
}
</style>
