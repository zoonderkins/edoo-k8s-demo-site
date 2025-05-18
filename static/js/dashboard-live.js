// Dynamic Dashboard Updates
let refreshTimer;
let refreshInterval = 60; // Default refresh interval in seconds
let countdownValue = refreshInterval;
const refreshRates = [30, 60, 120, 300, 600]; // Available refresh intervals in seconds

// Initialize dynamic features when DOM is loaded
document.addEventListener('DOMContentLoaded', function () {
  setupRefreshControls();
  initializeTimestamps();
  startRefreshTimer();

  // Handle auto-refresh toggle
  const autoRefreshToggle = document.getElementById('auto-refresh-toggle');
  if (autoRefreshToggle) {
    autoRefreshToggle.addEventListener('change', function () {
      if (this.checked) {
        startRefreshTimer();
        document.getElementById('refresh-countdown').style.display = 'inline-block';
      } else {
        stopRefreshTimer();
        document.getElementById('refresh-countdown').style.display = 'none';
      }
    });
  }

  // Handle manual refresh button
  const manualRefreshBtn = document.getElementById('manual-refresh');
  if (manualRefreshBtn) {
    manualRefreshBtn.addEventListener('click', refreshDashboard);
  }

  // Initialize any status badges based on data
  updateStatusBadges();
});

// Add refresh controls to the page
function setupRefreshControls() {
  // Create refresh controls if they don't exist
  if (!document.getElementById('refresh-controls')) {
    const controlsHTML = `
      <div id="refresh-controls" class="refresh-controls">
        <div class="refresh-header">
          <span>Dashboard Controls</span>
        </div>
        <div class="refresh-options">
          <div class="refresh-option">
            <label for="auto-refresh-toggle">Auto-refresh:</label>
            <label class="switch">
              <input type="checkbox" id="auto-refresh-toggle" checked>
              <span class="slider round"></span>
            </label>
            <span id="refresh-countdown" class="countdown">60s</span>
          </div>
          <div class="refresh-option">
            <label for="refresh-interval">Interval:</label>
            <select id="refresh-interval">
              <option value="30">30 seconds</option>
              <option value="60" selected>1 minute</option>
              <option value="120">2 minutes</option>
              <option value="300">5 minutes</option>
              <option value="600">10 minutes</option>
            </select>
          </div>
          <div class="refresh-option">
            <button id="manual-refresh" class="refresh-button">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M23 4v6h-6"></path>
                <path d="M1 20v-6h6"></path>
                <path d="M3.51 9a9 9 0 0 1 14.85-3.36L23 10"></path>
                <path d="M20.49 15a9 9 0 0 1-14.85 3.36L1 14"></path>
              </svg>
              Refresh Now
            </button>
          </div>
        </div>
        <div class="last-updated">
          Last updated: <span id="last-update-time">Just now</span>
        </div>
      </div>
    `;

    // Insert the controls at the top of the page
    const contentWrapper = document.querySelector('.content');
    if (contentWrapper) {
      const tempDiv = document.createElement('div');
      tempDiv.innerHTML = controlsHTML;
      contentWrapper.insertBefore(tempDiv.firstElementChild, contentWrapper.firstChild);

      // Set up interval change handler
      const refreshIntervalSelect = document.getElementById('refresh-interval');
      refreshIntervalSelect.addEventListener('change', function () {
        refreshInterval = parseInt(this.value);
        countdownValue = refreshInterval;
        updateCountdown();

        // Reset the timer with new interval
        if (document.getElementById('auto-refresh-toggle').checked) {
          stopRefreshTimer();
          startRefreshTimer();
        }
      });
    }
  }
}

// Start the refresh countdown timer
function startRefreshTimer() {
  // Clear any existing timer
  stopRefreshTimer();

  countdownValue = refreshInterval;
  updateCountdown();

  // Start new countdown
  refreshTimer = setInterval(function () {
    countdownValue--;
    updateCountdown();

    if (countdownValue <= 0) {
      refreshDashboard();
      countdownValue = refreshInterval;
    }
  }, 1000);
}

// Stop the refresh timer
function stopRefreshTimer() {
  if (refreshTimer) {
    clearInterval(refreshTimer);
    refreshTimer = null;
  }
}

// Update the countdown display
function updateCountdown() {
  const countdownElement = document.getElementById('refresh-countdown');
  if (countdownElement) {
    countdownElement.textContent = countdownValue + 's';
  }
}

// Refresh the dashboard content
function refreshDashboard() {
  const timeDisplay = document.getElementById('last-update-time');
  if (timeDisplay) {
    timeDisplay.textContent = 'Refreshing...';
  }

  // Add animation to show refresh is happening
  document.body.classList.add('refreshing');

  // Simulate a waiting period (you'll replace this with an actual API call in production)
  // In a real implementation, you would fetch the latest data via AJAX
  fetchLatestData()
    .then(data => {
      updateDashboardContent(data);
      document.body.classList.remove('refreshing');

      // Update last refresh time
      const now = new Date();
      const timeString = now.toLocaleTimeString();
      if (timeDisplay) {
        timeDisplay.textContent = timeString;
      }
    })
    .catch(error => {
      console.error('Error refreshing dashboard:', error);
      document.body.classList.remove('refreshing');
      if (timeDisplay) {
        timeDisplay.textContent += ' (failed)';
      }
    });
}

// Fetch latest data (placeholder for AJAX call)
async function fetchLatestData() {
  // In production, this would make an API call to your backend
  // For now, we'll use a promise that resolves with dummy data
  return new Promise((resolve) => {
    setTimeout(() => {
      resolve({
        statusUpdated: true
      });
    }, 1000);
  });
}

// Update dashboard with fresh data
function updateDashboardContent(data) {
  // This function would update the dashboard with new data
  // For now it just updates timestamp displays
  if (data.statusUpdated) {
    // Update the timestamp
    document.querySelectorAll('.dynamic-timestamp').forEach(el => {
      el.textContent = new Date().toLocaleTimeString();
    });

    // Update any status badges
    updateStatusBadges();
  }
}

// Update status indicators based on data in the page
function updateStatusBadges() {
  const statusCells = document.querySelectorAll('td:nth-child(3)');
  let totalCount = statusCells.length;
  let runningCount = 0;
  let failedCount = 0;

  statusCells.forEach(cell => {
    const status = cell.textContent.trim();
    if (status === 'Running') {
      runningCount++;
      cell.className = 'status-running';
    } else if (status.includes('Error') || status.includes('Failed') || status.includes('CrashLoop')) {
      failedCount++;
      cell.className = 'status-error';
    } else if (status === 'Pending') {
      cell.className = 'status-pending';
    }
  });

  // Update count displays if they exist
  updateCountDisplay('total-pods', totalCount);
  updateCountDisplay('running-pods', runningCount);
  updateCountDisplay('failed-pods', failedCount);

  // Update cluster status
  updateClusterStatus(failedCount, totalCount);
}

// Update a count display element
function updateCountDisplay(id, count) {
  const element = document.getElementById(id);
  if (element) {
    element.textContent = count;
  }
}

// Update cluster status based on pod health
function updateClusterStatus(failedCount, totalCount) {
  const statusIndicator = document.querySelector('.status-indicator');
  const statusValue = document.querySelector('.status-value');

  if (statusIndicator && statusValue) {
    if (failedCount === 0) {
      statusIndicator.className = 'status-indicator healthy';
      statusValue.textContent = 'Healthy';
      statusValue.style.color = '#28a745';
    } else if (failedCount < 3) {
      statusIndicator.className = 'status-indicator warning';
      statusValue.textContent = 'Warning';
      statusValue.style.color = '#ffc107';
    } else {
      statusIndicator.className = 'status-indicator error';
      statusValue.textContent = 'Unhealthy';
      statusValue.style.color = '#dc3545';
    }
  }
}

// Initialize any timestamp displays on the page
function initializeTimestamps() {
  const now = new Date();
  const timeString = now.toLocaleTimeString();

  document.querySelectorAll('.dynamic-timestamp').forEach(el => {
    el.textContent = timeString;
  });

  const lastUpdateTime = document.getElementById('last-update-time');
  if (lastUpdateTime) {
    lastUpdateTime.textContent = timeString;
  }
} 