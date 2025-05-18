// Function to filter the pod table by namespace
function filterTable(namespace) {
  // Get all table rows
  const rows = document.querySelectorAll('.post-content table tr');

  // Skip the header row
  for (let i = 1; i < rows.length; i++) {
    const row = rows[i];
    const cells = row.getElementsByTagName('td');

    if (cells.length > 0) {
      const rowNamespace = cells[1].textContent.trim();

      if (namespace === '' || rowNamespace === namespace) {
        row.style.display = '';
      } else {
        row.style.display = 'none';
      }
    }
  }
}

// Function to initialize the dashboard
function initDashboard() {
  console.log('K8s Dashboard initialized');
}

// Initialize the dashboard when the DOM is loaded
document.addEventListener('DOMContentLoaded', initDashboard); 