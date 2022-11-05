  /* owl carousel */
function testimonialCarousel() {
  $(document).ready(function(){
    $('.card-carousel').owlCarousel({
        merge: true,
        smartSpeed: 1000,
        loop:true,
        margin:10,
        nav:true,
        navText: ['<i class="fas fa-chevron-left"></i>', '<i class="fas fa-chevron-right"></i>'],
        autoplay:true,
        autoplayTimeout:5000,
        autoplayHoverPause:true,
        animateOut: 'slideOutDown',
        animateIn: 'flipInX',
        center: false,
        dots: true,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:2
            },
            1000:{
                items:3
            }
          }
      })
   });
  $(document).ready(function(){
    $('.card-carousel-solo').owlCarousel({
        merge: true,
        items: 1,
        smartSpeed: 1000,
        loop:true,
        margin:10,
        nav:true,
        navText: ['<i class="fas fa-chevron-left"></i>', '<i class="fas fa-chevron-right"></i>'],
        autoplay:true,
        autoplayTimeout:5000,
        autoplayHoverPause:true,
        center: false,
        dots: true,
      })
   });
  $(document).ready(function(){
    $('.logo-carousel').owlCarousel({
        merge: true,
        smartSpeed: 1000,
        loop:true,
        margin:10,
        nav:true,
        navText: ['<i class="fas fa-chevron-left"></i>', '<i class="fas fa-chevron-right"></i>'],
        autoplay:true,
        autoplayTimeout:5000,
        autoplayHoverPause:true,
        animateOut: 'slideOutDown',
        animateIn: 'flipInX',
        center: false,
        dots: true,
        responsive:{
            0:{
                items:2
            },
            600:{
                items:4
            },
            1000:{
                items:6
            }
          }
      })
   });
};
function homepageCarousel() {
  $(document).ready(function(){
    $('.banner-home-carousel').owlCarousel({
        merge: true,
        items: 1,
        smartSpeed: 1000,
        loop:true,
        margin:10,
        nav:true,
        navText: ['<i class="fas fa-chevron-left"></i>', '<i class="fas fa-chevron-right"></i>'],
        autoplay:true,
        autoplayTimeout:5000,
        autoplayHoverPause:true,
        center: false,
        dots: true,
      })
   });
};

export { testimonialCarousel, homepageCarousel };
