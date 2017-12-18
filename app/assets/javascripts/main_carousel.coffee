$ ->
  mainBoxHeight = $('.main-box').height();
  $('.carousel-image').each ->
    maxHeight = mainBoxHeight
    $(this).css('max-height', maxHeight)

  $(window).resize ->
    mainBoxHeight = $('.main-box').height();
    $('.carousel-image').each ->
      maxHeight = mainBoxHeight
      $(this).css('max-height', maxHeight)

  console.log(mainBoxHeight);
  $('.owl-carousel').owlCarousel(
    items:1,
    loop:true,
    autoplay:true,
    autoplayTimeout:5000,
    dots:false,
  );
