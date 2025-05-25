// Cyberpunk Dashboard JavaScript - Matrix Effects and Interactions

// Matrix rain effect
function initMatrix() {
  const canvas = document.getElementById('matrix-canvas');
  if (!canvas) return;
  
  const ctx = canvas.getContext('2d');
  
  // Set canvas size
  function resizeCanvas() {
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
  }
  
  resizeCanvas();
  window.addEventListener('resize', resizeCanvas);
  
  // Matrix characters
  const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()_+-=[]{}|;:,.<>?';
  const charArray = chars.split('');
  
  const fontSize = 14;
  const columns = canvas.width / fontSize;
  
  // Array to store y position of each column
  const drops = [];
  for (let i = 0; i < columns; i++) {
    drops[i] = 1;
  }
  
  function draw() {
    // Black background with slight transparency for trail effect
    ctx.fillStyle = 'rgba(0, 0, 0, 0.05)';
    ctx.fillRect(0, 0, canvas.width, canvas.height);
    
    // Green text
    ctx.fillStyle = '#00ff00';
    ctx.font = fontSize + 'px monospace';
    
    for (let i = 0; i < drops.length; i++) {
      // Random character
      const text = charArray[Math.floor(Math.random() * charArray.length)];
      
      // Draw character
      ctx.fillText(text, i * fontSize, drops[i] * fontSize);
      
      // Reset drop randomly or when it reaches bottom
      if (drops[i] * fontSize > canvas.height && Math.random() > 0.975) {
        drops[i] = 0;
      }
      
      drops[i]++;
    }
  }
  
  // Start animation
  setInterval(draw, 35);
}// Visitor counter animation
function animateCounter() {
  const counter = document.getElementById('visitor-count');
  if (!counter) return;
  
  let count = 1337;
  setInterval(() => {
    count += Math.floor(Math.random() * 3);
    counter.textContent = count.toString().padStart(6, '0');
  }, 5000);
}

// Force cyberpunk styling on any remaining elements
function forceCyberpunkStyling() {
  // Hide any remaining site headers
  const siteHeaders = document.querySelectorAll('.site-header, header.site-header');
  siteHeaders.forEach(header => {
    header.style.display = 'none';
  });
  
  // Ensure cyberpunk title is properly styled
  const cyberTitles = document.querySelectorAll('.cyber-title, h1.cyber-title');
  cyberTitles.forEach(title => {
    title.style.color = '#00ffff';
    title.style.textShadow = '0 0 20px #00ffff';
    title.style.fontFamily = '"Courier New", monospace';
  });
  
  // Force body styling
  document.body.style.background = '#000';
  document.body.style.color = '#00ff00';
  document.body.style.fontFamily = '"Courier New", monospace';
}

// Sidebar matrix rain effect
function initSidebarMatrix() {
  const canvas = document.getElementById('matrix-rain-sidebar');
  if (!canvas) return;
  
  const ctx = canvas.getContext('2d');
  canvas.width = 200;
  canvas.height = 100;
  
  const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()_+-=[]{}|;:,.<>?';
  const charArray = chars.split('');
  
  const fontSize = 8;
  const columns = canvas.width / fontSize;
  
  const drops = [];
  for (let i = 0; i < columns; i++) {
    drops[i] = 1;
  }
  
  function drawSidebarMatrix() {
    ctx.fillStyle = 'rgba(0, 0, 0, 0.05)';
    ctx.fillRect(0, 0, canvas.width, canvas.height);
    
    ctx.fillStyle = '#00ff00';
    ctx.font = fontSize + 'px monospace';
    
    for (let i = 0; i < drops.length; i++) {
      const text = charArray[Math.floor(Math.random() * charArray.length)];
      ctx.fillText(text, i * fontSize, drops[i] * fontSize);
      
      if (drops[i] * fontSize > canvas.height && Math.random() > 0.975) {
        drops[i] = 0;
      }
      
      drops[i]++;
    }
  }
  
  setInterval(drawSidebarMatrix, 50);
}

// Initialize when DOM is loaded
document.addEventListener('DOMContentLoaded', function() {
  initMatrix();
  initSidebarMatrix();
  animateCounter();
  forceCyberpunkStyling();
  
  // Add some interactive effects
  const podCards = document.querySelectorAll('.pod-card');
  podCards.forEach(card => {
    card.addEventListener('mouseenter', function() {
      this.style.borderColor = '#ffff00';
    });
    
    card.addEventListener('mouseleave', function() {
      this.style.borderColor = '#00ffff';
    });
  });
});