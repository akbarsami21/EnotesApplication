package com.enotes.db;

import java.sql.*;

public class ConnectionProvider {

	private static Connection con;

	public static Connection getConnection() {

		try {
			if (con == null) {
				// driver class load
				Class.forName("com.mysql.cj.jdbc.Driver");
				String url = "jdbc:mysql://localhost:3306/enotes";
				String name = "root";
				String password = "SAmi2253&";
				// create a connection
				con = DriverManager.getConnection(url, name, password);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
