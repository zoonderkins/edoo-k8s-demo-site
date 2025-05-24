---
date: 2025-05-24T18:01:45+00:00
---

# K8s Production Cluster

<div class="container">

<div class="node-info">

Worker node: <strong id="worker-node-name">k0s-color-worker-2</strong><br>
<span style="color: green">Cluster Status: <strong id="index-cluster-status">Healthy</strong>
<br>
Total Pods: <strong id="index-total-pods">66</strong>

Repository: <a href="https://github.com/zoonderkins/edoo-k8s-demo-site" target="_blank">https://github.com/zoonderkins/edoo-k8s-demo-site</a>
</div>

<div class="last-update">
Last update: <span id="last-update-time">2025-05-24 13:01:45 CST</span><br>
Hash: <span class="commit-hash" id="git-commit-hash">5ba7644</span>
</div>

### Kubernetes Pods
<div class="table-container">
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
          <td>longhorn-manager-bfzfx</td>
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
          <td>longhorn-manager-fl5qw</td>
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
          <td>hugo-site-55db57465c-wbcv5</td>
          <td>prod</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>update-pods-md-29135160-scbrk</td>
          <td>prod</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>update-pods-md-manual-1748109689190-hhsq4</td>
          <td>prod</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
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
          <td>update-pods-md-29134980-mrvwv</td>
          <td>prod</td>
          <td>Succeeded</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>update-pods-md-29135040-zltnr</td>
          <td>prod</td>
          <td>Succeeded</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>update-pods-md-29135100-56wwv</td>
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
          <td>node-exporter-prometheus-node-exporter-5wjqc</td>
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
          <td>node-exporter-prometheus-node-exporter-22wzf</td>
          <td>victoria</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>victoria-logs-vector-gsxl9</td>
          <td>victoria</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
  </tbody>
</table>
</div>
</div>

<style>
/* Base styles */
* { box-sizing: border-box; }

body {
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
  line-height: 1.6; margin: 0; padding: 20px; background-color: #f8f9fa;
}

.container {
  max-width: 1200px; margin: 0 auto; background: white; padding: 20px;
  border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1);
}

h1 { color: #2c3e50; margin-bottom: 20px; font-size: 2rem; text-align: center; }
h3 { color: #34495e; margin-top: 30px; margin-bottom: 15px; font-size: 1.5rem; }

.node-info {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white; padding: 20px; border-radius: 12px; margin-bottom: 20px;
  box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

.node-info a { color: #fff; text-decoration: underline; }
.node-info a:hover { color: #e3f2fd; }

.last-update {
  background-color: #e8f5e8; border-left: 4px solid #28a745; padding: 15px;
  margin: 20px 0; border-radius: 4px; font-size: 0.9em; color: #155724;
}

.commit-hash {
  font-family: "Monaco", "Menlo", "Ubuntu Mono", monospace;
  background-color: #f1f3f4; color: #d73a49; padding: 3px 6px;
  border-radius: 4px; font-size: 0.85em; border: 1px solid #e1e4e8;
}

.table-container {
  overflow-x: auto; margin: 20px 0; border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
}

.pod-table {
  width: 100%; border-collapse: collapse; margin: 0; background: white; min-width: 600px;
}

.pod-table th {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white;
  padding: 15px 12px; text-align: left; font-weight: 600; font-size: 0.9rem;
  text-transform: uppercase; letter-spacing: 0.5px; position: sticky; top: 0; z-index: 10;
}

.pod-table td {
  padding: 12px; border-bottom: 1px solid #e9ecef; font-size: 0.85rem; vertical-align: middle;
}

.pod-table tbody tr { transition: background-color 0.2s ease; }
.pod-table tbody tr:hover { background-color: #f8f9fa; transform: scale(1.001); }
.pod-table tbody tr:nth-child(even) { background-color: #fafbfc; }

.status-running {
  color: #28a745; font-weight: 600; padding: 4px 8px; background-color: #d4edda;
  border-radius: 12px; font-size: 0.8rem; display: inline-block;
}

.status-pending {
  color: #856404; font-weight: 600; padding: 4px 8px; background-color: #fff3cd;
  border-radius: 12px; font-size: 0.8rem; display: inline-block;
}

.status-error {
  color: #721c24; font-weight: 600; padding: 4px 8px; background-color: #f8d7da;
  border-radius: 12px; font-size: 0.8rem; display: inline-block;
}

@media (max-width: 768px) {
  body { padding: 10px; }
  .container { padding: 15px; }
  h1 { font-size: 1.5rem; }
  h3 { font-size: 1.2rem; }
  .node-info { padding: 15px; font-size: 0.9rem; }
  .pod-table th, .pod-table td { padding: 8px 6px; font-size: 0.75rem; }
  .pod-table th { font-size: 0.8rem; }
  .pod-table td:first-child { word-break: break-word; max-width: 150px; }
}

@media (max-width: 480px) {
  .pod-table { min-width: 500px; }
  .pod-table th, .pod-table td { padding: 6px 4px; font-size: 0.7rem; }
  .node-info { padding: 12px; font-size: 0.85rem; }
  .last-update { padding: 12px; font-size: 0.8rem; }
}
</style>
