<%@ page import ="java.sql.*" %>
<% 

		String prod_name = request.getParameter("getProdName");    
		String prod_price = request.getParameter("getProdPrice");    
		String prod_desc = request.getParameter("getProdDesc");
		String prod_id = request.getParameter("getProdId"); 
		String prod_image = request.getParameter("getProdImage"); 
		
		
%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1">
			<meta charset="utf-8"> 
            <link rel="stylesheet" href="cms/css/cms.css">
            <script type="text/javascript" src="a.min"></script>
             <link rel="stylesheet" href="css/style.css">   
             <link rel="stylesheet" href="css/font-awesome.css">
			  <link rel="stylesheet" href="css/mdb.css">
             <link rel="stylesheet" href="css/bootstrap.min.css">
             <link rel = "stylesheet"  href = "css/jquery-ui.css" type="text/css"/>
             

            <script src="js/jquery-3.2.1.min.js"></script>
            <script src = "js/jquery-ui.min.js"></script>
            <script src = "js/design.js"></script>
             <script src="js/bootstrap.min.js"></script>
        			 <script src="js/mdb.min.js"></script>
        			 <script src = "js/popper.min.js"></script>
               
			   
			   

            <title>My Personal Website</title>
			
			
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
                <a class="nav-link white-text"> </a>
            </li>
         
           

        </ul>
        <!-- Links -->

       
    </div>
    <!-- Collapsible content -->

</nav>
<!--/.Navbar-->
            <main>
			<div class="row m-0">
				<div class="col-md-6 mx-auto">
				<section class="form-elegant" id="productForm">

					
					<div class="card">

						<div class="card-body mx-6">

						
							<div class="text-center">
								<h3 class="dark-grey-text mb-5"><strong>Sign in</strong></h3>
							</div>

							<form method="post" action="insertcheckout.jsp">
								<div class="row m-0">
									<div class="col-md-6">
										<input type="text" name="getFname" id="fname" placeholder="Firstname" class="form-control">
									</div>
									<div class="col-md-6">
										<input type="text" name="getMname" id="mname" placeholder="Middlename" class="form-control">
									</div>
								</div>
								<div class="row m-0 mt-2">
									<div class="col-md-12">
										<input type="text" name="getLname" id="lname" placeholder="Lastname" class="form-control">
									</div>
								</div>
								<div class="row m-0 mt-2">
									<div class="col-md-6">
										<input type="number" name="getContact" id="contact_no" placeholder="Contact No" class="form-control">
									</div>
									<div class="col-md-6">
										<input type="text" name="getEmail" id="email_address" placeholder="Email" class="form-control">
									</div>
								</div>
									<div class="row m-0 mt-2">
									<div class="col-md-12">
										<input type="text" name="getAddress" id="address" placeholder="Address" class="form-control">
									</div>
								</div>
									<div class="row m-0 mt-2">
									<div class="col-md-12">
										<input type="text" name="getStreet" id="street" placeholder="Street" class="form-control">
									</div>
								</div>
								<div class="row m-0 mt-2">
									<div class="col-md-6">
									  <select class="mdb-select" id="city" name="getCity" style="width:100%; padding:5px; margin-top:1%;margin-bottom:1%;" required/>
										  <option value="" disabled selected>City</option>
										  <option value="Caloocan City">Caloocan City</option>
										  <option value="Quezon City">Quezon City</option>
										  <option value="Valenzuela City">Valenzuela City</option>
										</select>
									 </div>
									 <div class="col-md-6">
										<input type="text" name="getZip" id="zip_code" placeholder="Zip Code" class="form-control">
									</div>
								 </div>
								 <div class="row m-0 mt-2">
									<div class="col-md-6">
									  <select class="mdb-select" id="state" name="getState" style="width:100%; padding:5px; margin-top:1%;margin-bottom:1%;" required/>
										  <option value="" disabled selected>State</option>
										  <option value="Metro Manila">Metro Manila</option>
										</select>
									 </div>
									 <div class="col-md-6">
										<input type="text" name="getCountry" id="country_code" placeholder="Country Code"  value="PH" class="form-control" disabled>
									</div>
									<input type="hidden" name="getProdName" value="<%= prod_name %>" id="product_name">
									<input type="hidden" name="getProdCode" value="<%= prod_id %>" id="product_code">
									<input type="hidden" name="getProdPrice" value="<%= prod_price %>" id="product_price">
									<input type="hidden" name="getProdDesc" value="<%= prod_desc %>" id="product_desc">
								 </div>
							<div class="text-center mb-3 mt-4">
								<input type="submit" id="btnCheckout" class="btn btn-primary btn-block btn-rounded z-depth-1a" value="Checkout">
							</div>
							</form>
							
						
						</div>

					</div>

				</section>
            </div>
			
					<div class="col-md-5 mx-auto" id="productDetails">
							<div class="card mt-6">
								<div class="card-body ">
									<img src="cms/images/<%= prod_image %>" alt="placeholder" class="img-thumbnail img-fluid">
									<h3><%= prod_name %></h3>
									<h6><%= prod_price %></h3>
									<p><%= prod_desc %></p>
								</div>
							</div>
					</div>
				
            
			</div>
			
            </main>
                
        </body>
    </html>




















