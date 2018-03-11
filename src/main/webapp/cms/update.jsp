
<%@ page import ="java.sql.*" %>
<!DOCTYPE html> 
<html> 
<head> <meta charset="utf-8"> 
 <title>html 5 structure</title> 
 <script type = "text/javascript"  src = "jquery-2.1.4.min.js"></script>
 <script type = "text/javascript" language = "javascript">

         $(document).ready(function() {
				 
		      $(".btnUpdate").click(function() {
    				
     id = $(this).attr('id');
	 var getname = $.trim($("#myname").val());
	var getemail =  $.trim($("#myemail").val());
	var getfile =  $("#myfile").val();
	
	
				
			if((getname == null || getname == "") || (getemail == null || getemail == "") || (getfile == null || getfile == "")){
		
			alert("Please Fill in All the Fields");
			}
			else{
						var data = {
				'toname': getname,
				'toemail': getemail,
				'tofile': getfile,
				'toid': id,
				
			};
			
			$.ajax({
				type: "POST",
				url: "updateconfig.jsp",
				data: data,
				success: function () {
					alert("pasok");
				},
				error: function () {
				alert("may error");
				
				}
			})
			}
				
				
		 });
		 
		
});
      </script>
</head> 
<body> 
	<table border="3">
	<thead>
	<tr>
	<th>NAME</th>
	<th>EMAIL</th>
	<th>IMAGE</th>
	<th>ACTION</th>											
</tr>
</thead>
<tbody id="sectiontbody">
					<FORM ENCTYPE="multipart/form-data" ACTION="upload2.jsp" METHOD=POST>
					<%
					
					String Getid = request.getParameter("getid");
	
						Connection conn = null;
						String url = "jdbc:mysql://localhost:3306/";
						String dbName = "personal_db";
						String driver = "com.mysql.jdbc.Driver";
						String userName = "root";
						String password = "";
						
						PreparedStatement statement = null;
						ResultSet resultSet = null;
						
						Class.forName(driver).newInstance();
						conn = DriverManager.getConnection(url + dbName, userName, password);
					
						statement = conn.prepareStatement("SELECT id,title,section,content,TRIM(LEADING 'C:fakepath' FROM image)as mypath FROM image WHERE id = '"+ Getid +"'");
						resultSet = statement.executeQuery();

						 while(resultSet.next()) { %>
						
						<tr>
							<td> <input type="text" id="myname" value="<%= resultSet.getString("title") %>" required/></td>
							<td><input type="email" id="myemail" value="<%= resultSet.getString("section") %>" required/></td>
							<td><input type="email" id="myemail" value="<%= resultSet.getString("content") %>" required/></td>
							<td><input type="file" name="file" id="myfile" required/> </td>
							<td><input type="submit" value="Update File"  class="btnUpdate" id="<%= resultSet.getString("id") %>" required/></td>							
						
						</tr>
	
						<%} %>
						</FORM>
 </body>
 </html>

 