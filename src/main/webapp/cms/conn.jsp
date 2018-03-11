<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%
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
						
						%>