package com.talentsprint.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;

class ConnectionFactory{
	public static Connection getConnection(){
		Connection connection = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Cabriolet","root","123456");
			
		} catch (Exception e){
			System.out.println("Exception: " + e.getMessage());
		}
		
		return connection;
	}
}