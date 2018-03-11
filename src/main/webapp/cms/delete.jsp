<%@ page import ="java.sql.*" %>
<%@include file="conn.jsp" %>
<%

    String Getid = request.getParameter("getid");      
	
	  try {
                Class.forName(driver).newInstance();
                conn = DriverManager.getConnection(url + dbName, userName, password);
                Statement st = conn.createStatement();
              
                   int i = st.executeUpdate("DELETE FROM tbl_content WHERE content_id = '"+ Getid +"'");
			
				conn.close();
				response.sendRedirect("index.jsp");
            } catch (Exception e) {
                e.printStackTrace();
            }
	

%>