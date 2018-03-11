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
				 

//$('.mainbuttons').hide();
$('#cms').hide(); 
$('#listinquiries').hide();
$('#listcontent').hide();
//$('#Back').hide();
$('.mainbuttons').hide();

		$('#work').click(function(){
			$('.mainbuttons').hide();
			$('#cms').slideToggle();
			$('#listcontent').slideToggle();
			$('#Back').slideToggle();
			
		});
		
		$('#inquire').click(function(){
			$('.mainbuttons').hide();
			$('#listinquiries').slideToggle();
			$('#Back').slideToggle();
			
		});
		
		$('#btnBack').click(function(){
			$('.mainbuttons').slideToggle();
			$('#cms').hide();
			$('#listcontent').hide();
			$('#listinquiries').hide();
			$('#Back').hide();
			
		});
				
		      $("#clickme").click(function() {
				  
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
				
			};
			
			$.ajax({
				type: "POST",
				url: "insert.jsp",
				data: data,
				success: function () {
					alert("Data Inserted Successfully");
					  
				},	
				error: function () {
				alert("Error occured when Inserting");
				
				}
			})
			
			}
				
				
		 });
		 
		 
		 $("#btnAddProduct").click(function() {
				  
				  
				  
			var myproductname = $.trim($("#myproductname").val());
			var myproductcategory = $.trim($("#myproductcategory").val());
			var myproductdesc = $.trim($("#myproductdesc").val());
			var myproductfile =  $.trim($("#myproductfile").val());
			var myproductprice =  $.trim($("#myproductprice").val());
			var myproductlink =  $.trim($("#myproductlink").val());
	

						
			
				
				
			if((myproductname == null || myproductname == "") || (myproductcategory == null || myproductcategory == "") || (myproductdesc == null || myproductdesc == "") || (myproductfile == null || myproductfile == "")|| (myproductprice == null || myproductprice == "")|| (myproductlink == null || myproductlink == "")){
		
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
				
			};
			
			$.ajax({
				type: "POST",
				url: "insertproduct.jsp",
				data: data,
				success: function () {
					alert("Product Inserted Successfully");
					  
				},	
				error: function () {
				alert("Error occured when Inserting");
				
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
				<!--MAIN BUTTONS SECTION-->
                <div class="row m-0" id="buttons">
                  <div class="col-md-7 mx-auto">
                    <div class="row m-0">
                        <div class="col-md-6">
                            <img src="images/work.png" class="img-fluid mainbuttons" id="work" alt="CMS">

                        </div>
                        <div class="col-md-6">
                          <img src="images/inquire.png" class="img-fluid mainbuttons" id="inquire" alt="INQUIRIES">
                        </div>
                      </div>
                </div>
                </div>
				
              <div class="row m-0" id="Back">
					  <div class="col-md-2 ml-auto">
							<input type="submit" class="btn btn-unique" value="Back" id="btnBack">
					  </div>
			  </div>
			  <!--CMS SECTION-->
                <div class="row m-0">
                  <div class="col-md-5 mx-auto" id="cms">
                    <!-- Form contact -->
                      <FORM ENCTYPE="multipart/form-data" ACTION="upload.jsp" METHOD="POST">

                          <p class="h5 text-center mb-4">Content Manager</p>

                          <div class="md-form">
                              <input type="text" name="mytitle" id="mytitle" class="form-control" placeholder="Title" required/>
                              
                          </div>

                          <div class="md-form">
                                             
                              <select class="mdb-select" id="mysection" name="mysection" required/>
                                  <option value="" disabled selected>Choose your option</option>
                                  <option value="Personal Info">Personal Info</option>
                                  <option value="Likes">Likes</option>
                                  <option value="Look What I can do">Look What I can do</option>
                                  <option value="Resume">Resume</option>
                              </select>
                          </div>
								
                          <div class="md-form">
                              <textarea type="text" name="mycontent" id="mycontent" class="md-textarea"  placeholder="Content" style="height: 100px" required/></textarea>
                          </div>

                          <div class="md-form">
                              <input type="file" name="file" id="myfile" class="form-control">
                          </div>
						
                          <div class="text-center">
                              <input type="submit" class="btn btn-unique" value="Send File" id="clickme">
                          </div>

                      </form>
                      <!-- Form contact -->
                                  


                  </div>
                  <div class="col-md-7 mx-auto" id="listcontent">
						<p class="h5 text-center mb-4">Contents</p>
                    <table class="table-striped table-responsive" id="tbl_content">
                          <thead>
                            <tr>
                              <th>Title</th>
                              <th>Section</th>
                              <th>Content</th>
                              <th>Image</th>
                              <th>Action</th>
							  <th></th>
                              
                            </tr>
                          </thead>
                          <tbody>
				<%					
						statement = conn.prepareStatement("SELECT content_id,title,section,content,TRIM(LEADING 'C:fakepath' FROM image)as mypath FROM tbl_content");
						resultSet = statement.executeQuery();

						 while(resultSet.next()) { %>
						
						<tr>
							<td> <%= resultSet.getString("title") %></td>
							<td> <%= resultSet.getString("section") %></td>
							<td> <%= resultSet.getString("content") %></td>
							
							<td><img src="images/<%= resultSet.getString("mypath") %>" width="150px"> </td>
							<td><input type="submit" value="Delete"  class="btn btn-default btnDelete" id="<%= resultSet.getString("content_id") %>" required/></td>	
							<td>
							<form name="form1" action="update2.jsp" method="post">
								<input type="hidden" id="getid" name="getid" value="<%=resultSet.getString("content_id")%>" />
								<input type="submit" class="btn btn-default btnUpdate" name="edit" value="Update" />
							</form>
							</td>
							
						
						</tr>
	
						<%} %>
                          </tbody>
                        </table>
                                    
              
                    
                  </div>
                  
                </div>
				<!--CMS SECTION END-->
				
				
				
				
				
				<!--INQUIRIES SECTION-->
                <div class="row m-0" >

                   <div class="col-md-12 mx-auto" id="listinquiries">

                    <table class="table-striped table-responsive">
                          <thead>
                          <tr>
                              <th>Name</th>
                              <th>Email</th>
                              <th>Subject</th>
                              <th>Message</th>
                              <th>Date</th>
                              
                            </tr>
                          </thead>
                          <tbody>
						  				  <%
					
						statement = conn.prepareStatement("SELECT * FROM tbl_inquire");
						resultSet = statement.executeQuery();

						 while(resultSet.next()) { %>
                            <tr>
                              <td> <%= resultSet.getString("name") %></td>
                              <td> <%= resultSet.getString("email") %></td>
                              <td> <%= resultSet.getString("subject") %></td>
                              <td> <%= resultSet.getString("message") %></td>
							  <td> <%= resultSet.getString("date_inquire") %></td>
                            </tr>
							<%} %>
                          </tbody>
                        </table>
                                    
              
                    
                  </div>

                  
                </div>
				<!--INQUIRIES SECTION END-->
				
				
				
				<!--PRODUCT SECTION-->
				 <div class="row m-0">
                  <div class="col-md-5 mx-auto" id="products">
                    
                      <FORM ENCTYPE="multipart/form-data" ACTION="upload.jsp" METHOD="POST">

                          <p class="h5 text-center mb-4">Products</p>

                          <div class="md-form">
                              <input type="text" name="myproductname" id="myproductname" class="form-control" placeholder="Product Name" required/>
                              
                          </div>

                          <div class="md-form">
                                             
                              <select class="mdb-select" id="myproductcategory" name="myproductcategory" style="width:100%; padding:5px; margin-top:1%;margin-bottom:1%;" required/>
                                  <option value="" disabled selected>Choose your option</option>
                                  <option value="Graphics">Graphics</option>
                                  <option value="CAD">CAD</option>
                                  <option value="Web">Web</option>
                              </select>
                          </div>

                          <div class="md-form">
                              <textarea type="text" name="myproductdesc" id="myproductdesc" class="md-textarea"  placeholder="Content" style="height: 100px;width:100%;" required/></textarea>
                          </div>

                          <div class="md-form">
                              <input type="file" name="file" id="myproductfile" class="form-control" required/>
                          </div>
  
						<div class="md-form">
                              <input type="number" name="myproductprice" id="myproductprice" class="form-control"  placeholder="Price" style="margin-top:1%;margin-bottom:1%;" required/>
                          </div>	
							
						<div class="md-form">
                              <input type="text" name="myproductlink" id="myproductlink" class="form-control"  placeholder="Product Link" style="margin-top:1%;margin-bottom:1%;" required/>
                          </div>
						  
                          <div class="text-center">
                              <input type="submit" class="btn btn-unique" value="Add Product" id="btnAddProduct">
                          </div>

                      </form>
                      <!-- Form contact -->
                                  


                  </div>
                  <div class="col-md-7 mx-auto" id="listproducts">
						<p class="h5 text-center mb-4">Product List</p>
                    <table class="table-striped table-responsive" id="tbl_products">
                          <thead>
                            <tr>
                              <th>Product Name</th>
                              <th>Category</th>
                              <th>Description</th>
							  <th>Link</th>
							  <th>Price</th>
                              <th>Image</th>
                              <th>Action</th>
							  <th></th>
                              
                            </tr>
                          </thead>
                          <tbody>
				<%
					
						statement = conn.prepareStatement("SELECT product_id,product_name,product_category,product_description,TRIM(LEADING 'C:fakepath' FROM product_image)as mypath,price,link FROM tbl_products");
						resultSet = statement.executeQuery();

						 while(resultSet.next()) { %>
						
						<tr>
							<td> <%= resultSet.getString("product_name") %></td>
							<td> <%= resultSet.getString("product_category") %></td>
							<td> <%= resultSet.getString("product_description") %></td>
							<td> <%= resultSet.getString("link") %></td>
							<td> <%= resultSet.getString("price") %></td>
							
							<td><img src="images/<%= resultSet.getString("mypath") %>" width="150px"> </td>
							<td><input type="submit" value="Delete"  class="btn btn-default btnDeleteProduct" id="<%= resultSet.getString("product_id") %>" required/></td>	
							<td>
							<form name="form1" action="updateproduct.jsp" method="post">
								<input type="hidden" id="getproductid" name="getproductid" value="<%=resultSet.getString("product_id")%>" />
								<input type="submit" class="btn btn-default btnUpdateProduct" name="edit" value="Update" />
							</form>
							</td>
							
						
						</tr>
	
						<%} %>
                          </tbody>
                        </table>
                                    
              
                    
                  
                  </div>
                </div>
				<!--PRODUCT SECTION END-->

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
					location.reload(true);
				},
				error: function () {
					
				alert("Error while removing file");
				
				}
			})
			}
				
		 });
		 
		 	 $('.btnDeleteProduct').click(function() {
		 id = $(this).attr('id');
	
						
			if((id == null || id == "")){
		
			alert("Please Select Product to Delete");
			}
			else{
		
			$.ajax({
				type: "POST",
				url: "deleteproduct.jsp",
				data: {getid:id},
				success: function () {
					alert("Item Successfully Removed");
					location.reload(true);
				},
				error: function () {
					
				alert("Error while removing product");
				
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
 
























