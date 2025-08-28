(function() {
  let animationId;
  let startTime;
  let currentPosition = 0;
  
  // Animation settings
  const PATTERN_REPEAT = 50; // SVG pattern repeats every 50px
  const SPEED = 25; // pixels per second (slow, smooth movement)
  
  function animateStripe() {
    const stripe = document.querySelector('.animated-stripe');
    if (!stripe) return;
    
    function updatePosition(timestamp) {
      if (!startTime) startTime = timestamp;
      
      const elapsed = timestamp - startTime;
      const distance = (elapsed / 1000) * SPEED; // Convert to pixels moved
      
      // Calculate position within one pattern cycle
      currentPosition = distance % PATTERN_REPEAT;
      
      // Apply the position (moving to the right)
      stripe.style.backgroundPositionX = `${currentPosition}px`;
      
      // Continue animation
      animationId = requestAnimationFrame(updatePosition);
    }
    
    // Start the animation
    animationId = requestAnimationFrame(updatePosition);
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
