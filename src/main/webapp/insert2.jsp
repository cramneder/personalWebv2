<%@ page import ="java.sql.*" %>
<%

    String Name = request.getParameter("myname");    
    String Email = request.getParameter("myemail");    
	String Subject = request.getParameter("mysubject");
	String Message = request.getParameter("mymessage");        
   
   
		
	Connection conn = null;
    String url = "jdbc:mysql://localhost:3306/";
	String dbName = "personal_db";
	String driver = "com.mysql.jdbc.Driver";
	String userName = "root";
	String password = "";
	
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