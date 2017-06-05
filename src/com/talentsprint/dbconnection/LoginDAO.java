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
		String query = "select password from Customer where phoneNumber ='" + phoneNum + "'";
		String query1 = "SELECT MD5('" + password + "')";
		ResultSet resultSet = statement.executeQuery(query);

		if (resultSet.next()) {
			password1 = resultSet.getString(1);

		}
		resultSet.close();
		ResultSet resultSet2 = statement.executeQuery(query1);
		if (resultSet2.next()) {
			password = resultSet2.getString(1);

		}
		resultSet2.close();

		if ((password.equals(password1))) {

			return true;
		}

		return false;
	}
}
