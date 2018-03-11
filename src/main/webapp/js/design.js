         $(document).ready(function() {
              // $(".name").hide();
              // $(".skills").hide();
              /// $("#explore").hide();
              // $("#aboutimage").hide();
              // $("#aboutcontent").hide();
$(".tabone").hide();

$(".tabtwo").hide();

$(".tabthree").hide();

$(".tabfour").hide();

$("#tb1").click(function(){
    $(".tabone").show(2000);
	
	    $(".hide").hide(1000);
});

$("#tb2").click(function(){
    $(".tabtwo").show(1000);
	
	
	    $(".hide").hide(1000);
});


$("#tb3").click(function(){
    $(".tabthree").show(1000);
	
	
	    $(".hide").hide(1000);
});


$("#tb4").click(function(){
    $(".tabfour").show(1000);
	
	    $(".hide").hide(1000);
});

$(".back").click(function(){
    $(".tabfour").hide(1000);
	$(".tabthree").hide(1000);
	$(".tabtwo").hide(1000);
	$(".tabone").hide(1000);
	
	    $(".hide").show(1000);
});

          

              $("#explore").click(function(){
                       $('html, body').animate({scrollTop: $('#aboutsection').offset().top - 20},"slow");

               }); 
			   
			   $("#btnAbout").click(function(){
                       $('html, body').animate({scrollTop: $('#aboutsection').offset().top - 20},"slow");

               }); 

                $("#btnHome").click(function(){
                       $('html, body').animate({scrollTop: $('#intros').offset().top - 20},"slow");

               }); 

               $("#btnContact").click(function(){
                       $('html, body').animate({scrollTop: $('.featured').offset().top - 30},"slow");

               }); 
               $("#btnPortfolio").click(function(){
                       $('html, body').animate({scrollTop: $('#footer').offset().top - 56},"slow");
               }); 

               $('.carousel').carousel({
                 interval: 2000
               })
			

            });