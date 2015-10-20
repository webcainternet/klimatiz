jQuery(document).ready(function(){
/**************swipe menu***************/
jQuery('#page').click(function(){
	if(jQuery(this).parents('body').hasClass('ind')){
		jQuery(this).parents('body').removeClass('ind');
		return false
	}
	})
	jQuery('.swipe-control').click(function(){
		if(jQuery(this).parents('body').hasClass('ind')){
		jQuery(this).parents('body').removeClass('ind');
		return false
	}
	else{
		jQuery(this).parents('body').addClass('ind');
		return false
	}
})
/****************BACK TO TOP*********************/
var IE='\v'=='v';
	// hide #back-top first
	jQuery("#back-top").hide();
	// fade in #back-top
	jQuery(function () {
		jQuery(window).scroll(function () {
			if (!IE) {
				if (jQuery(this).scrollTop() > 100) {
					jQuery('#back-top').fadeIn();
				} else {
					jQuery('#back-top').fadeOut();
				}
			}
			else {
				if (jQuery(this).scrollTop() > 100) {
					jQuery('#back-top').show();
				} else {
					jQuery('#back-top').hide();
				}	
			}
		});

		// scroll body to 0px on click
		jQuery('#back-top a').click(function () {
			jQuery('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
	});
/*******************************************************************************************/
$(function(){
	$('.breadcrumb li').last().addClass('last');
})
/************************************************************************************************shadow height*****************************************************************************************************/
var sect = 1;
$(document).ready(function() {
	$('.swipe').height($(window).height()-50);

	$(window).resize(function() {
		$('.swipe').height($(window).height()-50);
	});

	var sects = $('.swipe').size();

});
/**************lazy load***************/
jQuery("img.lazy").unveil(1, function(){
	jQuery(this).load(function() {
		jQuery(this).animate({'opacity':1}, 700);
	});
});

/************product gallery on product page***********/
$("#gallery_zoom").elevateZoom({gallery:'image-additional', cursor: 'pointer',zoomType : 'inner', galleryActiveClass: 'active', imageCrossfade: true}); 
//pass the images to Fancybox
$("#gallery_zoom").bind("click", function(e) {  
  var ez =   $('#gallery_zoom').data('elevateZoom');	
	$.fancybox(ez.getGalleryList());
  return false;
});
$('#image-additional').bxSlider({
	mode:'vertical',
	pager:false,
	controls:true,
	slideMargin:13,
	minSlides: 6,
	maxSlides: 6,
	slideWidth:88,
	nextText: '<i class="fa fa-chevron-down"></i>',
	prevText: '<i class="fa fa-chevron-up"></i>',
	infiniteLoop:false,
	adaptiveHeight:true,
	moveSlides:1
});
$('#gallery').bxSlider({
	pager:false,
	controls:true,
	minSlides: 1,
	maxSlides: 1,
	infiniteLoop:false,
	moveSlides:1
});

/**********************************************************add icon aside li *****************************************************************************/
	$(document).ready(function(){
		$('column').find('.box-category .menu  li li a').prepend('<i class="fa fa-chevron-right"></i>');
		$('#content').find('ul.list-unstyled li a').prepend('<i class="fa fa-chevron-right"></i>');
		$('.site-map-page').find(' ul li a').prepend('<i class="fa fa-chevron-right"></i>');
		$('.manufacturer-content ').find(' div>a').prepend('<i class="fa fa-chevron-right"></i>');
		$('#tm_menu div > ul > li > ul  ').find(' li>a').prepend('<i class="fa fa-chevron-right"></i>');
		$('.box.info .box-content ul li  ').find('a').prepend('<i class="fa fa-chevron-right"></i>');
	});
if ($('body').width() > 767) {
/******************* category name height**************************/
(function($){$.fn.equalHeights=function(minHeight,maxHeight){tallest=(minHeight)?minHeight:0;this.each(function(){if($(this).height()>tallest){tallest=$(this).height()}});if((maxHeight)&&tallest>maxHeight)tallest=maxHeight;return this.each(function(){$(this).height(tallest)})}})(jQuery)
$(window).load(function(){
	if($("#content .product-grid").length){
	$("#content .product-grid").equalHeights()}
});
/******************* category name height**************************/
(function($){$.fn.equalHeights=function(minHeight,maxHeight){tallest=(minHeight)?minHeight:0;this.each(function(){if($(this).height()>tallest){tallest=$(this).height()}});if((maxHeight)&&tallest>maxHeight)tallest=maxHeight;return this.each(function(){$(this).height(tallest)})}})(jQuery)
$(window).load(function(){
	if($("#content .product-grid name").length){
	$("#content .product-grid name").equalHeights()}
});
/******************* category name height**************************/

	
(function($){$.fn.equalHeights=function(minHeight,maxHeight){tallest=(minHeight)?minHeight:0;this.each(function(){if($(this).height()>tallest){tallest=$(this).height()}});if((maxHeight)&&tallest>maxHeight)tallest=maxHeight;return this.each(function(){$(this).height(tallest)})}})(jQuery)
$(window).load(function(){
	if($(".related-slider .name").length){
	$(".related-slider .name").equalHeights()}
});
		 
}

/* if ($('body').width() > 767) {	
	$('#logo').css({marginLeft: 15});
	$('#logo').css({opacity: 0});
	$('#logo').stop().animate({marginLeft: 0, opacity: 1}, 700);	
} */

/**************related name height ******************/
(function($){$.fn.equalHeights=function(minHeight,maxHeight){tallest=(minHeight)?minHeight:0;this.each(function(){if($(this).height()>tallest){tallest=$(this).height()}});if((maxHeight)&&tallest>maxHeight)tallest=maxHeight;return this.each(function(){$(this).height(tallest)})}})(jQuery)
$(window).load(function(){
	if($(".maxheight-r").length){
	$(".maxheight-r").equalHeights()}
});
/******************************************************/
(function($){ //create closure so we can safely use $ as alias for jQuery
	  $(document).ready(function(){
		var exampleOptions = {
			delay:       1000,                            // one second delay on mouseout
			animation:   {opacity:'show',height:'show'},  // fade-in and slide-down animation
			speed:       'fast',                          // faster animation speed
			autoArrows:  true
		}
		// initialise plugin
		var example = $('#tm_menu').superfish(exampleOptions);
	  });

	})(jQuery); 
/***********CATEGORY DROP DOWN****************/
jQuery("#menu-icon").on("click", function(){
  jQuery("#menu-gadget .menu").slideToggle();
  jQuery(this).toggleClass("active");
 });

  jQuery('#menu-gadget .menu').find('li>ul').before('<i class="fa fa-angle-down"></i>');
  jQuery('#menu-gadget .menu li i').on("click", function(){
   if (jQuery(this).hasClass('fa-angle-up')) { jQuery(this).removeClass('fa-angle-up').parent('li').find('> ul').slideToggle(); } 
	else {
	 jQuery(this).addClass('fa-angle-up').parent('li').find('> ul').slideToggle();
	}
  });
/***********column dropdown box*******************/
  if ($('body').width() < 768) {
		leftColumn = $('body').find('#column-left');
		leftColumn.remove().insertAfter('#content');
	  jQuery("img.lazy").unveil(1, function(){
			jQuery(this).load(function() {
				jQuery(this).animate({'opacity':1}, 700);
			});
		});
		jQuery('.col-sm-3 .box-heading h3').append('<i class="fa fa-plus-circle"></i>');
		jQuery('.col-sm-3 .box-heading').on("click", function(){
		if (jQuery(this).find('i').hasClass('fa-minus-circle')) { jQuery(this).find('i').removeClass('fa-minus-circle').parents('.col-sm-3 .box').find('.box-content').slideToggle(); }
		else {
			jQuery(this).find('i').addClass('fa-minus-circle').parents('.col-sm-3 .box').find('.box-content').slideToggle();
		}
		})
	};
/************************* RELATED PRODUCTS************************************/
$('.related-slider').bxSlider({
	pager:false,
	controls:true,
	slideMargin:30,
	minSlides: 1,
	maxSlides: 5,
	slideWidth: 223,
	infiniteLoop:true,
	moveSlides:1
});

/*********product tabs**********/
if ($('body').width() < 768) {
	jQuery('.tab-heading').append('<i class="fa fa-plus-circle"></i>');
	jQuery('.tab-heading').on("click", function(){
	if (jQuery(this).find('i').hasClass('fa-minus-circle')) { jQuery(this).find('i').removeClass('fa-minus-circle').parents('.tabs').find('.tab-content').slideToggle(); }
		else {
		jQuery(this).find('i').addClass('fa-minus-circle').parents('.tabs').find('.tab-content').slideToggle();
	}
	})
	};
});

var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent);

/***********************************/

$(document).ready(function(){
	if ($('body').width() > 630) {
		$(".top-buttons").appendTo(".top-panel .container");
	}
})

if(!isMobile) {
	
/*** crop top_module ***/
/***********************Green Sock*******************************/

$(document).ready(function(){
	var stickMenu = false;
	var docWidth= $('body').find('.container').width();	
	// init controller
	controller = new ScrollMagic();	
	// assign handler "scene" and add it to Controller	
})


function listBlocksAnimate(block,element,row,offset,difEffect){
	if(!isMobile) {
		if(jQuery(block).length){
			  var i = 0;
			  var j = row;
			  var k = 1;
			  var effect = -1;
			  $(element).each(function() {
				  i++;				  
				  if(i>j){
					j += row;
					k = i;
					effect = effect*(-1);
				  }				  
				  if(effect == -1 && difEffect == true) {
					ef = TweenMax.from(element+':nth-child('+i+')', 0.8, {scale:.1*i, alpha: 0, ease:Power1.easeOut})
				  }				  
				  var scene_new = new ScrollScene({
					triggerElement: element+':nth-child('+k+')',
					offset: offset,
					}).setTween(ef)
					  .addTo(controller)
					  .reverse(false);
			});
		  }
	}
}

function listTabsAnimate(element){
	if(!isMobile) {
		if(jQuery(element).length){
			TweenMax.staggerFromTo(element, 0.5, {alpha: 0, rotationY:-90, ease:Power1.easeOut},{alpha: 1, rotationY:0, ease:Power1.easeOut}, 0.1);
		}
	}
}

$(window).load(function(){
	 listBlocksAnimate('.box.featured', '.box.featured .product-layout', 3, -300, true);
	 listBlocksAnimate('.banners', '.banners .col-sm-6', 6, -300, true);
	 if(!isMobile) {
		 if(jQuery(".parallax-1").length){ 
			 var welcome = new TimelineMax();			 
			 welcome.from(".parallax-1 .tx2",0.8,{marginLeft:100, autoAlpha:0})
			 .from(".parallax-1 .tx3",0.8,{marginTop:20, autoAlpha:0})
			 .from(".parallax-1 .tx1",0.8,{marginLeft:100, autoAlpha:0})
			 .from(".parallax-1 .tx4",0.8,{marginLeft:-50,autoAlpha:0});
			 
			var scene_welcome = new ScrollScene({triggerElement: ".parallax-1",offset: -200}).setTween(welcome).addTo(controller).reverse(false); 
		 }
		 
		 if(jQuery(".parallax-2").length){ 
			 var welcome = new TimelineMax();			 
			 welcome.from(".parallax-2 .tx2",0.8,{marginLeft:100, autoAlpha:0})
			 .from(".parallax-2 .tx4",0.8,{marginLeft:-50,autoAlpha:0})
			 .from(".parallax-2 .tx1",0.8,{marginLeft:100, autoAlpha:0})
			 .from(".parallax-2 .tx3",0.8,{marginTop:20, autoAlpha:0});
			 
			var scene_welcome = new ScrollScene({triggerElement: ".parallax-2",offset: -200}).setTween(welcome).addTo(controller).reverse(false); 
		 }		
	 }
});

}

