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
	 var mytitle = $.trim($("#mytitle").val());
	var mysection =  $.trim($("#mysection").val());
	var mycontent =  $.trim($("#mycontent").val());
	var myfile =  $("#myfile").val();
	

				
			if((mytitle == null || mytitle == "") || (mysection == null || mysection == "") || (mycontent == null || mycontent == "") || (myfile == null || myfile == "")){
		
			alert("Please Fill in All the Fields");
			}
			else{
						var data = {
				'title': mytitle,
				'section': mysection,
				'content': mycontent,
				'file': myfile,
				'id': id,
				
			};
			
			$.ajax({
				type: "POST",
				url: "updateconfig.jsp",
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
				String Getid = request.getParameter("getid");
					
						Connection conn3 = null;
						String url3 = "jdbc:mysql://localhost:3306/";
						String dbName3 = "personal_db";
						String driver3 = "com.mysql.jdbc.Driver";
						String userName3 = "root";
						String password3 = "";
						
						PreparedStatement statement3 = null;
						ResultSet resultSet3 = null;
						
						Class.forName(driver3).newInstance();
						conn3 = DriverManager.getConnection(url3 + dbName3, userName3, password3);
					
						statement3 = conn3.prepareStatement("SELECT content_id,title,section,content,TRIM(LEADING 'C:fakepath' FROM image)as mypath FROM tbl_content WHERE content_id = '"+ Getid +"'");
						resultSet3 = statement3.executeQuery();

						 while(resultSet3.next()) { %>
                          <div class="md-form">
                              <input type="text" name="mytitle" id="mytitle" class="form-control" placeholder="Title" value="<%= resultSet3.getString("title") %>">
                              
                          </div>

                          <div class="md-form">
                                             
                              <select class="mdb-select" id="mysection" name="mysection" value="RED">
							  
                                  <option value="" disabled selected>Choose your option</option>
                                  <option value="Personal Info">Personal Info</option>
                                  <option value="Likes">Likes</option>
                                  <option value="Look What I can do">Look What I can do</option>
                                  <option value="Resume">Resume</option>
                                  <option value="Graphics">Graphics</option>
                                  <option value="CAD">CAD</option>
                                  <option value="Web">Web</option>
                              </select>
                          </div>

                          <div class="md-form">
                              <textarea type="text" name="mycontent" id="mycontent" class="md-textarea"  placeholder="Content" style="height: 100px" ><%= resultSet3.getString("content") %></textarea>
                          </div>

                          <div class="md-form">
                              <input type="file" name="file" id="myfile" class="form-control">
                          </div>

                          <div class="text-center">
                              <input type="submit" class="btn btn-unique btnUpdate" value="Update" id="<%= resultSet3.getString("content_id") %>">
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
<script type = "text/javascript" language = "javascript">

$(document).ready(function() {

	 $('.btnDelete').click(function() {
		 id = $(this).attr('id');
	
	
	alert(id);
				
				
						
			if((id == null || id == "")){
		
			alert("Please Select Item to Delete");
			}
			else{
		
			$.ajax({
				type: "POST",
				url: "delete.jsp",
				data: {getid:id},
				success: function () {
					alert("Item Successfully Removed");
				},
				error: function () {
					
				alert("Error while removing file");
				
				}
			})
			}
				
		 });
		 
				
	
		
});
      </script>

 <script>
         $(function() {
            $( "#accordion" ).accordion();
         });
</script>
 
























