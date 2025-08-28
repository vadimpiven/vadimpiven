(function() {
  let animationId;
  let startTime;
  let currentPosition = 0;
  
  // Animation settings
  const PATTERN_REPEAT = 50; // SVG pattern repeats every 50px
  const CYCLE_DURATION = 30; // seconds for full cycle (30s as you set in CSS)
  
  function animateStripe() {
    const stripe = document.querySelector('.animated-stripe');
    if (!stripe) return;
    
    // Get the container width to calculate full scroll distance
    const containerWidth = stripe.offsetWidth;
    const FULL_SCROLL_DISTANCE = containerWidth + 400; // container width + pattern width for smooth exit/entry
    const SPEED = FULL_SCROLL_DISTANCE / CYCLE_DURATION; // pixels per second
    
    function updatePosition(timestamp) {
      if (!startTime) startTime = timestamp;
      
      const elapsed = timestamp - startTime;
      const distance = (elapsed / 1000) * SPEED; // Convert to pixels moved
      
      // Calculate position within full scroll cycle
      const cycleProgress = distance % FULL_SCROLL_DISTANCE;
      
      // Start from negative pattern width to smoothly enter from left
      currentPosition = cycleProgress - 400;
      
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
