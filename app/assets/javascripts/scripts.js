/* Custom Scripts */
$(document).ready(function () {
		
	// Start Main Content Slider
	$('#main-slider').flexslider({
		animation: "fade",
  	slideshowSpeed: 3000,
    pauseOnHover: false, 
		useCSS: false,
		controlNav: true,               //Boolean: Create navigation for paging control of each clide? Note: Leave true for manualControls usage
		touch: true,
		prevText: "<span class='fa fa-angle-left'></span>",
		nextText: "<span class='fa fa-angle-right'></span>",
	});

	// Start Header Animation
	$(window).scroll(function () {
	if ($(document).scrollTop() < 40) {
	$('header').removeClass('fix');
	} else {
	$('header').addClass('fix');
	}
	});

	
	// Start ToolTip
	$('[data-toggle=tooltip]').tooltip()
	
	// Start PoPover
	$('[data-toggle=popover]').popover()
	
	

});	