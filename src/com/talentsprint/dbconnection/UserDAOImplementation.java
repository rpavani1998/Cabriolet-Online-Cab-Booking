package com.talentsprint.dbconnection;

import java.sql.*;
import com.talentsprint.beans.UserBean;

public class UserDAOImplementation implements UserDAO {
	@Override
	public int createUser(UserBean user) {
		int result = 0;
		try {
			Connection connection = ConnectionFactory.getConnection();
			PreparedStatement query = connection.prepareStatement(
					"insert into Customer(firstName,lastName,emailID,phoneNumber,gender,DOB,password) values(?,?,?,?,?,?,md5(?))");
			query.setString(1, user.getFirstName());
			query.setString(2, user.getLastName());
			query.setString(3, user.getEmailId());
			query.setString(5, user.getGender());
			query.setString(6, user.getDateOfBirth());
			query.setString(4, user.getMobileNumber());
			query.setString(7, user.getPassword());

			result = query.executeUpdate();
			System.out.println(result);
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}