<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%
						Connection conn = null;
						String url = "jdbc:mysql://mysql7002.site4now.net/";
						String dbName = "ltbu2dzb_personal_db";
						String driver = "com.mysql.jdbc.Driver";
						String userName = "ltbu2dzb_person";
						String password = "person123456";
						
						PreparedStatement statement = null;
						ResultSet resultSet = null;
						
						Class.forName(driver).newInstance();
						conn = DriverManager.getConnection(url + dbName, userName, password);
						
						%>