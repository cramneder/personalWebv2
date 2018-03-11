<%@ page import ="java.sql.*" %>
<%@include file="conn.jsp" %>
<%   
	
    String Title = request.getParameter("title");  
	String Section = request.getParameter("section"); 
	String Content = request.getParameter("content");
	String File = request.getParameter("file");
	String Id = request.getParameter("id");
	
	  try {
                Class.forName(driver).newInstance();
                conn = DriverManager.getConnection(url + dbName, userName, password);
                Statement st = conn.createStatement();
              
                   int i = st.executeUpdate("UPDATE tbl_content SET section = '"+ Section +"',title = '"+ Title +"',content = '"+ Content +"', image = '"+ File +"' WHERE content_id = '"+ Id +"' ");
					
					response.sendRedirect("index.jsp");
					
				conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
	
%>