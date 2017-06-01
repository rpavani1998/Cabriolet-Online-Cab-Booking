package com.talentsprint.dbconnection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDAO {
	ConnectionFactory connectionFactory = new ConnectionFactory();
	Connection con = connectionFactory.getConnection();
	
	public boolean validate(String phoneNum, String password) throws SQLException {
		boolean flag = false;
		String phoneNumber = null;
		String password1 = null;
		Statement statement = con.createStatement();
		String query = "select * from UserDetails where phoneNumber ='"+ phoneNumber +"'";
		ResultSet resultSet = statement.executeQuery(query);
		while (resultSet.next()) {
			phoneNumber = resultSet.getString(2);
			password1 = resultSet.getString(3);
			if ((phoneNumber.equals(phoneNum)) && (password1.equals(password1))) {
				System.out.println("Login SuccessFull!!");
				flag = true;
			}
		}
		return flag; 
	}
}
