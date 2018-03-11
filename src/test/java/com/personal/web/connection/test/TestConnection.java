package com.personal.web.connection.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.junit.Before;
import org.junit.Test;

public class TestConnection {
	Connection conn = null;
	String url = "jdbc:mysql://mysql7002.site4now.net/";
	String dbName = "ltbu2dzb_personal_db";
	String driver = "com.mysql.jdbc.Driver";
	String userName = "ltbu2dzb_person";
	String password = "person123456";
	
	PreparedStatement statement = null;
	ResultSet resultSet = null;
	
	@Before
	public void setup() throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		Class.forName(driver).newInstance();
		conn = DriverManager.getConnection(url + dbName, userName, password);
	}
	
	@Test
	public void connectTest() throws SQLException {
		PreparedStatement statement = conn.prepareStatement("SELECT content_id,title,section,content,TRIM(LEADING 'C:fakepath' FROM image)as mypath FROM tbl_content");
		ResultSet resultSet = statement.executeQuery();
		
		if(resultSet.next()) {
			System.out.println("meron");
		}
		
	}
	
}
