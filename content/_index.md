---
date: 2025-05-18T15:00:44+00:00
---

# K8s Production Cluster

<div class="node-info">

Worker node: <strong id="worker-node-name">k0s-color-worker-1</strong><br>
<span style="color: green">Cluster Status: <strong id="index-cluster-status">Healthy</strong>
<br>
Total Pods: <strong id="index-total-pods">75</strong>
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
          <td>cloudflared-574f65998f-vwc9b</td>
          <td>cloudflare</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>cilium-b2lzk</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>cilium-envoy-bdmzx</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>cilium-operator-5876b8b787-2dxnq</td>
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
          <td>hubble-relay-7b4c9d4474-fffn5</td>
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
          <td>kube-proxy-2bgwc</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>kube-router-zwdj7</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>cilium-4858x</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>cilium-envoy-4sr6n</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>coredns-7d4f7fbd5c-ksf9n</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>hubble-ui-76d4965bb6-q7x75</td>
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
          <td>kube-proxy-2gd69</td>
          <td>kube-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>kube-router-g7gjj</td>
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
          <td>metallb-controller-8474b54bc4-cgztm</td>
          <td>metallb-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>metallb-speaker-9jqjx</td>
          <td>metallb-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>metallb-speaker-xdt6r</td>
          <td>metallb-system</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-2</td>
      </tr>
      <tr>
          <td>hugo-site-8f4d4dd64-srhr5</td>
          <td>prod</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>update-pods-md-29126340-58k2q</td>
          <td>prod</td>
          <td class="status-running">Running</td>
          <td>k0s-color-worker-1</td>
      </tr>
      <tr>
          <td>update-pods-md-29126280-kb74x</td>
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
          <td>vmsingle-vmks-victoria-metrics-k8s-stack-85cdb84cb5-4hf5z</td>
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
