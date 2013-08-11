$(document).ready(function(){
	$('.drop-down').hover( function(){
		$(this).children(':nth-child(2)').stop(true, true).delay(200).slideDown(500);
		}, function (){
    	$(this).children(':nth-child(2)').stop(true, true).slideUp(500);
	});

	jQuery('h1 a').fitText(1.1);
	jQuery('.container-title').fitText();
});