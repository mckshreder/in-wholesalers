// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require wow
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .



$(window).load(function(){
  $('.home-slider').slick({
  dots: true,
  infinite: true,
  speed: 3000,
  slidesToShow: 1,
  adaptiveHeight: true,
  accessability: true,
  autoplay: true,
  autoplaySpeed:5000,
  arrows:true,
  lazyLoad: 'progressive',
  mobileFirst: true,
 
    
  });

  $('.brand-slider').slick({
  infinite: true, 
  speed: 20000,
  slidesToShow: 1,
  adaptiveHeight: true,
  autoplay: true,
  autoplaySpeed:0,
  ease: false,
  cssEase: 'linear',
  arrows:false,

 
    
  });

});
