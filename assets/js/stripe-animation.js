(function() {
  let animationId;
  let lastTimestamp = 0;
  let currentPosition = 0;
  
  // Animation settings
  const PATTERN_REPEAT = 400; // SVG pattern repeats every 25px
  const CYCLE_DURATION = 30; // seconds for full cycle (15s as you set in CSS)
  const SPEED = PATTERN_REPEAT / CYCLE_DURATION; // pixels per second
  
  function animateStripe() {
    const stripe = document.getElementById('animated-stripe');
    if (!stripe) return;
    
    function updatePosition(timestamp) {
      // Calculate delta time in seconds
      const deltaTime = (timestamp - lastTimestamp) / 1000;
      lastTimestamp = timestamp;
      
      // Increment position by speed * deltaTime
      currentPosition += SPEED * deltaTime;
      
      // Keep position within pattern repeat bounds using modulo
      currentPosition = currentPosition % PATTERN_REPEAT;
      
      // Apply the position (moving to the right)
      stripe.style.backgroundPositionX = `${currentPosition}px`;
      
      // Continue animation
      animationId = requestAnimationFrame(updatePosition);
    }
    
    // Initialize first frame and start animation
    function startAnimation(timestamp) {
      lastTimestamp = timestamp;
      stripe.style.backgroundPositionX = '0px';
      animationId = requestAnimationFrame(updatePosition);
    }
    
    // Start the animation
    animationId = requestAnimationFrame(startAnimation);
  }
  
  // Start animation when DOM is ready
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', animateStripe);
  } else {
    animateStripe();
  }
  
  // Cleanup on page unload
  window.addEventListener('beforeunload', function() {
    if (animationId) {
      cancelAnimationFrame(animationId);
    }
  });
})();
