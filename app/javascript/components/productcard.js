function productCardNavigation(){
  $('a.data-gallery').featherlightGallery({
    previousIcon: '<i class="fas fa-chevron-left"></i>',     /* Code that is used as previous icon */
    nextIcon: '<i class="fas fa-chevron-right"></i>',         /* Code that is used as next icon */
    galleryFadeIn: 100,          /* fadeIn speed when slide is loaded */
    galleryFadeOut: 300          /* fadeOut speed before slide is loaded */
  });
};

export { productCardNavigation };
