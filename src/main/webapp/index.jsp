<%@ page import ="java.sql.*" %>
<%@include file="cms/conn.jsp" %>
    <!doctype html>
    <html lang="en">
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <script type="text/javascript" src="a.min"></script>
             <link rel="stylesheet" href="css/style.css">   
             <link rel="stylesheet" href="css/font-awesome.css">
			  <link rel="stylesheet" href="css/mdb.css">
             <link rel="stylesheet" href="css/bootstrap.min.css">
             <link rel = "stylesheet"  href = "css/jquery-ui.css" type="text/css"/>
             <script src="js/bootstrap.min.js"></script>
			 <script src="js/mdb.min.js"></script>
			 <script src = "js/popper.min.js"></script>
            <title>My Personal Website</title>

			
<script src="js/jquery-3.2.1.min.js"></script>
<script src = "js/jquery-ui.min.js"></script>
<script src = "js/design.js"></script>
<script src = "js/mdb.js"></script>

			
						
			 <script type = "text/javascript" language = "javascript">

         $(document).ready(function() {
			
  $("#btnMes").click(function() {
				  
    var myname = $.trim($("#mesname").val());
	var myemail =  $.trim($("#mesemail").val());
	var mysubject =  $.trim($("#messubject").val());
	var mymessage =  $("#message").val();
	
	
	
				
			if((myname == null || myname == "") || (myemail == null || myemail == "") || (mysubject == null || mysubject == "") || (mymessage == null || mymessage == "")){
		
			alert("Please Fill in All the Fields");
			}
			else{
	
				
						var data = {
				'myname': myname,
				'myemail': myemail,
				'mysubject': mysubject,
				'mymessage': mymessage,
				
			};
			
			$.ajax({
				type: "POST",
				url: "insert2.jsp",
				data: data,
				success: function () {
					alert("Inquiry Send Successfully");
					  
				},	
				error: function () {
				alert("Error occured while sending inquiry");
				
				}
			})
			
			}
				
				
		 });
		 
		
});
      </script>

        </head>
        <body>
		
		
		
		
<!--Navbar-->
<nav class="navbar navbar-expand-lg fixed-top cyan accent-4">

    <!-- Navbar brand -->
    <img src="images/logo1.png" style = "height:30px">

    <!-- Collapse button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
        aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"><i class="fa fa-bars white-text"></i></span></button>

    <!-- Collapsible content -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <!-- Links -->
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link white-text" id = "btnHome">Home </a>
            </li>
            <li class="nav-item">
                <a class="nav-link white-text" id = "btnAbout">About me</a>
            </li>
            <li class="nav-item">
                <a class="nav-link white-text" id = "btnContact">My Works</a>
            </li>
			<li class="nav-item">
                <a class="nav-link white-text" id = "btnPortfolio">Contact Me</a>
            </li>

           

        </ul>
        <!-- Links -->

       
    </div>
    <!-- Collapsible content -->

</nav>
<!--/.Navbar-->
			<div class = "col-md-12 coloring" id ="intros" >
			<div class = "row">
			
			<div class = "col-md-1">
			
			</div>
			<div class = "col-md-6">
			
				<div class = "row">
					<div class = "col-md-12">
						 <div class="name">
						 	<div class="row">
					 <img src="images/logo1.png" class="mx-auto animated rotateIn" style = "height:80px">
				</div>
                            <h1 class = "text-center namess animated zoomInUp mt-3"> Monica Mae Cano </h1>
							<h1 class = "text-center animated zoomInDown names">Designer . Developer</h1>
							 <div id="explore">
                            <p class = "text-center" id = "btnAbouts" ><i class="fa fa-angle-down" aria-hidden="true"></i></p>
                        </div>
                        </div>
					</div>
				</div>
			</div>
			<div class = "col-md-5">
			<img src="images/nica.png" class="img-fluid animated bounceInUp" alt="Responsive image" >
			
			</div>
			</div>
			</div>
			
			
                    <div id="aboutsection">
           
                    		<div class="row m-0">
							
							<div class=" col-6  col-md-3 m-0 p-0 " >
								
								<img src="images/leftv1.png" class="gitna img-fluid wow fadeInLeft pull-right p-0 mt-5" alt="Responsive image" >
								
								
		                        </div>
		                        <div class="col-6 col-md-3 m-0 p-0 " >
								
								<img src="images/right.png" class="img-fluid wow fadeInRight pull-left p-0 mt-5" alt="Responsive image" >
								
								
		                        </div>
							
		                        <div class="col-md-5 wow fadeInRight abouting">
		                        	<h1 class="sectiontitle aboutone text-center" id="abouttitle">About Me</h1>
									<div class= "row">
									<div class ="hide col-md-12">
									<h1 id = "tb1" class = "link link--kukuri abouttwo  mt-5" data-letters="Personal Info">Personal Info</h1><br><br>
									<h1 id = "tb2" class = "link link--kukuri aboutthree" data-letters="Likes">Likes</h1><br><br>
									<h1 id = "tb3" class = "link link--kukuri aboutfour" data-letters="Look what I can do">Look what I can do</h1><br><br>
									<h1 id = "tb4" class = "link link--kukuri aboutfive mb-5" data-letters="My Resume">My Resume</h1>
				                    </div>  
									</div>
									
									<div class = "tabone">
									
									<a class="back pull-right btn-floating btn-lg red lighten-1 white-text">X</a>
									<%
					
						statement = conn.prepareStatement("SELECT content_id,title,section,content,TRIM(LEADING 'C:fakepath' FROM image)as mypath FROM tbl_content WHERE section='Personal Info'  Limit 1");
						resultSet = statement.executeQuery();

						 while(resultSet.next()) { %>
											<img src="cms/images/<%= resultSet.getString("mypath") %>" style="width:250px;float:right;" >
											<h3 class="mt-3"><%= resultSet.getString("title") %></h3><br>	
											<p><%= resultSet.getString("content") %></p>
										
									<%} %>
									</div>
									
									<div class = "tabtwo">
									<a class="back pull-right btn-floating btn-lg red lighten-1 white-text">X</a>
									<%

						statement = conn.prepareStatement("SELECT content_id,title,section,content,TRIM(LEADING 'C:fakepath' FROM image)as mypath FROM tbl_content WHERE section='Likes'  Limit 1");
						resultSet = statement.executeQuery();

						 while(resultSet.next()) { %>
											<img src="cms/images/<%= resultSet.getString("mypath") %>" style="width:250px;float:right;" >
											<h3 class="mt-3"><%= resultSet.getString("title") %></h3><br>	
											<p><%= resultSet.getString("content") %></p>
										
									<%} %>
									</div>
									
									<div class = "tabthree">
									<a class="back pull-right btn-floating btn-lg red lighten-1 white-text">X</a>
									<%		
						statement = conn.prepareStatement("SELECT content_id,title,section,content,TRIM(LEADING 'C:fakepath' FROM image)as mypath FROM tbl_content WHERE section='Look what I can do'  Limit 1");
						resultSet = statement.executeQuery();

						 while(resultSet.next()) { %>
											<img src="cms/images/<%= resultSet.getString("mypath") %>" style="width:250px;float:right;" >
											<h3 class="mt-3"><%= resultSet.getString("title") %></h3><br>	
											<p><%= resultSet.getString("content") %></p>
										
									<%} %>
									</div>
									
									<div class = "tabfour">
									<a class=" back pull-right btn-floating btn-lg red lighten-1 white-text">X</a>
												<%
					
						statement = conn.prepareStatement("SELECT content_id,title,section,content,TRIM(LEADING 'C:fakepath' FROM image)as mypath FROM tbl_content WHERE section='Resume'  Limit 1");
						resultSet = statement.executeQuery();

						 while(resultSet.next()) { %>
											<img src="cms/images/<%= resultSet.getString("mypath") %>" style="width:250px;float:right;" >
											<h3 class="mt-3"><%= resultSet.getString("title") %></h3><br>	
											<p><%= resultSet.getString("content") %></p>
										
									<%} %>
									</div>
		                    	</div>
                        	</div>
                        </div>
                      
     
                 
            <div class="wow flipInX featured cyan accent-3">
                        <p id="featuredtitle" class="sectiontitle">FEATURED WORKS</p>
                                   <div id = "accordion">
		
         <h3>Graphics/Photography</h3>
			
         <div class = "transparent">
            <p>
               Photography is the science, art, application and practice of creating durable images by recording light or other electromagnetic radiation, either electronically by means of an image sensor, or chemically by means of a light-sensitive material such as photographic film.
            </p>


                           <div class="col-md-12" style="margin-top: 3%;">
                                      <div class="row">
							    <%
					
						statement = conn.prepareStatement("SELECT product_id,product_name,product_category,product_description,TRIM(LEADING 'C:fakepath' FROM product_image)as mypath,price,link FROM tbl_products WHERE product_category ='Graphics'");
						resultSet = statement.executeQuery();

						 while(resultSet.next()) { %>
                                        <div class="col-md-3">
                                                   <!--Card-->
                                                <div class="card">

                                                    <!--Card image-->
                                                    <div class="view overlay hm-white-slight">
                                                        <img src="cms/images/<%= resultSet.getString("mypath") %>" class="img-fluid" alt="">
                                                        <a href="#">
                                                            <div class="mask"></div>
                                                        </a>
                                                    </div>

                                                    <!--Card content-->
                                                    <div class="card-body">
                                                        <!--Title-->
                                                        <h4 class="card-title"><%= resultSet.getString("product_name") %></h4>
                                                        <!--Text-->
                                                        <p class="card-text"><%= resultSet.getString("product_description") %></p>
														<h5 class="card-title">PHP <%= resultSet.getString("price") %>.00</h5>
														<input type="button" class="btn btn-unique btnBuy mx-auto w-100" data-toggle="modal" data-target="#exampleModal" value="Buy" id="<%= resultSet.getString("product_id") %>">
                                                    </div>

                                                </div>
                                                <!--/.Card-->   

                                        </div>
                                         <%} %>
                                  

                                </div>
                            </div>

         </div>
			
         <h3>Websites</h3>
			
         <div>
            <p>
               Web development broadly refers to the tasks associated with developing websites for hosting via intranet or internet. The web development process includes web design, web content development, client-side/server-side scripting and network security configuration, among other tasks.
            </p>


                           <div class="col-md-12">
                                      <div class="row">
							    <%
					
						statement = conn.prepareStatement("SELECT product_id,product_name,product_category,product_description,TRIM(LEADING 'C:fakepath' FROM product_image)as mypath,price,link FROM tbl_products WHERE product_category ='Web'");
						resultSet = statement.executeQuery();

						 while(resultSet.next()) { %>
                                        <div class="col-md-3">
                                                   <!--Card-->
                                                <div class="card">

                                                    <!--Card image-->
                                                    <div class="view overlay hm-white-slight">
                                                        <img src="cms/images/<%= resultSet.getString("mypath") %>" class="img-fluid" alt="">
                                                        <a href="#">
                                                            <div class="mask"></div>
                                                        </a>
                                                    </div>

                                                    <!--Card content-->
                                                    <div class="card-body">
                                                        <!--Title-->
                                                        <h4 class="card-title"><%= resultSet.getString("product_name") %></h4>
                                                        <!--Text-->
                                                        <p class="card-text"><%= resultSet.getString("product_description") %></p>
														<h5 class="card-title">PHP <%= resultSet.getString("price") %>.00</h5>
														<input type="button" class="btn btn-unique btnBuy mx-auto w-100" data-toggle="modal" data-target="#exampleModal" value="Buy" id="<%= resultSet.getString("product_id") %>">
                                                    </div>

                                                </div>
                                                <!--/.Card-->   

                                        </div>
                                         <%} %>
                                        </div>

                                </div>
                            

         </div>
			
           <h3>CAD Works</h3>
			
         <div>
            <p>
               CAD (Computer Aided Design) is the use of computer software to design and document a product's design process.

Engineering drawing entails the use of graphical symbols such as points, lines, curves, planes and shapes.  Essentially, it gives detailed description about any component in a graphical form.
            </p>
				
                           <div class="col-md-12" style="margin-top: 3%;">
                               <div class="row">
							    <%
					
						statement = conn.prepareStatement("SELECT product_id,product_name,product_category,product_description,TRIM(LEADING 'C:fakepath' FROM product_image)as mypath,price,link FROM tbl_products WHERE product_category ='CAD'");
						resultSet = statement.executeQuery();

						 while(resultSet.next()) { %>
                                        <div class="col-md-3">
                                                   <!--Card-->
                                                <div class="card">

                                                    <!--Card image-->
                                                    <div class="view overlay hm-white-slight">
                                                        <img src="cms/images/<%= resultSet.getString("mypath") %>" class="img-fluid" alt="">
                                                        <a href="#">
                                                            <div class="mask"></div>
                                                        </a>
                                                    </div>

                                                    <!--Card content-->
                                                    <div class="card-body">
                                                        <!--Title-->
                                                        <h4 class="card-title"><%= resultSet.getString("product_name") %></h4>
                                                        <!--Text-->
                                                        <p class="card-text"><%= resultSet.getString("product_description") %></p>
														<h5 class="card-title">PHP <%= resultSet.getString("price") %>.00</h5>
														<input type="button	" class="btn btn-unique btnBuy mx-auto w-100" data-toggle="modal" data-target="#exampleModal" value="Buy" id="<%= resultSet.getString("product_id") %>">
                                                    </div>

                                                </div>
                                                <!--/.Card-->   

                                        </div>
                                         <%} %>

                                </div>
                            </div>
         </div>
		 </div>


                            
                 </div>
				 
			<div id="productdetailssection">
           
                    	<div class="row m-0">
						</div>
			</div>
           
            </main>
			
<!--Footer-->
<footer id ="footer" class="page-footer center-on-small-only cyan accent-4">

    <!--Footer Links-->
  
        <div class="row col-md-11 mx-auto">

            <!--First column-->
            <div class="col-md-2">
              
                <h4 class="title mb-4 mt-3 font-bold">I'm Social </h4><br>

		            				<p><i class="fa fa-google-plus-official" aria-hidden="true"></i> monicamae@gmail.com</p>
		            				<p><i class="fa fa-twitter-square" aria-hidden="true"></i> @monicacano</p>
		            				<p><i class="fa fa-instagram" aria-hidden="true"></i> @maecano</p>
		            				<p><i class="fa fa-facebook-square" aria-hidden="true"></i> @monicamae</p>

            </div>
            <!--/.First column-->

            <hr class="clearfix w-100 d-md-none">

            <!--Second column-->
            <div class="col-md-2">
              
                <h4 class="title mb-4 mt-3 font-bold">Menu </h4><br>

		            				<p>Home</p>
		            				<p>About me</p>
		            				<p>Contact me</p>
		            				<p>My Work</p>

            </div>
            <!--/.Second column-->

            <hr class="clearfix w-100 d-md-none">

            <!--Third column-->
            <div class="col-md-8 mx-auto">
               	<div class="col-md-12">
			            				<div class="row container-fluid">
										    <h4>SEND ME A MESSAGE</h4>
										    <p>Want to know more? Send me a message. feel free to ask about your inquiries</p>

						                    <div class="form-group col-md-6">
											<form action="insert2.jsp" method="post">
				                <input type="text" name="myname" id="mesname" class="form-control"  placeholder="Name" required/>
								
				            </div>
				            <div class="form-group col-md-6">
				                <input type="email" name="myemail" id="mesemail" class="form-control"  placeholder="Email" required/>
				            </div>
				            <div class="form-group col-md-12">
				                <input type="text" name="mymessage" id="messubject" class="form-control" placeholder="Subject" required/>
				            </div>
				            <div class="form-group col-md-12">
				                <textarea name="mymessage" id="message" class="form-control" rows="8" placeholder="Your Message Here" required/></textarea>
				            </div>                        
				            <div class="form-group col-md-12">
				                <a id="btnMes" name="submit" class="btn btn-primary pull-right">Submit</a>
				            </div>
							</form>
									</div>
								</div>
            </div>
            <!--/.Third column-->

            <hr class="clearfix w-100 d-md-none">
        </div>
    
  

    <hr>

    <!--/.Social buttons-->

    <!--Copyright-->
    <div class="footer-copyright">
        <div class="container-fluid">
            © 2018 Copyright: Monica Mae Cano 

        </div>
    </div>
    <!--/.Copyright-->

</footer>
<!--/.Footer-->
                
        </body>
    </html>


 <script>
         $(function() {
            $( "#accordion" ).accordion();
			
			new WOW().init();
         });
</script>


