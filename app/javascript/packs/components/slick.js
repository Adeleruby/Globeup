import 'slick-carousel';

$('.slick-carousel').slick({
  infinite: true,
  slidesToShow: 4,
  slidesToScroll: 1,
  prevArrow: "<i class='l-arr fas fa-chevron-left'></i>",
  nextArrow: "<i class='r-arr fas fa-chevron-right'></i>",
  centerPadding: '10px',
  // variableWidth: true,
  autoplay: true,
  speed: 500,
  autoplaySpeed: 4000
})
