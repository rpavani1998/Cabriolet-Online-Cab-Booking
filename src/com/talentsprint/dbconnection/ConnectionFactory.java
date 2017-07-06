package com.talentsprint.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;

class ConnectionFactory {
	public static Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Cabriolet1","root","rajula");
			//("jdbc:mysql://192.168.3.247:3306/cabriolet", "srividya", "srividyaswamy");//

		} catch (Exception e) {
			System.out.println("Exception: " + e.getMessage());
		}

		return connection;
	}
}