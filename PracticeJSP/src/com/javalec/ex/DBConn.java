package com.javalec.ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn {
	static Connection conn = null;
	
	public static Connection getMySqlConnection() {
		if(conn != null)
			return conn;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/member?serverTimezone=UTC&useSSL=false";
			String user = "shower";
			String password = "123456";
			
			conn = DriverManager.getConnection(url, user, password);
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}

}
