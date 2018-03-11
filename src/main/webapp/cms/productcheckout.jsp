<%@ page import ="java.sql.*" %>

    <!DOCTYPE html>
    <html>
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1">
			<meta charset="utf-8"> 
            <link rel="stylesheet" href="css/cms.css">
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

							<form method="post" action="loginfunction.jsp">
								<div class="row m-0">
									<div class="col-md-6">
										<input type="text" name="uname" placeholder="Firstname" class="form-control">
									</div>
									<div class="col-md-6">
										<input type="text" name="uname" placeholder="Middlename" class="form-control">
									</div>
								</div>
								<div class="row m-0 mt-2">
									<div class="col-md-12">
										<input type="text" name="uname" placeholder="Lastname" class="form-control">
									</div>
								</div>
								<div class="row m-0 mt-2">
									<div class="col-md-6">
										<input type="text" name="uname" placeholder="Contact No" class="form-control">
									</div>
									<div class="col-md-6">
										<input type="text" name="uname" placeholder="Email" class="form-control">
									</div>
								</div>
									<div class="row m-0 mt-2">
									<div class="col-md-12">
										<input type="text" name="uname" placeholder="Address" class="form-control">
									</div>
								</div>
									<div class="row m-0 mt-2">
									<div class="col-md-12">
										<input type="text" name="uname" placeholder="Street" class="form-control">
									</div>
								</div>
								<div class="row m-0 mt-2">
									<div class="col-md-6">
									  <select class="mdb-select" id="myproductcategory" name="myproductcategory" style="width:100%; padding:5px; margin-top:1%;margin-bottom:1%;" required/>
										  <option value="" disabled selected>City</option>
										  <option value="Graphics">Caloocan City</option>
										  <option value="CAD">Quezon City</option>
										  <option value="Web">Valenzuela City</option>
										</select>
									 </div>
									 <div class="col-md-6">
										<input type="text" name="uname" placeholder="Zip Code" class="form-control">
									</div>
								 </div>
								 <div class="row m-0 mt-2">
									<div class="col-md-6">
									  <select class="mdb-select" id="myproductcategory" name="myproductcategory" style="width:100%; padding:5px; margin-top:1%;margin-bottom:1%;" required/>
										  <option value="" disabled selected>State</option>
										  <option value="Graphics">Metro Manila</option>
										</select>
									 </div>
									 <div class="col-md-6">
										<input type="text" name="uname" placeholder="Country Code" class="form-control">
									</div>
								 </div>
							<div class="text-center mb-3 mt-4">
								<input type="submit" class="btn btn-primary btn-block btn-rounded z-depth-1a" value="Sign In">
							</div>
							</form>
							
						
						</div>

					</div>

				</section>
            </div>
			
					<div class="col-md-5 mx-auto" id="productDetails">
							<div class="card mt-6">
								<div class="card-body ">
									<img src="images/sample.jpg" alt="placeholder" class="img-thumbnail img-fluid">
									<h3>PhotoShoot Package 1</h3>
									<h6>PHP 1500.00</h3>
									<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
								</div>
							</div>
					</div>
				
            
			</div>
            </main>
                
        </body>
    </html>
























