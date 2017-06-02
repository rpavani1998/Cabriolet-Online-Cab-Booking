package com.talentsprint.dbconnection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDAO {
	ConnectionFactory connectionFactory = new ConnectionFactory();
	Connection con = connectionFactory.getConnection();
	
	public boolean validate(String phoneNum, String password) throws SQLException {
		String phoneNumber = null;
		String password1 = null;
		System.out.println(phoneNum);
		Statement statement = con.createStatement();
		String query = "select password from UserDetails where phoneNumber ='"+ phoneNum +"'";
		ResultSet resultSet = statement.executeQuery(query);
		
		if (resultSet.next()) {
			password1 = resultSet.getString(1);
		
		System.out.println(password+ " " +password1);
		if ((password.equals(password1))) {
			System.out.println("Login SuccessFull!!");
			return  true;
		}
		}
		
		return false; 
	}
}
