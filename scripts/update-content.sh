#!/bin/bash
set -e

# Script to update Hugo content with Kubernetes pod and cluster information
# This will run inside the CronJob container

CONTENT_DIR="/tmp/repo/astro-k8s-dashboard/content"
POD_FILE="${CONTENT_DIR}/pods.md"
INDEX_FILE="${CONTENT_DIR}/_index.md"
API_DIR="/tmp/repo/astro-k8s-dashboard/static/api"

# Make sure the directories exist
mkdir -p ${CONTENT_DIR}
mkdir -p ${API_DIR}

# Get current date for frontmatter
CURRENT_DATE=$(date -Iseconds)

# Get node name this pod is running on
NODE_NAME=$(kubectl get pod $HOSTNAME -n $POD_NAMESPACE -o jsonpath='{.spec.nodeName}' 2>/dev/null || echo "device003-lab")

# Get pod information
echo "Fetching pod information..."
POD_INFO=$(kubectl get pods -A -o custom-columns="Pod Name:.metadata.name,Namespace:.metadata.namespace,Status:.status.phase,Node:.spec.nodeName" | tail -n +2)

# Count pods by status
TOTAL_PODS=$(echo "$POD_INFO" | wc -l)
RUNNING_PODS=$(echo "$POD_INFO" | grep -c "Running" || echo "0")
FAILED_PODS=$(echo "$POD_INFO" | grep -c -e "Failed" -e "Error" -e "CrashLoopBackOff" || echo "0")

# Determine cluster health status
if [ "$FAILED_PODS" -eq "0" ]; then
  CLUSTER_STATUS="Healthy"
  STATUS_COLOR="green"
  STATUS_CLASS="healthy"
elif [ "$FAILED_PODS" -lt "3" ]; then
  CLUSTER_STATUS="Warning"
  STATUS_COLOR="orange"
  STATUS_CLASS="warning"
else
  CLUSTER_STATUS="Unhealthy"
  STATUS_COLOR="red"
  STATUS_CLASS="error"
fi

# Get a sample of 6 pods for the index page
SAMPLE_PODS=$(echo "$POD_INFO" | head -n 6)

# Create namespaces list for filtering
NAMESPACES=$(echo "$POD_INFO" | awk '{print $2}' | sort | uniq)
NAMESPACE_LINKS=""
NAMESPACE_IDS=""

for ns in $NAMESPACES; do
  NAMESPACE_LINKS="${NAMESPACE_LINKS}<a href=\"#\" id=\"filter-${ns}\" onclick=\"filterTable('${ns}'); return false;\" class=\"env-link\">${ns}</a> "
  NAMESPACE_IDS="${NAMESPACE_IDS}\"${ns}\", "
done

# Generate JSON API data for dynamic updates
# This creates a JSON file that can be fetched by the frontend for live updates
cat > ${API_DIR}/cluster-status.json << EOF
{
  "lastUpdated": "$(date -u +"%Y-%m-%dT%H:%M:%SZ")",
  "nodeName": "${NODE_NAME}",
  "clusterStatus": "${CLUSTER_STATUS}",
  "statusClass": "${STATUS_CLASS}",
  "statistics": {
    "totalPods": ${TOTAL_PODS},
    "runningPods": ${RUNNING_PODS},
    "failedPods": ${FAILED_PODS}
  },
  "namespaces": [$(echo "$NAMESPACES" | awk '{print "\""$1"\""}' | paste -sd,)]
}
EOF

# Generate pods JSON for dynamic table updates
echo "{" > ${API_DIR}/pods.json
echo "  \"lastUpdated\": \"$(date -u +"%Y-%m-%dT%H:%M:%SZ")\"," >> ${API_DIR}/pods.json
echo "  \"pods\": [" >> ${API_DIR}/pods.json

IFS=$'\n'
FIRST=true
for pod in $POD_INFO; do
  if [ "$FIRST" = true ]; then
    FIRST=false
  else
    echo "," >> ${API_DIR}/pods.json
  fi
  
  POD_NAME=$(echo "$pod" | awk '{print $1}')
  NAMESPACE=$(echo "$pod" | awk '{print $2}')
  STATUS=$(echo "$pod" | awk '{print $3}')
  NODE=$(echo "$pod" | awk '{print $4}')
  
  STATUS_CLASS=""
  if [[ "$STATUS" == "Running" ]]; then
    STATUS_CLASS="status-running"
  elif [[ "$STATUS" == "Pending" ]]; then
    STATUS_CLASS="status-pending"
  elif [[ "$STATUS" == "Failed" || "$STATUS" == *"Error"* || "$STATUS" == *"CrashLoop"* ]]; then
    STATUS_CLASS="status-error"
  fi
  
  # Create JSON entry for pod
  cat >> ${API_DIR}/pods.json << EOF
    {
      "name": "${POD_NAME}",
      "namespace": "${NAMESPACE}",
      "status": "${STATUS}",
      "statusClass": "${STATUS_CLASS}",
      "node": "${NODE}"
    }
EOF
done

echo "  ]" >> ${API_DIR}/pods.json
echo "}" >> ${API_DIR}/pods.json

# Update pods.md file with enhanced format and dynamic data display
cat > ${POD_FILE} << EOF
---
title: "Running Kubernetes Pods"
date: ${CURRENT_DATE}
---

<div class="cluster-status">
  <div class="status-indicator ${STATUS_CLASS}">
    <span class="status-label">Cluster Status:</span>
    <span class="status-value" id="cluster-status">${CLUSTER_STATUS}</span>
  </div>
  <div class="status-metrics">
    <div class="metric">
      <span class="metric-label">Total Pods:</span>
      <span class="metric-value" id="total-pods">${TOTAL_PODS}</span>
    </div>
    <div class="metric">
      <span class="metric-label">Running:</span>
      <span class="metric-value" id="running-pods">${RUNNING_PODS}</span>
    </div>
    <div class="metric">
      <span class="metric-label">Failed:</span>
      <span class="metric-value" id="failed-pods">${FAILED_PODS}</span>
    </div>
  </div>
</div>

## Production Cluster Pod Inventory

This page provides a complete inventory of all pods running in the production Kubernetes cluster, with real-time status information.
<span class="update-info">Last update: <span class="dynamic-timestamp">Just now</span></span>

<div class="filter-controls">
  <div class="namespace-filters">
    <span class="filter-label">Filter by Namespace:</span>
    <div class="env-links">
      ${NAMESPACE_LINKS}
      <a href="#" id="filter-all" onclick="filterTable(''); return false;" class="env-link active">All</a>
    </div>
  </div>
  <div class="search-container">
    <input type="text" id="pod-search" placeholder="Search pods..." onkeyup="searchPods()">
  </div>
</div>

<table id="pods-table" class="pod-table">
  <thead>
    <tr>
      <th onclick="sortTable(0)">Pod Name ↕</th>
      <th onclick="sortTable(1)">Namespace ↕</th>
      <th onclick="sortTable(2)">Status ↕</th>
      <th onclick="sortTable(3)">Node ↕</th>
    </tr>
  </thead>
  <tbody>
EOF

# Add pod data with HTML formatting and ID anchors
PREV_NS=""
echo "$POD_INFO" | while IFS= read -r line; do
  POD_NAME=$(echo "$line" | awk '{print $1}')
  NAMESPACE=$(echo "$line" | awk '{print $2}')
  STATUS=$(echo "$line" | awk '{print $3}')
  NODE=$(echo "$line" | awk '{print $4}')
  
  STATUS_CLASS=""
  if [[ "$STATUS" == "Running" ]]; then
    STATUS_CLASS="status-running"
  elif [[ "$STATUS" == "Pending" ]]; then
    STATUS_CLASS="status-pending"
  elif [[ "$STATUS" == "Failed" || "$STATUS" == *"Error"* || "$STATUS" == *"CrashLoop"* ]]; then
    STATUS_CLASS="status-error"
  fi
  
  # Add namespace ID to first row of each namespace group
  if [[ "$NAMESPACE" != "$PREV_NS" ]]; then
    echo "    <tr id=\"${NAMESPACE}\">" >> ${POD_FILE}
    PREV_NS="$NAMESPACE"
  else
    echo "    <tr>" >> ${POD_FILE}
  fi
  
  echo "      <td>${POD_NAME}</td>" >> ${POD_FILE}
  echo "      <td>${NAMESPACE}</td>" >> ${POD_FILE}
  echo "      <td class=\"${STATUS_CLASS}\">${STATUS}</td>" >> ${POD_FILE}
  echo "      <td>${NODE}</td>" >> ${POD_FILE}
  echo "    </tr>" >> ${POD_FILE}
done

# Add JavaScript and CSS to the pods.md file
cat >> ${POD_FILE} << 'EOF'
  </tbody>
</table>

<script>
// Filter table by namespace
function filterTable(namespace) {
  const tableRows = document.querySelectorAll('#pods-table tbody tr');
  const filterLinks = document.querySelectorAll('.env-link');
  
  // Update active link
  filterLinks.forEach(link => {
    link.classList.remove('active');
    if ((namespace === '' && link.id === 'filter-all') || 
        link.id === 'filter-' + namespace) {
      link.classList.add('active');
    }
  });
  
  // Filter rows
  tableRows.forEach(row => {
    const namespaceCell = row.querySelector('td:nth-child(2)');
    if (!namespace || namespaceCell.textContent.trim() === namespace) {
      row.style.display = '';
    } else {
      row.style.display = 'none';
    }
  });
  
  // Update URL hash without page reload
  if (namespace) {
    window.location.hash = namespace;
  } else {
    history.pushState("", document.title, window.location.pathname);
  }
}

// Search functionality
function searchPods() {
  const input = document.getElementById('pod-search');
  const filter = input.value.toUpperCase();
  const table = document.getElementById('pods-table');
  const rows = table.getElementsByTagName('tr');

  for (let i = 1; i < rows.length; i++) {
    let found = false;
    const cells = rows[i].getElementsByTagName('td');
    
    for (let j = 0; j < cells.length; j++) {
      const cell = cells[j];
      if (cell) {
        const text = cell.textContent || cell.innerText;
        if (text.toUpperCase().indexOf(filter) > -1) {
          found = true;
          break;
        }
      }
    }
    
    if (found) {
      rows[i].style.display = '';
    } else {
      rows[i].style.display = 'none';
    }
  }
}

// Sort table functionality
function sortTable(columnIndex) {
  const table = document.getElementById('pods-table');
  let switching = true;
  let direction = 'asc';
  let switchcount = 0;
  
  while (switching) {
    switching = false;
    const rows = table.rows;
    
    for (let i = 1; i < rows.length - 1; i++) {
      let shouldSwitch = false;
      const x = rows[i].getElementsByTagName('td')[columnIndex];
      const y = rows[i + 1].getElementsByTagName('td')[columnIndex];
      
      if (direction === 'asc') {
        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
          shouldSwitch = true;
          break;
        }
      } else if (direction === 'desc') {
        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
          shouldSwitch = true;
          break;
        }
      }
      
      if (shouldSwitch) {
        rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
        switching = true;
        switchcount++;
      }
    }
    
    if (switchcount === 0 && direction === 'asc') {
      direction = 'desc';
      switching = true;
    }
  }
  
  // Update header indicators
  const headers = table.querySelectorAll('th');
  headers.forEach((header, index) => {
    if (index === columnIndex) {
      header.innerHTML = header.innerHTML.replace(' ↕', direction === 'asc' ? ' ↓' : ' ↑');
    } else {
      header.innerHTML = header.innerHTML.replace(/ [↑↓]/g, ' ↕');
    }
  });
}

// Initialize on page load
document.addEventListener('DOMContentLoaded', function() {
  // Check if URL has a hash for namespace filtering
  if (window.location.hash) {
    const namespace = window.location.hash.substring(1);
    filterTable(namespace);
  }
});
</script>

<style>
.cluster-status {
  display: flex;
  background-color: #f8f9fa;
  border-radius: 8px;
  padding: 15px;
  margin-bottom: 30px;
  box-shadow: 0 2px 4px rgba(0,0,0,0.05);
  flex-wrap: wrap;
}

.status-indicator {
  display: flex;
  align-items: center;
  padding-right: 20px;
  margin-right: 20px;
  border-right: 1px solid #e9ecef;
}

.status-indicator.healthy {
  border-left: 4px solid #28a745;
  padding-left: 10px;
}

.status-indicator.warning {
  border-left: 4px solid #ffc107;
  padding-left: 10px;
}

.status-indicator.error {
  border-left: 4px solid #dc3545;
  padding-left: 10px;
}

.status-label {
  font-weight: 500;
  margin-right: 8px;
}

.status-value {
  font-weight: 700;
  font-size: 1.2em;
}

.status-indicator.healthy .status-value {
  color: #28a745;
}

.status-indicator.warning .status-value {
  color: #ffc107;
}

.status-indicator.error .status-value {
  color: #dc3545;
}

.status-metrics {
  display: flex;
  flex-wrap: wrap;
}

.metric {
  margin-right: 20px;
}

.metric-label {
  font-weight: 500;
  margin-right: 4px;
}

.metric-value {
  font-weight: 600;
}

.update-info {
  display: block;
  font-size: 0.85em;
  color: #6c757d;
  margin-top: -10px;
  margin-bottom: 20px;
}

.filter-controls {
  display: flex;
  justify-content: space-between;
  margin-bottom: 20px;
  align-items: center;
  flex-wrap: wrap;
}

.namespace-filters {
  display: flex;
  align-items: center;
  flex-wrap: wrap;
}

.filter-label {
  margin-right: 10px;
  font-weight: 500;
}

.env-links {
  display: flex;
  flex-wrap: wrap;
}

.env-link {
  display: inline-block;
  margin-right: 8px;
  margin-bottom: 8px;
  padding: 6px 12px;
  background-color: #f8f9fa;
  border-radius: 4px;
  color: #495057;
  text-decoration: none;
  transition: all 0.2s;
}

.env-link:hover {
  background-color: #e9ecef;
}

.env-link.active {
  background-color: #007bff;
  color: white;
}

.search-container {
  margin-top: 10px;
}

#pod-search {
  padding: 8px 12px;
  border: 1px solid #ced4da;
  border-radius: 4px;
  width: 220px;
}

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
  cursor: pointer;
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

@media (max-width: 768px) {
  .cluster-status,
  .filter-controls {
    flex-direction: column;
    align-items: flex-start;
  }
  
  .status-indicator {
    border-right: none;
    border-bottom: 1px solid #e9ecef;
    margin-right: 0;
    margin-bottom: 15px;
    padding-right: 0;
    padding-bottom: 15px;
    width: 100%;
  }
  
  .search-container {
    width: 100%;
    margin-top: 15px;
  }
  
  #pod-search {
    width: 100%;
  }
  
  .pod-table {
    font-size: 0.9em;
  }
}
</style>
EOF

# Update the main index page with cluster overview and dynamic updates
cat > ${INDEX_FILE} << EOF
---
title: "Edoo Kubernetes Dashboard"
date: ${CURRENT_DATE}
---

# K8s Production Cluster

<div class="node-info">
This dashboard is running on node: <strong id="node-name">${NODE_NAME}</strong> | 
<span style="color:${STATUS_COLOR}">Cluster Status: <strong id="index-cluster-status">${CLUSTER_STATUS}</strong></span> | 
Total Pods: <strong id="index-total-pods">${TOTAL_PODS}</strong>
<div class="update-time">Last updated: <span class="dynamic-timestamp">Just now</span></div>
</div>

## Cluster Components

<div class="env-links" id="namespace-links">
EOF

# Add namespace links to index page
for ns in $NAMESPACES; do
  echo "<a href=\"pods/#${ns}\" class=\"env-link\">${ns}</a>" >> ${INDEX_FILE}
done
echo "<a href=\"pods/\" class=\"env-link\">All Pods</a>" >> ${INDEX_FILE}

# Continue with index page content
cat >> ${INDEX_FILE} << EOF
</div>

### Key Infrastructure Pods

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
EOF

# Add sample pods to the index page
echo "$SAMPLE_PODS" | while IFS= read -r line; do
  POD_NAME=$(echo "$line" | awk '{print $1}')
  NAMESPACE=$(echo "$line" | awk '{print $2}')
  STATUS=$(echo "$line" | awk '{print $3}')
  NODE=$(echo "$line" | awk '{print $4}')
  
  STATUS_CLASS=""
  if [[ "$STATUS" == "Running" ]]; then
    STATUS_CLASS="status-running"
  elif [[ "$STATUS" == "Pending" ]]; then
    STATUS_CLASS="status-pending"
  elif [[ "$STATUS" == "Failed" || "$STATUS" == *"Error"* || "$STATUS" == *"CrashLoop"* ]]; then
    STATUS_CLASS="status-error"
  fi
  
  echo "      <tr>" >> ${INDEX_FILE}
  echo "          <td>${POD_NAME}</td>" >> ${INDEX_FILE}
  echo "          <td>${NAMESPACE}</td>" >> ${INDEX_FILE}
  echo "          <td class=\"${STATUS_CLASS}\">${STATUS}</td>" >> ${INDEX_FILE}
  echo "          <td>${NODE}</td>" >> ${INDEX_FILE}
  echo "      </tr>" >> ${INDEX_FILE}
done

# Finish the index page with dynamic update functionality
cat >> ${INDEX_FILE} << 'EOF'
  </tbody>
</table>

<div class="action-buttons">
<a href="pods/" class="view-all-button">View All Pods</a>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
  // Apply status colors
  const statusCells = document.querySelectorAll('td:nth-child(3)');
  statusCells.forEach(cell => {
    if (cell.textContent.trim() === 'Running') {
      cell.className = 'status-running';
    } else if (cell.textContent.trim().includes('Error') || cell.textContent.trim().includes('Failed')) {
      cell.className = 'status-error';
    }
  });
});
</script>

<style>
.node-info {
  background-color: #f8f9fa;
  padding: 15px;
  border-radius: 8px;
  margin-bottom: 20px;
  box-shadow: 0 2px 4px rgba(0,0,0,0.05);
  position: relative;
}

.update-time {
  font-size: 0.8em;
  color: #6c757d;
  margin-top: 8px;
}

.env-link {
  display: inline-block;
  margin-right: 8px;
  margin-bottom: 8px;
  padding: 6px 12px;
  background-color: #f8f9fa;
  border-radius: 4px;
  color: #495057;
  text-decoration: none;
  transition: all 0.2s;
}

.env-link:hover {
  background-color: #e9ecef;
  color: #007bff;
}

.env-links {
  display: flex;
  flex-wrap: wrap;
  margin: 20px 0;
}

.pod-table {
  width: 100%;
  border-collapse: collapse;
  margin: 20px 0 30px 0;
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

.action-buttons {
  display: flex;
  justify-content: center;
  margin-top: 20px;
}

.view-all-button {
  display: inline-block;
  padding: 10px 20px;
  background-color: #007bff;
  color: white;
  border-radius: 5px;
  text-decoration: none;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
  transition: all 0.2s;
}

.view-all-button:hover {
  background-color: #0069d9;
  transform: translateY(-2px);
  box-shadow: 0 4px 6px rgba(0,0,0,0.1);
}

/* Animation for updated elements */
.updated {
  animation: highlight 1s ease-out;
}

@keyframes highlight {
  0% {
    background-color: rgba(255, 243, 148, 0.5);
  }
  100% {
    background-color: transparent;
  }
}
</style>
EOF

echo "Content update completed with dynamic data API endpoints." 