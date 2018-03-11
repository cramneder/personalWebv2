<%@ page import ="java.sql.*" %>
<%@include file="conn.jsp" %>

<%   
	String ProdId = request.getParameter("getID"); 
    String ProdName = request.getParameter("getName"); 
	String ProdCategory = request.getParameter("getCat"); 
	String ProdDesc = request.getParameter("getDesc"); 
    String ProdImage = request.getParameter("getImage");    
	String ProdPrice = request.getParameter("getPrice");
	String ProdLink = request.getParameter("getLink"); 
	
	  try {
                Class.forName(driver).newInstance();
                conn = DriverManager.getConnection(url + dbName, userName, password);
                Statement st = conn.createStatement();
              
                   int i = st.executeUpdate("UPDATE tbl_products SET product_name = '"+ ProdName +"',product_category = '"+ ProdCategory +"',product_description = '"+ ProdDesc +"',product_image = '"+ ProdImage +"',price = '"+ ProdPrice +"',link = '"+ ProdLink +"' WHERE product_id = '"+ ProdId +"' ");
					
				conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
	
%>