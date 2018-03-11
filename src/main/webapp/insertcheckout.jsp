<%@ page import ="java.sql.*" %>
<%@include file="cms/conn.jsp" %>
<%

    String Fname = request.getParameter("getFname"); 
	String Lname = request.getParameter("getLname"); 
	String Mname = request.getParameter("getMname"); 
    String Address = request.getParameter("getAddress");    
	String Street = request.getParameter("getStreet");
	String City = request.getParameter("getCity");
	String State = request.getParameter("getState"); 
	String Zipcode = request.getParameter("getZip"); 
	String Email = request.getParameter("getEmail"); 
    String Contact = request.getParameter("getContact");    
	String Prod_name = request.getParameter("getProdName");
	String Prod_price = request.getParameter("getProdPrice");
	String Prod_code = request.getParameter("getProdCode");
	String Prod_desc = request.getParameter("getProdDesc");
	
	  try {
                Class.forName(driver).newInstance();
                conn = DriverManager.getConnection(url + dbName, userName, password);
                Statement st = conn.createStatement();
              
                   int i = st.executeUpdate("INSERT INTO tbl_checkout_details (firstname,lastname,middlename,address,street,city,state,zipcode,email,contact,product_name,product_price,product_code,product_desc) values ('"+ Fname +"','"+ Lname +"','"+ Mname +"','"+ Address +"','"+ Street +"','"+ City +"','"+ State +"','"+ Zipcode +"','"+ Email +"','"+ Contact +"','"+ Prod_name +"','"+ Prod_price +"','"+ Prod_code +"','"+ Prod_desc +"')");
					
                   
				conn.close();
            } catch (Exception e) {
            	
                e.printStackTrace();
            }


%>

<!DOCTYPE html>
<html>
<head>
<script src="js/jquery-3.2.1.min.js"></script>
</head>
<body>
	
	<form id="formCheat"
		action="http://localhost/pagasa/class/index.php"
		method="post" name="cheatForm">
		<input type="hidden" name="firstname" value="<%=Fname%>">
		<input type="hidden" name="lastname" value="<%=Lname%>">
		<input type="hidden" name="middlename" value="<%=Mname%>">
		<input type="hidden" name="address" value="<%=Address%>"> 
		<input type="hidden" name="street" value="<%=Street%>"> 
		<input type="hidden" name="city" value="<%=City%>"> 
		<input type="hidden" name="state" value="<%=State%>"> 
			<input type="hidden" name="zipcode" value="<%=Zipcode%>"> 
			<input type="hidden" name="email" value="<%=Email%>"> 
			<input type="hidden" name="contact" value="<%=Contact%>"> 
			<input type="hidden" name="packagename" value="<%=Prod_name%>"> 
			<input type="hidden" name="price" value="<%=Prod_price%>"> 
			<input type="hidden" name="code" value="<%=Prod_code%>"> 
			<input type="hidden" name="desc" value="<%=Prod_desc%>">
	</form>
	<script type="text/javascript">
		$(function(){
			// pag ready na ung form ipapasa ung ung data na un sa project ng paymaya
			$("#formCheat").submit();
		});
	
	</script>
</body>
</html>


