// Pod data loader for dynamic content updates

async function loadPodData() {
  try {
    const response = await fetch('/api/pods.json');
    const data = await response.json();
    
    // Update metadata
    if (data.metadata) {
      updateElement('pod-count', data.metadata.totalPods);
      updateElement('running-count', data.metadata.runningPods);
    }
    
    // Update pods container
    const podsContainer = document.getElementById('pods-container');
    if (podsContainer && data.pods) {
      podsContainer.innerHTML = '';
      
      data.pods.forEach(pod => {
        const podCard = createPodCard(pod);
        podsContainer.appendChild(podCard);
      });
    }
  } catch (error) {
    console.error('Failed to load pod data:', error);
  }
}

function updateElement(id, value) {
  const element = document.getElementById(id);
  if (element) {
    element.textContent = value;
  }
}

function createPodCard(pod) {
  const card = document.createElement('div');
  card.className = 'pod-card';
  
  const statusClass = getStatusClass(pod.status);
  
  card.innerHTML = `
    <div class="pod-header">
      <span class="pod-name">${pod.name}</span>
      <span class="pod-status ${statusClass}">${pod.status}</span>
    </div>
    <div class="pod-details">
      <div class="pod-detail">
        <span class="detail-label">Namespace:</span>
        <span class="detail-value">${pod.namespace}</span>
      </div>
      <div class="pod-detail">
        <span class="detail-label">Node:</span>
        <span class="detail-value">${pod.node}</span>
      </div>
    </div>
  `;
  
  return card;
}

function getStatusClass(status) {
  switch (status.toLowerCase()) {
    case 'running': return 'running';
    case 'pending': return 'pending';
    case 'failed':
    case 'error': return 'failed';
    default: return 'unknown';
  }
}

// Load pod data when page loads and refresh every 30 seconds
document.addEventListener('DOMContentLoaded', function() {
  loadPodData();
  setInterval(loadPodData, 30000);
});