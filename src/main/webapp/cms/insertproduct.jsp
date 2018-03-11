<%@ page import ="java.sql.*" %>
<%@include file="conn.jsp" %>
<%

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
              
                   int i = st.executeUpdate("INSERT INTO tbl_products(product_name,product_category,product_description,product_image,price,link) values ('"+ ProdName +"','"+ ProdCategory +"','"+ ProdDesc +"','"+ ProdImage +"','"+ ProdPrice +"','"+ ProdLink +"')");
		
				conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }


%>