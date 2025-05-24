---
date: 2025-05-24T18:01:45+00:00
---

# K8s Production Cluster

<div class="container">

<div class="node-info">

Worker node: <strong id="worker-node-name">k0s-color-worker-2</strong><br>
<span style="color: white">Cluster Status: <strong id="index-cluster-status">Healthy</strong>
<br>
Total Pods: <strong id="index-total-pods">66</strong>

Repository: <a href="https://github.com/zoonderkins/edoo-k8s-demo-site" target="_blank">https://github.com/zoonderkins/edoo-k8s-demo-site</a>
</div>

<div class="last-update">
Last update: <span id="last-update-time">2025-05-24 13:01:45 CST</span><br>
Hash: <span class="commit-hash" id="git-commit-hash">5f6b7da</span>
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
:root {
  --neon-green: #0f0;
  --neon-pink: #ff69b4;
  --cyber-purple: #9370db;
  --matrix-black: #000;
  --cyber-blue: #00ffff;
}

* { box-sizing: border-box; }

body {
  margin: 0;
  background: var(--matrix-black);
  color: var(--neon-green);
  font-family: "Courier New", monospace;
  cursor: crosshair;
  line-height: 1.6;
  padding: 20px;
  position: relative;
  overflow-x: auto;
}

/* Scanline effect */
body::before {
  content: '';
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: linear-gradient(to bottom,
    rgba(255,255,255,0) 0%,
    rgba(0,255,0,0.03) 50%,
    rgba(255,255,255,0) 100%);
  animation: scan 8s linear infinite;
  pointer-events: none;
  z-index: 1000;
}

@keyframes scan {
  0% { transform: translateY(-100vh); }
  100% { transform: translateY(100vh); }
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  background: rgba(0, 0, 0, 0.95);
  padding: 30px;
  border: 2px solid var(--neon-green);
  border-radius: 0;
  box-shadow: 
    0 0 20px var(--neon-green),
    inset 0 0 20px rgba(0, 255, 0, 0.1);
  position: relative;
}

.container::before {
  content: '';
  position: absolute;
  top: -2px;
  left: -2px;
  right: -2px;
  bottom: -2px;
  background: linear-gradient(45deg, var(--neon-green), var(--cyber-purple), var(--neon-pink), var(--cyber-blue));
  z-index: -1;
  animation: border-glow 3s ease-in-out infinite alternate;
}

@keyframes border-glow {
  0% { opacity: 0.5; }
  100% { opacity: 1; }
}

h1 {
  color: var(--neon-green);
  margin-bottom: 30px;
  font-size: 2.5rem;
  text-align: center;
  text-transform: uppercase;
  letter-spacing: 3px;
  animation: glitch-title 2s infinite;
  text-shadow: 
    2px 2px var(--neon-pink),
    -2px -2px var(--cyber-purple),
    0 0 10px var(--neon-green);
}

@keyframes glitch-title {
  0% { transform: skew(0deg); }
  20% { transform: skew(2deg); filter: hue-rotate(0deg); }
  40% { transform: skew(-2deg); filter: hue-rotate(90deg); }
  60% { transform: skew(2deg); filter: hue-rotate(180deg); }
  80% { transform: skew(-2deg); filter: hue-rotate(270deg); }
  100% { transform: skew(0deg); filter: hue-rotate(360deg); }
}

h3 {
  color: var(--cyber-purple);
  margin-top: 30px;
  margin-bottom: 15px;
  font-size: 1.5rem;
  text-transform: uppercase;
  letter-spacing: 2px;
  text-shadow: 0 0 10px var(--cyber-purple);
}

.node-info {
  background: linear-gradient(135deg, 
    rgba(147, 112, 219, 0.3) 0%, 
    rgba(255, 105, 180, 0.3) 50%,
    rgba(0, 255, 255, 0.3) 100%);
  color: var(--neon-green);
  padding: 25px;
  border: 2px solid var(--neon-pink);
  margin-bottom: 25px;
  position: relative;
  animation: info-pulse 4s infinite;
  text-shadow: 0 0 5px currentColor;
}

@keyframes info-pulse {
  0% { box-shadow: 0 0 10px var(--neon-pink); }
  50% { box-shadow: 0 0 30px var(--cyber-purple), 0 0 40px var(--neon-pink); }
  100% { box-shadow: 0 0 10px var(--neon-pink); }
}

.node-info::before {
  content: '> SYSTEM STATUS';
  position: absolute;
  top: -12px;
  left: 20px;
  background: var(--matrix-black);
  color: var(--neon-pink);
  padding: 0 10px;
  font-size: 0.8rem;
  letter-spacing: 1px;
}

.node-info a {
  color: var(--cyber-blue);
  text-decoration: none;
  transition: all 0.3s;
}

.node-info a:hover {
  color: var(--neon-pink);
  text-shadow: 0 0 10px var(--neon-pink);
}

.last-update {
  background: rgba(0, 255, 0, 0.1);
  border: 1px solid var(--neon-green);
  border-left: 4px solid var(--neon-green);
  padding: 15px;
  margin: 20px 0;
  font-size: 0.9em;
  color: var(--neon-green);
  position: relative;
  animation: data-stream 1s ease-in-out infinite alternate;
}

@keyframes data-stream {
  0% { box-shadow: 0 0 5px var(--neon-green); }
  100% { box-shadow: 0 0 15px var(--neon-green); }
}

.last-update::before {
  content: '> LAST_UPDATE.LOG';
  position: absolute;
  top: -12px;
  left: 15px;
  background: var(--matrix-black);
  color: var(--neon-green);
  padding: 0 8px;
  font-size: 0.7rem;
  letter-spacing: 1px;
}

.commit-hash {
  font-family: "Courier New", monospace;
  background: rgba(255, 105, 180, 0.2);
  color: var(--neon-pink);
  padding: 4px 8px;
  border: 1px solid var(--neon-pink);
  font-size: 0.85em;
  text-shadow: 0 0 5px var(--neon-pink);
  animation: hash-flicker 2s infinite;
}

@keyframes hash-flicker {
  0%, 100% { opacity: 1; }
  50% { opacity: 0.7; }
}

.table-container {
  overflow-x: auto;
  margin: 25px 0;
  border: 2px solid var(--cyber-purple);
  position: relative;
  background: rgba(147, 112, 219, 0.05);
}

.table-container::before {
  content: '> POD_MATRIX.DB';
  position: absolute;
  top: -12px;
  left: 20px;
  background: var(--matrix-black);
  color: var(--cyber-purple);
  padding: 0 10px;
  font-size: 0.8rem;
  letter-spacing: 1px;
}

.pod-table {
  width: 100%;
  border-collapse: collapse;
  margin: 0;
  background: var(--matrix-black);
  min-width: 600px;
  font-family: "Courier New", monospace;
}

.pod-table th {
  background: linear-gradient(135deg, var(--cyber-purple) 0%, var(--neon-pink) 100%);
  color: var(--matrix-black);
  padding: 15px 12px;
  text-align: left;
  font-weight: 700;
  font-size: 0.9rem;
  text-transform: uppercase;
  letter-spacing: 1px;
  position: sticky;
  top: 0;
  z-index: 10;
  border: 1px solid var(--neon-green);
  text-shadow: none;
}

.pod-table td {
  padding: 12px;
  border: 1px solid rgba(0, 255, 0, 0.3);
  font-size: 0.85rem;
  vertical-align: middle;
  color: var(--neon-green);
  background: rgba(0, 0, 0, 0.8);
}

.pod-table tbody tr {
  transition: all 0.3s ease;
  position: relative;
}

.pod-table tbody tr:hover {
  background: rgba(0, 255, 0, 0.1) !important;
  transform: scale(1.002);
  box-shadow: 0 0 15px rgba(0, 255, 0, 0.3);
}

.pod-table tbody tr:nth-child(even) {
  background: rgba(147, 112, 219, 0.05);
}

.pod-table tbody tr:nth-child(odd) {
  background: rgba(255, 105, 180, 0.05);
}

.status-running {
  color: var(--neon-green);
  font-weight: 600;
  padding: 4px 8px;
  background: rgba(0, 255, 0, 0.2);
  border: 1px solid var(--neon-green);
  font-size: 0.8rem;
  display: inline-block;
  text-transform: uppercase;
  letter-spacing: 1px;
  animation: status-pulse 2s infinite;
  text-shadow: 0 0 5px var(--neon-green);
}

.status-pending {
  color: #ffff00;
  font-weight: 600;
  padding: 4px 8px;
  background: rgba(255, 255, 0, 0.2);
  border: 1px solid #ffff00;
  font-size: 0.8rem;
  display: inline-block;
  text-transform: uppercase;
  letter-spacing: 1px;
  animation: status-pulse 2s infinite;
  text-shadow: 0 0 5px #ffff00;
}

.status-error {
  color: #ff0040;
  font-weight: 600;
  padding: 4px 8px;
  background: rgba(255, 0, 64, 0.2);
  border: 1px solid #ff0040;
  font-size: 0.8rem;
  display: inline-block;
  text-transform: uppercase;
  letter-spacing: 1px;
  animation: status-pulse 2s infinite;
  text-shadow: 0 0 5px #ff0040;
}

@keyframes status-pulse {
  0%, 100% { opacity: 1; }
  50% { opacity: 0.7; }
}

/* Custom scrollbar */
::-webkit-scrollbar {
  width: 12px;
  height: 12px;
}

::-webkit-scrollbar-track {
  background: var(--matrix-black);
  border: 1px solid var(--neon-green);
}

::-webkit-scrollbar-thumb {
  background: linear-gradient(45deg, var(--neon-green), var(--cyber-purple));
  border: 1px solid var(--matrix-black);
}

::-webkit-scrollbar-thumb:hover {
  background: linear-gradient(45deg, var(--cyber-purple), var(--neon-pink));
}

/* Mobile responsiveness with cyberpunk flair */
@media (max-width: 768px) {
  body { padding: 10px; }
  .container { padding: 20px; }
  h1 { font-size: 1.8rem; letter-spacing: 2px; }
  h3 { font-size: 1.2rem; letter-spacing: 1px; }
  .node-info { padding: 20px; font-size: 0.9rem; }
  .pod-table th, .pod-table td { padding: 8px 6px; font-size: 0.75rem; }
  .pod-table th { font-size: 0.8rem; }
  .pod-table td:first-child { word-break: break-word; max-width: 150px; }
}

@media (max-width: 480px) {
  .pod-table { min-width: 500px; }
  .pod-table th, .pod-table td { padding: 6px 4px; font-size: 0.7rem; }
  .node-info { padding: 15px; font-size: 0.85rem; }
  .last-update { padding: 12px; font-size: 0.8rem; }
  h1 { font-size: 1.5rem; letter-spacing: 1px; }
}

/* Matrix rain effect for background */
.container::after {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-image: 
    radial-gradient(circle at 20% 80%, rgba(0, 255, 0, 0.1) 0%, transparent 50%),
    radial-gradient(circle at 80% 20%, rgba(255, 105, 180, 0.1) 0%, transparent 50%),
    radial-gradient(circle at 40% 40%, rgba(147, 112, 219, 0.1) 0%, transparent 50%);
  pointer-events: none;
  z-index: -1;
}

/* Footer styling to match cyberpunk theme */
footer, .footer, #footer, .site-footer {
  background: var(--matrix-black) !important;
  color: var(--neon-green) !important;
  border-top: 2px solid var(--neon-green) !important;
  padding: 20px !important;
  font-family: "Courier New", monospace !important;
}

footer a, .footer a, #footer a, .site-footer a {
  color: var(--cyber-blue) !important;
  text-decoration: none !important;
  transition: all 0.3s !important;
}

footer a:hover, .footer a:hover, #footer a:hover, .site-footer a:hover {
  color: var(--neon-pink) !important;
  text-shadow: 0 0 10px var(--neon-pink) !important;
}

/* Ensure any white backgrounds are overridden */
.content-wrapper, .main-content, .page-content {
  background: var(--matrix-black) !important;
}

/* Override any default theme footer styling */
body > footer,
body > .footer,
.hugo-footer,
.theme-footer {
  background: var(--matrix-black) !important;
  color: var(--neon-green) !important;
  border-top: 2px solid var(--neon-green) !important;
}
</style>
