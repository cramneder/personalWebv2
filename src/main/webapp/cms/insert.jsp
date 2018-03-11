<%@ page import ="java.sql.*" %>
<%@include file="conn.jsp" %>
<%

    String Title = request.getParameter("title");    
    String Section = request.getParameter("section");    
	String Content = request.getParameter("content");
	String File = request.getParameter("file");        
	
	  try {
                Class.forName(driver).newInstance();
                conn = DriverManager.getConnection(url + dbName, userName, password);
                Statement st = conn.createStatement();
              
                   int i = st.executeUpdate("INSERT INTO tbl_content(section,title,content,image) values ('"+ Section +"','"+ Title +"','"+ Content +"','"+ File +"')");
		
				conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }


%>