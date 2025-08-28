(function() {
  const darkModeQuery = window.matchMedia('(prefers-color-scheme: dark)');
  
  const applySystemTheme = (darkModeQuery) => {
    document.documentElement.setAttribute(
      'data-bs-theme',
      darkModeQuery.matches ? 'dark' : 'light'
    );
  }
  
  applySystemTheme(darkModeQuery);
  darkModeQuery.addEventListener('change', applySystemTheme);
})();
