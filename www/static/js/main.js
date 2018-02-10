/*jslint browser: true*/
/*global jQuery, console, svg4everybody,requestFrame, Modernizr, runforceFeed, FastClick*/

var $m = jQuery;

if (typeof svg4everybody === 'function') { svg4everybody(); }
if (typeof requestFrame === 'function') { requestFrame('native'); } // re/ declares requestAnimationFrame & cancelAnimationFrame
if (typeof FastClick === 'function') { FastClick.attach(document.body); }

(function () {
    'use strict';
	/* A couple of selections. */
	var $body         = $m(document.body),
        $window       = $m(window),
        $html         = $m(document.documentElement),
        $document	  = $m(document),
        desktop,
		tablet,
		phone,
		touch = Modernizr.touch || document.documentElement.hasOwnProperty('ontouchstart'),
		label = '',
    $swipers = $('.swiper-container'),
		gammel_label,
        window_width,
        resizeTO,
		ticking = false,
    playstate = false,
    lydfil;

/*=======================================================
					@function events
=======================================================*/

	function detect_size() {
		window_width = $window.width();
		if (window_width < 600) {
			label = 'phone';
			if (gammel_label !== label) {
				//$html.addClass('phone').removeClass('desktop tablet');
				desktop = tablet = false;
                phone = true;
			}
		} else if (window_width < 1025) {
			label = 'tablet';
			if (gammel_label !== label) {
				//$html.removeClass('phone').addClass('desktop tablet');
				desktop = phone = false;
                tablet = true;
			}
		} else {
			label = 'desktop';
			if (gammel_label !== label) {
				//$html.removeClass('phone tablet').addClass('desktop');
				desktop = true;
                tablet = phone = false;
			}
		}
		gammel_label = label;
		ticking = false;
	}

    detect_size();
	if (typeof runforceFeed === 'function') { runforceFeed(); }
	window.onresize = function () {
		if(!ticking) {
			requestAnimationFrame(detect_size);
			ticking = true;
		}
	};

	$html.addClass('lastet');

  if ($(".visualizer").attr("data-lydfil") && desktop == true ) {
    setTimeout(function(){
      lydfil = $(".visualizer").attr("data-lydfil");
      console.log(lydfil);
      playSong();
    }, 3000);
  }

  // SWIPERS
  $swipers.each(function() {

    var hasAutoplay = $(this).find('.swiper-slide').attr('data-swiper-autoplay');

    if (hasAutoplay != undefined) {
      hasAutoplay = 1000;
    } else {
      hasAutoplay = false;
    }

    var mySwiper = new Swiper($(this), {
        speed: 400,
        pagination: '.swiper-pagination',
        loop: false,
        type: 'progressbar',
        nextButton: '.swiper-button-next',
  			prevButton: '.swiper-button-prev',
        autoplay: hasAutoplay
    });

  })

  var hashTagActive = "";
  var isHashonpage = "";
      $(".scroll a").on("click touchstart" , function (event) {
        isHashonpage = $(this.hash).length;

        if (isHashonpage) {
          event.preventDefault();
          if(hashTagActive != this.hash) { //this will prevent if the user click several times the same link to freeze the scroll.
              //calculate destination place

              var dest = 0;

              if ($(this.hash).offset().top > $(document).height() - $(window).height()) {
                  dest = $(document).height() - $(window).height();
              } else {
                  dest = $(this.hash).offset().top - 70;
              }
              //go to destination
              $('html,body').animate({
                  scrollTop: dest
              }, 1000, 'swing');
              hashTagActive = this.hash;

          }
        }


      });


      $( ".swiper-wrapper" ).hover(
        function() {
          $('#backdropCurtain').addClass( "fadeIn" );
        }, function() {
          $('#backdropCurtain').removeClass( "fadeIn" );
        }
      );





/*=======================================================
				  @Click/hover events
=======================================================*/

$document.on('click', '#btn-startstop', function (e) {

    e.preventDefault();

    if (typeof sourceNode !== "undefined") {
      sourceNode.stop();
  	}

  });


}());
