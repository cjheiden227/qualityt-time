var ready = function(){
	$('.autoplay').slick({
	  slidesToShow: 1,
	  slidesToScroll: 1,
	  autoplay: true,
	  speed: 1000,
	  autoplaySpeed: 4000,
	  fade: true,
	  dots: true,
	  arrows: false
	});
};

$(document).ready(ready);
$(document).on('page:load', ready);
