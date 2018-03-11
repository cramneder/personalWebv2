<%@ page import ="java.sql.*" %>
<%@include file="conn.jsp" %>
<%

    String Name = request.getParameter("myname");    
    String Email = request.getParameter("myemail");    
	String Subject = request.getParameter("mysubject");
	String Message = request.getParameter("mymessage");        
	
	  try {
                Class.forName(driver).newInstance();
                conn = DriverManager.getConnection(url + dbName, userName, password);
                Statement st = conn.createStatement();
              
                   int i = st.executeUpdate("INSERT INTO tbl_inquire(name,email,subject,message,date_inquire) values ('"+ Name +"','"+ Email +"','"+ Subject +"','"+ Message +"',NOW())");
		
				conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }


%>