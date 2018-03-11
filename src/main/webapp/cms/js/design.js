         $(document).ready(function() {
               $(".name").hide();
               $(".skills").hide();
               $("#explore").hide();
               $("#aboutimage").hide();
               $("#aboutcontent").hide();


               $("#aboutimage").show( "clip", {direction: "horizontal"}, 1000 );
               $(".name").show( "drop", {direction: "down"}, 1000 );
               $(".skills").show( "drop", {direction: "down"}, 1000 );
               $("#explore").show( "drop", {direction: "down"}, 1000 );
               $("#aboutcontent").show( "fold", {horizFirst: true}, 2250 );

               $("#btnAbout").click(function(){
                       $('html, body').animate({scrollTop: $('#aboutsection').offset().top - 150},"slow");

               }); 

                $("#btnHome").click(function(){
                       $('html, body').animate({scrollTop: $('#intro').offset().top - 120},"slow");

               }); 

               $("#btnContact").click(function(){
                       $('html, body').animate({scrollTop: $('.semifooter').offset().top - 30},"slow");

               }); 
               $("#btnPortfolio").click(function(){
                       $('html, body').animate({scrollTop: $('.featured').offset().top - 56},"slow");
               }); 

               $('.carousel').carousel({
                 interval: 2000
               })


            });