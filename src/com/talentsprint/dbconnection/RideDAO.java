package com.talentsprint.dbconnection;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import javax.swing.JOptionPane;

import com.talentsprint.beans.RideBean;

public class RideDAO {
	
	public static int bookARide(RideBean rideBean) throws SQLException {
		int result = 0;
		String CustomerName = null;
		try {
			Connection connection = ConnectionFactory.getConnection();
			PreparedStatement query = connection.prepareStatement(
					"insert into Ride(driverId,customerId,source,destination,status,amount,bookingTime,carType,riderName,riderNumber) values(?,?,?,?,?,?,NOW(),?,?,?)");
			query.setString(2, rideBean.getCustomerId());
			System.out.println(rideBean.getCustomerId());
			query.setString(3, rideBean.getSource());
			query.setString(4, rideBean.getDestination());
			query.setString(5, rideBean.getStatus());
			query.setDouble(6, rideBean.getAmount());
			String type = rideBean.getCarType();
			query.setString(7, type);
			String idOfCustomer = rideBean.getCustomerId();
			Statement s = connection.createStatement();
  		    ResultSet rs = s.executeQuery("select concat(firstName,' ',lastName) from Customer where phoneNumber = '"+idOfCustomer+"' ");
  		    if(rs.next()) {
  		    	CustomerName = rs.getString(1);
  		    	System.out.println(CustomerName);
  		    }
			if(rideBean.getFriendName() != null) {
				query.setString(8, rideBean.getFriendName());
			} else {
				query.setString(8, CustomerName);
			}
			if(rideBean.getFriendMobileNumber() != null) {
				query.setString(9, rideBean.getFriendMobileNumber());
			} else {
				query.setString(9, rideBean.getCustomerId());
			}
			
			
			PreparedStatement query1 = connection.prepareStatement("select phoneNumber from Driver where cabNumber = (select distinct(d.cabNumber) from Driver d, Cab c where d.status = 'available' and c.type = '"+type+"' order by RAND() LIMIT 1 )");
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