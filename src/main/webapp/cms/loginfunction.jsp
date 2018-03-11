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
				<div class="col-md-4 mx-auto">
				<section class="form-elegant" id="loginform">

					
					<div class="card">

						<div class="card-body mx-4">

												          
							<div class="text-center">
								<h3 class="dark-grey-text mb-5"><strong>Sign in</strong></h3>
							</div>
								 <p style="text-align:center;"> <%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/personal_db",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from tbl_accounts where username='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logoutfunction.jsp'>Log out</a>");
		
        response.sendRedirect("index.jsp");
		
    } else {
        out.println("Incorrect Username or Password");
    }
	%></p>
							<form method="post" action="loginfunction.jsp">
							<div class="md-form">
							<label for="Form-email1">Your email</label>
								<input type="text" name="uname" class="form-control">
								
							</div>

							<div class="md-form pb-3">
							<label for="Form-pass1">Your password</label>
								<input type="password" name="pass" class="form-control">
								
							</div>
							<div class="text-center mb-3 mt-2">
								<input type="submit" class="btn btn-primary btn-block btn-rounded z-depth-1a" value="Sign In">
							</div>
							</form>
							
						
						</div>

					</div>

				</section>
            </div>
			</div>
            

            </main>
                
        </body>
    </html>
























