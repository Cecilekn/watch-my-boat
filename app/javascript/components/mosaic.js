const mosaic = () => {
  const bigImage = document.querySelector('.mosaic-right > img');
  const smallImages = document.querySelectorAll('.mosaic-left > img');
  smallImages.forEach((smallImage) => {
    smallImage.addEventListener('click', (e) => {
      const imageUrl = e.currentTarget.getAttribute('src');
      bigImage.src = imageUrl;
    });
  });
}

export { mosaic };
