---
date: 2025-05-24T18:39:22+00:00
markup: html
---

<div class="page-container">
  <!-- Left Sidebar -->
  <aside class="left-sidebar">
    <div class="sidebar-header">
      <h3 class="blink">⚡ CYBER LINKS ⚡</h3>
    </div>
    
    <div class="affiliate-section">
      <div class="affiliate-banner">
        <img src="https://media.giphy.com/media/3o7btPCcdNniyf0ArS/giphy.gif" alt="Animated Banner" class="gif-banner">
        <a href="#" target="_blank" class="affiliate-link">
          <span class="blink">🔥 HOT DEALS! 🔥</span>
        </a>
      </div>
      
      <div class="affiliate-banner">
        <img src="https://media.giphy.com/media/26tn33aiTi1jkl6H6/giphy.gif" alt="Matrix Code" class="gif-banner">
        <a href="#" target="_blank" class="affiliate-link">
          <span>💻 CYBER GEAR 💻</span>
        </a>
      </div>
      
      <div class="affiliate-banner">
        <img src="https://media.giphy.com/media/xT9IgzoKnwFNmISR8I/giphy.gif" alt="Neon Lights" class="gif-banner">
        <a href="#" target="_blank" class="affiliate-link">
          <span class="blink">⚡ POWER UP! ⚡</span>
        </a>
      </div>
    </div>
    
    <div class="visitor-counter">
      <div class="counter-display">
        <span class="blink">VISITORS:</span>
        <span id="visitor-count">001337</span>
      </div>
    </div>
    
    <div class="webring-section">
      <h4>🌐 WEBRING 🌐</h4>
      <div class="webring-links">
        <a href="#" class="webring-link">&lt;&lt; PREV</a>
        <a href="#" class="webring-link">RANDOM</a>
        <a href="#" class="webring-link">NEXT &gt;&gt;</a>
      </div>
    </div>

    <!-- Merged content from right sidebar -->
    <div class="sidebar-header">
      <h3 class="blink">🚀 CYBER ZONE 🚀</h3>
    </div>
    
    <div class="affiliate-section">
      <div class="affiliate-banner">
        <img src="https://media.giphy.com/media/l0HlBO7eyXzSZkJri/giphy.gif" alt="Spinning Globe" class="gif-banner">
        <a href="#" target="_blank" class="affiliate-link">
          <span class="blink">🌐 WEB HOSTING 🌐</span>
        </a>
      </div>
      
      <div class="affiliate-banner">
        <img src="https://media.giphy.com/media/3o6Zt6KHxJTbXCnSvu/giphy.gif" alt="Digital Rain" class="gif-banner">
        <a href="#" target="_blank" class="affiliate-link">
          <span>💾 CLOUD STORAGE 💾</span>
        </a>
      </div>
      
      <div class="affiliate-banner">
        <img src="https://media.giphy.com/media/xT9IgG50Fb7Mi0prBC/giphy.gif" alt="Cyber Security" class="gif-banner">
        <a href="#" target="_blank" class="affiliate-link">
          <span class="blink">🔒 SECURITY 🔒</span>
        </a>
      </div>
    </div>
    
    <div class="matrix-rain-container">
      <h4>📡 MATRIX FEED 📡</h4>
      <div class="matrix-rain" id="matrix-rain-left"></div>
    </div>
    
    <div class="retro-stats">
      <h4>📊 STATS 📊</h4>
      <div class="stat-item">
        <span class="blink">UPTIME:</span> 99.9%
      </div>
      <div class="stat-item">
        <span>LOAD:</span> <span class="blink">0.42</span>
      </div>
      <div class="stat-item">
        <span>USERS:</span> <span id="online-users-left">1337</span>
      </div>
    </div>
  </aside>

  <!-- Main Content -->
  <main class="main-dashboard">
    <div class="container">
      <h1>K8s Production Cluster</h1>

      <div class="node-info">
        Worker node: <strong id="worker-node-name">k0s-color-worker-2</strong><br>
        <span style="color: white">Cluster Status: <strong id="index-cluster-status">Healthy</strong>
        <br>
        Total Pods: <strong id="index-total-pods">62</strong>
        <br>
        Repository: <a href="https://github.com/zoonderkins/edoo-k8s-demo-site" target="_blank">https://github.com/zoonderkins/edoo-k8s-demo-site</a>
      </div>

      <div class="last-update">
        Last update: <span id="last-update-time">2025-05-24 13:39:22 CST</span><br>
        Hash: <span class="commit-hash" id="git-commit-hash">5403e8f</span>
      </div>

      <h3>Kubernetes Pods</h3>
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
                  <td>hugo-site-94f9ddf54-ffdhj</td>
                  <td>prod</td>
                  <td class="status-running">Running</td>
                  <td>k0s-color-worker-1</td>
              </tr>
              <tr>
                  <td>update-pods-md-manual-1748111945198-9x2tq</td>
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
  </main>
</div>

<style>
:root {
  --neon-green: #0f0;
  --neon-pink: #ff69b4;
  --cyber-purple: #9370db;
  --matrix-black: #000;
  --cyber-blue: #00ffff;
}

/* 90s Three-Column Layout */
.page-container {
  display: flex;
  min-height: 100vh;
  width: 100%;
  background: var(--matrix-black);
  font-family: "Courier New", monospace;
}

/* 90s Two-Column Layout */
.page-container {
  display: flex;
  min-height: 100vh;
  width: 100%;
  background: var(--matrix-black);
  font-family: "Courier New", monospace;
}

/* Override Hugo theme layout completely */
.post-single {
  display: flex !important;
  justify-content: center !important;
  align-items: flex-start !important;
  width: 1920px !important;
  max-width: 1920px !important;
  margin: 0 auto !important;
  min-height: 100vh !important;
}

.post-content {
  background: transparent !important;
  color: var(--neon-green) !important;
  padding: 0 !important;
  margin: 0 !important;
  width: 100% !important;
  max-width: 1200px !important;
}

/* Ensure main site layout doesn't interfere */
.site-main, main.site-main, main {
  display: flex !important;
  justify-content: center !important;
  align-items: flex-start !important;
  width: 100% !important;
  margin: 0 auto !important;
  padding: 20px !important;
  background: var(--matrix-black) !important;
  min-height: 100vh !important;
}

.left-sidebar, .right-sidebar {
  width: 100%;
  max-height: 200px;
}

.left-sidebar {
  width: 100%;
  max-height: 300px; /* More height for merged content */
}

/* Desktop layout for left sidebar */
.left-sidebar {
  width: 250px;
  background: linear-gradient(180deg, #111 0%, #000 100%);
  padding: 15px;
  border: 2px solid var(--neon-green);
  border-right: 3px solid var(--neon-green);
  box-shadow: 3px 0 15px rgba(0, 255, 0, 0.3);
  position: relative;
  overflow-y: auto;
  max-height: 100vh;
  flex-shrink: 0;
}

.right-sidebar {
  border-left: 3px solid var(--neon-green);
  box-shadow: -3px 0 15px rgba(0, 255, 0, 0.3);
}

.main-dashboard {
  flex: 1;
  padding: 15px 25px;
  background: var(--matrix-black);
  position: relative;
  min-width: 0; /* Prevent flex item from overflowing */
}

.main-dashboard {
  flex: 3; /* Give main content even more space */
  padding: 20px 40px;
  background: var(--matrix-black);
  position: relative;
  min-width: 0; /* Prevent flex item from overflowing */
}

/* Sidebar Headers */
.sidebar-header h3 {
  color: var(--neon-green);
  text-align: center;
  margin: 0 0 20px 0;
  font-size: 1rem;
  text-shadow: 0 0 10px var(--neon-green);
  border: 1px dashed var(--neon-green);
  padding: 8px;
  background: rgba(0, 255, 0, 0.1);
}

/* 90s Affiliate Banners */
.affiliate-section {
  margin-bottom: 20px;
}

.affiliate-banner {
  margin-bottom: 15px;
  border: 2px solid var(--cyber-purple);
  background: linear-gradient(45deg, rgba(147, 112, 219, 0.2), rgba(255, 105, 180, 0.2));
  padding: 10px;
  text-align: center;
  position: relative;
  overflow: hidden;
  transition: all 0.3s ease;
}

.affiliate-banner:hover {
  transform: scale(1.05) rotate(1deg);
  box-shadow: 0 0 20px var(--neon-pink);
  border-color: var(--neon-pink);
}

.gif-banner {
  width: 100%;
  height: 60px;
  object-fit: cover;
  border: 1px solid var(--neon-green);
  margin-bottom: 8px;
  filter: hue-rotate(90deg) saturate(1.5);
}

.affiliate-link {
  display: block;
  color: var(--cyber-blue);
  text-decoration: none;
  font-size: 0.8rem;
  font-weight: bold;
  text-transform: uppercase;
  letter-spacing: 1px;
  transition: all 0.3s ease;
}

.affiliate-link:hover {
  color: var(--neon-pink);
  text-shadow: 0 0 10px var(--neon-pink);
}

/* Visitor Counter (90s style) */
.visitor-counter {
  background: rgba(0, 255, 0, 0.1);
  border: 2px solid var(--neon-green);
  padding: 10px;
  margin: 15px 0;
  text-align: center;
}

.counter-display {
  font-size: 0.9rem;
  color: var(--neon-green);
  text-shadow: 0 0 5px var(--neon-green);
}

#visitor-count {
  font-family: "Courier New", monospace;
  font-weight: bold;
  color: var(--cyber-blue);
}

/* Webring Section */
.webring-section {
  background: rgba(255, 105, 180, 0.1);
  border: 2px solid var(--neon-pink);
  padding: 10px;
  margin: 15px 0;
}

.webring-section h4 {
  color: var(--neon-pink);
  text-align: center;
  margin: 0 0 10px 0;
  font-size: 0.9rem;
  text-shadow: 0 0 5px var(--neon-pink);
}

.webring-links {
  display: flex;
  justify-content: space-between;
  gap: 5px;
}

.webring-link {
  color: var(--cyber-blue);
  text-decoration: none;
  font-size: 0.7rem;
  padding: 4px;
  border: 1px solid var(--cyber-blue);
  transition: all 0.3s ease;
  text-align: center;
  flex: 1;
}

.webring-link:hover {
  background: var(--cyber-blue);
  color: var(--matrix-black);
  text-shadow: none;
}

/* Matrix Rain Container */
.matrix-rain-container {
  background: rgba(0, 0, 0, 0.8);
  border: 2px solid var(--neon-green);
  padding: 10px;
  margin: 15px 0;
  height: 150px;
}

.matrix-rain-container h4 {
  color: var(--neon-green);
  text-align: center;
  margin: 0 0 10px 0;
  font-size: 0.9rem;
  text-shadow: 0 0 5px var(--neon-green);
}

.matrix-rain {
  height: 100px;
  background: var(--matrix-black);
  border: 1px solid var(--neon-green);
  position: relative;
  overflow: hidden;
}

/* Retro Stats */
.retro-stats {
  background: rgba(0, 255, 255, 0.1);
  border: 2px solid var(--cyber-blue);
  padding: 10px;
  margin: 15px 0;
}

.retro-stats h4 {
  color: var(--cyber-blue);
  text-align: center;
  margin: 0 0 10px 0;
  font-size: 0.9rem;
  text-shadow: 0 0 5px var(--cyber-blue);
}

.stat-item {
  display: flex;
  justify-content: space-between;
  margin: 5px 0;
  font-size: 0.8rem;
  color: var(--neon-green);
}

/* Blinking Animation (90s style) */
.blink {
  animation: blink 1s infinite;
}

@keyframes blink {
  0%, 50% { opacity: 1; }
  51%, 100% { opacity: 0; }
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
  content: "";
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
  max-width: 1920px !important;
  width: 100% !important;
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
  content: "";
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
  content: "> SYSTEM STATUS";
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
  content: "> LAST_UPDATE.LOG";
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
  content: "> POD_MATRIX.DB";
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
  min-width: 1200px;
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
  
  /* Stack layout on mobile */
  .page-container {
    flex-direction: column;
  }
  
  .left-sidebar, .right-sidebar {
    width: 100%;
    max-height: 200px;
  }
  
  .main-dashboard {
    padding: 10px;
  }
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
  content: "";
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

/* Override Hugo theme header and navigation */
.nav, .header, .site-header, header {
  background: var(--matrix-black) !important;
  color: var(--neon-green) !important;
  border-bottom: 2px solid var(--neon-green) !important;
  padding: 20px !important;
  font-family: "Courier New", monospace !important;
}

.nav a, .header a, .site-header a, header a {
  color: var(--cyber-blue) !important;
  text-decoration: none !important;
  transition: all 0.3s !important;
  font-family: "Courier New", monospace !important;
  text-transform: uppercase !important;
  letter-spacing: 1px !important;
}

.nav a:hover, .header a:hover, .site-header a:hover, header a:hover {
  color: var(--neon-pink) !important;
  text-shadow: 0 0 10px var(--neon-pink) !important;
}

/* Override site title */
.site-title, .logo, .nav .logo a, .header .logo a {
  color: var(--neon-green) !important;
  font-family: "Courier New", monospace !important;
  text-transform: uppercase !important;
  letter-spacing: 2px !important;
  text-shadow: 0 0 10px var(--neon-green) !important;
  animation: title-glow 2s ease-in-out infinite alternate !important;
}

@keyframes title-glow {
  0% { text-shadow: 0 0 10px var(--neon-green); }
  100% { text-shadow: 0 0 20px var(--neon-green), 0 0 30px var(--cyber-purple); }
}

/* Override main content wrapper */
.main, .content, .post-single, .page-content, main {
  background: transparent !important;
  color: var(--neon-green) !important;
}

/* Override any remaining white backgrounds */
html, body, .wrapper, .container-fluid, .page-wrapper {
  background: var(--matrix-black) !important;
  color: var(--neon-green) !important;
}

/* Override theme navigation menu */
#menu, .menu, .nav-menu {
  background: var(--matrix-black) !important;
  border: 1px solid var(--neon-green) !important;
}

#menu a, .menu a, .nav-menu a {
  color: var(--cyber-blue) !important;
  background: transparent !important;
}

#menu a:hover, .menu a:hover, .nav-menu a:hover {
  color: var(--neon-pink) !important;
  background: rgba(255, 105, 180, 0.1) !important;
  text-shadow: 0 0 10px var(--neon-pink) !important;
}

/* Override theme buttons */
button, .button, .btn {
  background: linear-gradient(45deg, var(--cyber-purple), var(--neon-pink)) !important;
  color: var(--matrix-black) !important;
  border: 1px solid var(--neon-green) !important;
  font-family: "Courier New", monospace !important;
  text-transform: uppercase !important;
  letter-spacing: 1px !important;
}

button:hover, .button:hover, .btn:hover {
  background: linear-gradient(45deg, var(--neon-green), var(--cyber-blue)) !important;
  box-shadow: 0 0 15px var(--neon-green) !important;
}

/* Hide any remaining post-header elements */
.post-header, header.post-header {
  display: none !important;
}

.post-title, h1.post-title {
  display: none !important;
}

/* Center align main content */
.post-single {
  display: flex !important;
  justify-content: center !important;
  align-items: flex-start !important;
  width: 100% !important;
  min-height: 100vh !important;
}

/* .post-content {
  width: 1920px !important;
  max-width: 1920px !important;
  margin: 0 auto !important;
} */

/* Ensure container is centered */
.container {
  margin: 0 auto !important;
  text-align: left !important; /* Keep table content left-aligned for readability */
}

/* Center the main title */
h1 {
  text-align: center !important;
  margin: 0 auto 30px auto !important;
}

/* Center other headings */
h3 {
  text-align: center !important;
}

/* Center the site-main element */
.site-main, main.site-main, main {
  display: flex !important;
  justify-content: center !important;
  align-items: flex-start !important;
  width: 100% !important;
  margin: 0 auto !important;
  padding: 20px !important;
  background: var(--matrix-black) !important;
  min-height: 100vh !important;
}

/* Ensure main content wrapper is centered */
.main-content, .content-wrapper {
  width: 100% !important;
  max-width: 1200px !important;
  margin: 0 auto !important;
  text-align: center !important;
}

/* Additional CSS for wider main content */
/* .page-container {
  max-width: 100vw;
  width: 100vw;
} */

.main-dashboard {
  flex: 2; /* Give main content more space */
  max-width: none;
}

.pod-table {
  min-width: 1200px; /* Make table much wider */
}
</style>

<script>
// Matrix Rain Effect
document.addEventListener('DOMContentLoaded', function() {
  const matrixContainer = document.getElementById('matrix-rain-left');
  if (matrixContainer) {
    const canvas = document.createElement('canvas');
    const ctx = canvas.getContext('2d');
    matrixContainer.appendChild(canvas);
    
    canvas.width = matrixContainer.offsetWidth;
    canvas.height = matrixContainer.offsetHeight;
    
    const matrix = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789@#$%^&*()*&^%+-=[]{}|;:,.<>?";
    const fontSize = 8;
    const columns = canvas.width / fontSize;
    const drops = [];
    
    for (let x = 0; x < columns; x++) {
      drops[x] = 1;
    }
    
    function drawMatrix() {
      ctx.fillStyle = "rgba(0, 0, 0, 0.04)";
      ctx.fillRect(0, 0, canvas.width, canvas.height);
      
      ctx.fillStyle = "#0F0";
      ctx.font = fontSize + "px monospace";
      
      for (let i = 0; i < drops.length; i++) {
        const text = matrix[Math.floor(Math.random() * matrix.length)];
        ctx.fillText(text, i * fontSize, drops[i] * fontSize);
        
        if (drops[i] * fontSize > canvas.height && Math.random() > 0.975) {
          drops[i] = 0;
        }
        
        drops[i]++;
      }
    }
    
    setInterval(drawMatrix, 35);
  }
  
  // Visitor Counter Animation
  const visitorCount = document.getElementById('visitor-count');
  if (visitorCount) {
    let count = 1337;
    setInterval(() => {
      count += Math.floor(Math.random() * 3);
      visitorCount.textContent = count.toString().padStart(6, '0');
    }, 5000);
  }
  
  // Online Users Counter
  const onlineUsers = document.getElementById('online-users-left');
  if (onlineUsers) {
    setInterval(() => {
      const users = Math.floor(Math.random() * 50) + 1300;
      onlineUsers.textContent = users;
    }, 3000);
  }
});
</script>
