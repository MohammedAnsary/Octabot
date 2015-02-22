$(document).ready(function(){
  $("#nav1").on("click",function(){
     $('html, body').animate({
        scrollTop: ($(window).height()/num)
    }, 'slow');
	console.log($(window).height()/num);
    return false;
  });
});
$(document).ready(function(){
  $("#nav2").on("click",function(){
     $('html, body').animate({
        scrollTop: ($(window).height()/num) * 2
    }, 'slow');
    return false;
  });
});
$(document).ready(function(){
  $("#nav3").on("click",function(){
     $('html, body').animate({
		scrollTop: ($(window).height()/num) * 3
    }, 'slow');
    return false;
  });
});
$(document).ready(function() {
	if (!($(window).scrollTop() < ($(window).height()/num) * 0.7)) {
		$("#nav1").removeClass('active');
			$("#nav2").removeClass('active');
			$("#nav3").removeClass('active');
	}
	$(window).scroll( function() {
		if ($(window).scrollTop() < ($(window).height()/num) * 0.7) {
			$("#nav1").removeClass('active');
			$("#nav2").removeClass('active');
			$("#nav3").removeClass('active');
		}

		if( $(window).scrollTop() < ($(window).height()/num) + ($(window).height()/num)/2)  {
			$("#nav1").addClass('active');
			$("#nav2").removeClass('active');
			$("#nav3").removeClass('active');
		}
		else if ( $(window).scrollTop() >= ($(window).height()/num) + ($(window).height()/num)/2 && $(window).scrollTop() < ($(window).height()/num) * 2  + ($(window).height()/num)/2) {
			$("#nav2").addClass('active');
			$("#nav1").removeClass('active');
			$("#nav3").removeClass('active');
		}
		else {
			$("#nav3").addClass('active');
			$("#nav1").removeClass('active');
			$("#nav2").removeClass('active');
		}
    });   
});