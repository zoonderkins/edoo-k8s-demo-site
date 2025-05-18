---
date: 2025-05-18T14:00:17+00:00
---

# K8s Production Cluster

<div class="node-info">

Worker node: <strong id="worker-node-name">k0s-color-worker-1</strong><br>
<span style="color: green">Cluster Status: <strong id="index-cluster-status">Healthy</strong>
<br>
Total Pods: <strong id="index-total-pods">72</strong>
 </div>

### Kubernetes Pods

<table class="pod-table" id="summary-table">
<table class="pod-table" id="summary-table">
<table class="pod-table" id="summary-table">
<table class="pod-table" id="summary-table">
<table class="pod-table" id="summary-table">
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
          <td>k0s-color-argo-argocd-application-controller-0</td>
          <td>argocd</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>k0s-color-argo-argocd-applicationset-controller-5c88f54dc8k548v</td>
          <td>argocd</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>k0s-color-argo-argocd-dex-server-b9df6f656-5qpx4</td>
          <td>argocd</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>k0s-color-argo-argocd-notifications-controller-5684bd5688-qs6xb</td>
          <td>argocd</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>k0s-color-argo-argocd-redis-c76b9b88c-qzk6c</td>
          <td>argocd</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>k0s-color-argo-argocd-repo-server-5d6fb98655-4kdqz</td>
          <td>argocd</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>k0s-color-argo-argocd-server-5866f68c86-fp6mf</td>
          <td>argocd</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>cert-manager-6468fc8f56-4nzh9</td>
          <td>cert-manager</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>cert-manager-cainjector-7fd85dcc7-7qvg5</td>
          <td>cert-manager</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>cert-manager-webhook-57df45f686-z7bvv</td>
          <td>cert-manager</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>client-645b68dcf7-4mgpb</td>
          <td>cilium-test-1</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>client2-66475877c6-rgkch</td>
          <td>cilium-test-1</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>echo-same-node-6c545975c6-vb54h</td>
          <td>cilium-test-1</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>host-netns-44fwz</td>
          <td>cilium-test-1</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>client3-795488bf5-wk74c</td>
          <td>cilium-test-1</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>echo-other-node-7f546db4f4-wqwll</td>
          <td>cilium-test-1</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>host-netns-5cfvg</td>
          <td>cilium-test-1</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>cloudflared-574f65998f-xklp4</td>
          <td>cloudflare</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>cilium-envoy-njlz5</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>cilium-operator-86d86869fd-xprv9</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>cilium-s5lg5</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>coredns-7d4f7fbd5c-plh4w</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>konnectivity-agent-mzf7h</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>kube-proxy-6njb4</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>kube-router-2b8pr</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>cilium-envoy-bvswq</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>cilium-vvqpf</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>coredns-7d4f7fbd5c-7gw6j</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>hubble-relay-589fbddbf-rs7kp</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>hubble-ui-76d4965bb6-gcb9r</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>konnectivity-agent-w25vp</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>kube-proxy-5d9cz</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>kube-router-2w8g6</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>metrics-server-7778865875-jjqpj</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>local-path-provisioner-74f9666bc9-xq9v7</td>
          <td>local-path-storage</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>csi-attacher-7bfc99fdf6-7ljkz</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>csi-attacher-7bfc99fdf6-ftdkz</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>csi-provisioner-5bfbf9655-d2bbl</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>csi-provisioner-5bfbf9655-kc2rh</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>csi-resizer-6d8bdc48b6-4hf77</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>csi-snapshotter-68467df45d-7xtzr</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>engine-image-ei-b907910b-758pn</td>
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
          <td>longhorn-csi-plugin-xfcf4</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>longhorn-manager-n5c65</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>longhorn-ui-f7ff9c74-rq54l</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>csi-attacher-7bfc99fdf6-rbxgh</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>csi-provisioner-5bfbf9655-sw5xk</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>csi-resizer-6d8bdc48b6-dvvcj</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>csi-resizer-6d8bdc48b6-kb9nr</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>csi-snapshotter-68467df45d-7prgr</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>csi-snapshotter-68467df45d-bqwb8</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>engine-image-ei-b907910b-vrrp5</td>
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
          <td>longhorn-csi-plugin-9j796</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>longhorn-driver-deployer-5f44b4dc59-zvzk5</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>longhorn-manager-q9g8w</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>longhorn-ui-f7ff9c74-ls66r</td>
          <td>longhorn-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>update-pods-md-29126280-kb74x</td>
          <td>prod</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>hugo-site-6bb85f7746-bkmfj</td>
          <td>prod</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>update-pods-md-29126100-cfx4d</td>
          <td>prod</td>
          <td>Succeeded</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>update-pods-md-29126160-k82jq</td>
          <td>prod</td>
          <td>Succeeded</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>update-pods-md-29126220-fcpb4</td>
          <td>prod</td>
          <td>Succeeded</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>vmagent-vmks-victoria-metrics-k8s-stack-575b6d45c5-fdp2b</td>
          <td>victoria</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>vmalert-vmks-victoria-metrics-k8s-stack-6655449f66-tzs7g</td>
          <td>victoria</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>vmks-kube-state-metrics-5987f4b4d-2hxfs</td>
          <td>victoria</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>vmks-prometheus-node-exporter-nw66n</td>
          <td>victoria</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>vmks-victoria-metrics-operator-8448f486c9-bsw7v</td>
          <td>victoria</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>vmsingle-vmks-victoria-metrics-k8s-stack-85cdb84cb5-x45f6</td>
          <td>victoria</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>vmalertmanager-vmks-victoria-metrics-k8s-stack-0</td>
          <td>victoria</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>vmks-grafana-58f78b886c-cwqkt</td>
          <td>victoria</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>vmks-prometheus-node-exporter-n4567</td>
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
