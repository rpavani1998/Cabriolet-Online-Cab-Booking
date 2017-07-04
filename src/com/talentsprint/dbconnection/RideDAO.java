package com.talentsprint.dbconnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import javax.swing.JOptionPane;

import com.talentsprint.beans.RideBean;

public class RideDAO {
	
	public static int bookARide(RideBean rideBean) throws SQLException {
		int result = 0;
		try {
			Connection connection = ConnectionFactory.getConnection();
			PreparedStatement query = connection.prepareStatement(
					"insert into Ride(driverId,customerId,source,destination,status,amount,bookingTime,carType) values(?,?,?,?,?,?,NOW(),?)");
			
			query.setString(2, rideBean.getCustomerId());
			query.setString(3, rideBean.getSource());
			query.setString(4, rideBean.getDestination());
			query.setString(5, rideBean.getStatus());
			query.setDouble(6, rideBean.getAmount());
			String type = rideBean.getCarType();
			query.setString(7, type);
			
			
			PreparedStatement query1 = connection.prepareStatement("select phoneNumber from driver where cabNumber = (select distinct(d.cabNumber) from driver d, cab c where d.status = 'available' and c.type = '"+type+"') LIMIT 1");
			ResultSet resultSet = query1.executeQuery();
			if(resultSet.next()){
				System.out.println(resultSet.getString(1));
				query.setString(1, resultSet.getString(1));
			} else {
				msgbox("Sorry! There are no cabs available.Please try later");
				return -1;
			}
			
			result = query.executeUpdate();
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	private static void msgbox(String string) {
		JOptionPane.showMessageDialog(null, string);
		
	}
	
}
