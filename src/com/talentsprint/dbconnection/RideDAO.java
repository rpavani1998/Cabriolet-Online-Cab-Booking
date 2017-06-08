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

	public static int bookARide(RideBean rideBean) throws SQLException {
		int result = 0;
		try {
			Connection connection = ConnectionFactory.getConnection();
			PreparedStatement query = connection.prepareStatement(
					"insert into Ride(driverId,customerId,source,destination,status,amount,bookingTime) values(?,?,?,?,?,?,NOW())");
			
			query.setString(2, rideBean.getCustomerId());
			query.setString(3, rideBean.getSource());
			query.setString(4, rideBean.getDestination());
			query.setString(5, rideBean.getStatus());
			query.setDouble(6, rideBean.getAmount());

			PreparedStatement query1 = connection.prepareStatement("select * from Driver where status = 'Available' limit 1");
			ResultSet resultSet = query1.executeQuery();
			while(resultSet.next()){
				query.setString(1, resultSet.getString(4));
			}
			
			result = query.executeUpdate();
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
