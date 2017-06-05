package com.talentsprint.dbconnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.talentsprint.beans.RideBean;

public class RideDAO {
	ConnectionFactory connectionFactory = new ConnectionFactory();
	Connection con = connectionFactory.getConnection();

	public int bookARide(RideBean rideBean) throws SQLException {
		int result = 0;
		try {
			Connection connection = ConnectionFactory.getConnection();
			PreparedStatement query = connection.prepareStatement(
					"insert into Ride(customerId,source,destination,status,amount) values(?,?,?,?,?)");
			query.setString(1, rideBean.getCustomerId());
			query.setString(2, rideBean.getSource());
			query.setString(3, rideBean.getStatus());
			query.setString(4, rideBean.getAmount());

			result = query.executeUpdate();

			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
