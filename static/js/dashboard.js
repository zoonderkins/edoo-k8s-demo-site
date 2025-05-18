// Dashboard functionality

// Filter table by namespace
function filterTable(namespace) {
  const tableRows = document.querySelectorAll('table tr:not(:first-child)');

  tableRows.forEach(row => {
    const cells = row.querySelectorAll('td');
    if (cells.length >= 2) {
      const rowNamespace = cells[1].textContent.trim();

      if (namespace === '' || rowNamespace === namespace) {
        row.classList.remove('hidden-row');
      } else {
        row.classList.add('hidden-row');
      }
    }
  });

  // Update active filter
  const filterLinks = document.querySelectorAll('.env-links a');
  filterLinks.forEach(link => {
    if (link.textContent.trim() === namespace || (link.textContent.trim() === 'All' && namespace === '')) {
      link.classList.add('active');
    } else {
      link.classList.remove('active');
    }
  });
}

// Apply status colors to table cells
function applyStatusColors() {
  const tableRows = document.querySelectorAll('table tr:not(:first-child)');

  tableRows.forEach(row => {
    const cells = row.querySelectorAll('td');
    if (cells.length >= 3) {
      const statusCell = cells[2];
      const status = statusCell.textContent.trim();

      if (status === 'Running') {
        statusCell.classList.add('status-Running');
      } else if (status === 'Failed' || status === 'Error' || status.includes('CrashLoop')) {
        statusCell.classList.add('status-Failed');
      } else if (status === 'Pending') {
        statusCell.classList.add('status-Pending');
      }
    }
  });
}

// Initialize dashboard functions when DOM is loaded
document.addEventListener('DOMContentLoaded', function () {
  // Apply status colors to table
  applyStatusColors();

  // Auto-refresh content every 5 minutes (if needed)
  // Uncomment if you want client-side auto-refresh
  /*
  setInterval(function() {
    window.location.reload();
  }, 5 * 60 * 1000);
  */
}); 