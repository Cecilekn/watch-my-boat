const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 350) {
        navbar.classList.add('navbar-blue');
      } else {
        navbar.classList.remove('navbar-blue');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
