<%@ page import ="java.sql.*" %>
<%@include file="conn.jsp" %>
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
               <%

    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
		
		response.sendRedirect("login.jsp");
%>
<%} else {
            }
%>

			   
			   

            <title>My Personal Website</title>
			
			 <script type = "text/javascript" language = "javascript">

         $(document).ready(function() {
				 
		 
		 $(".btnUpdate").click(function() {
    				
		id = $(this).attr('id');
		var myproductname = $.trim($("#myproductname").val());
		var myproductcategory = $.trim($("#myproductcategory").val());
		var myproductdesc = $.trim($("#myproductdesc").val());
		var myproductfile =  $.trim($("#myproductfile").val());
		var myproductprice =  $.trim($("#myproductprice").val());
		var myproductlink =  $.trim($("#myproductlink").val());

	alert(myproductname);
	alert(myproductcategory);
	alert(myproductdesc);
	alert(myproductfile);
	alert(myproductprice);
	alert(myproductlink);
	alert(id);
				
			if((myproductname == null || myproductname == "") || (myproductcategory == null || myproductcategory == "") || (myproductdesc == null || myproductdesc == "") || (myproductfile == null || myproductfile == "")|| (myproductprice == null || myproductprice == "")|| (myproductlink == null || myproductlink == "")|| (id == null || id == "")){
		
			alert("Please Fill in All the Fields");
			}
			
			else{
				var data = {
				'getName': myproductname,
				'getCat': myproductcategory,
				'getDesc': myproductdesc,
				'getImage': myproductfile,
				'getPrice': myproductprice,
				'getLink': myproductlink,
				'getID': id,
				
			};
			
			$.ajax({
				type: "POST",
				url: "updateproductconfig.jsp",
				data: data,
				success: function () {
					
				},
				error: function () {
				
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
        <ul class="navbar-nav ml-auto">
		<form action="logoutfunction.jsp" method="post">
			<li class="nav-item">
			
                <input type="submit" class="btn btn-btn-primary" id="logout" value="Logout"  style="height:7vh;">
				
            </li>
		</form>
           

        </ul>
        <!-- Links -->

       
    </div>
    <!-- Collapsible content -->

</nav>
<!--/.Navbar-->
            <main>
			
			  
                <div class="row m-0">
                  <div class="col-md-5 mx-auto" id="cms" style="margin-top:25vh;">
                    <!-- Form contact -->
                      <FORM ENCTYPE="multipart/form-data" ACTION="upload2.jsp" METHOD="POST">

                          <p class="h5 text-center mb-4">Content Manager</p>
	<%
				String Getid = request.getParameter("getproductid");
					
						statement = conn.prepareStatement("SELECT product_id,product_name,product_category,product_description,TRIM(LEADING 'C:fakepath' FROM product_image)as mypath,price,link FROM tbl_products WHERE product_id = '"+ Getid +"'");
						resultSet = statement.executeQuery();

						 while(resultSet.next()) { %>
                          <div class="md-form">
                              <input type="text" name="myproductname" id="myproductname" class="form-control" placeholder="Title" value="<%= resultSet.getString("product_name") %>" required/>
                              
                          </div>

                          <div class="md-form">
                                             
                              <select class="mdb-select" id="myproductcategory" name="myproductcategory" required/>
							  
                                  <option value="" disabled selected>Choose your option</option>
                                  <option value="Graphics">Graphics</option>
                                  <option value="CAD">CAD</option>
                                  <option value="Web">Web</option>
                              </select>
                          </div>

                          <div class="md-form">
                              <textarea type="text" name="myproductdesc" id="myproductdesc" class="md-textarea"  placeholder="Description" style="height: 100px" required/><%= resultSet.getString("product_description") %></textarea>
                          </div>

                          <div class="md-form">
                              <input type="file" name="file" id="myproductfile" class="form-control">
                          </div>
						
						 <div class="md-form">
                              <input type="text" name="myproductprice" id="myproductprice" class="form-control" placeholder="Price" value="<%= resultSet.getString("price") %>" required/>
                              
                          </div>
						  
						  <div class="md-form">
                              <input type="text" name="myproductlink" id="myproductlink" class="form-control" placeholder="Price" value="<%= resultSet.getString("link") %>" required/>
                              
                          </div>
						
                          <div class="text-center">
                              <input type="submit" class="btn btn-unique btnUpdate" value="Update" id="<%= resultSet.getString("product_id") %>" required/>
                          </div>
				<%} %>
                      </form>
                      <!-- Form contact -->
                                  


                  </div>
                  

                  
                </div>

            </main>
    <!--Copyright-->
    <div class="footer-copyright">
        <div class="container-fluid">

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
         });
</script>
 
























