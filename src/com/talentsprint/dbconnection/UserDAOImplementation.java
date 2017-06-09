package com.talentsprint.dbconnection;

import java.sql.*;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.swing.JOptionPane;

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
			msgbox("This user already has an account with the same PhoneNumber/emailId");

		}
		return result;
	}

	public String forgetPasswordGetEmail(String customerId) {
		try {
			Connection connection = ConnectionFactory.getConnection();
			Statement statement = connection.createStatement();
			String query = "select emailId from Customer where phoneNumber ='" + customerId + "'";
			ResultSet resultSet = statement.executeQuery(query);

			if (resultSet.next()) {
				return (resultSet.getString(1));

			}
			resultSet.close();
			connection.close();
		} catch (Exception e) {
			msgbox("This user already has an account with the same PhoneNumber/emailId");

		}
		return null;

	}

	public String getPassword(String customerId) {
		try {
			Connection connection = ConnectionFactory.getConnection();
			Statement statement = connection.createStatement();
			String query = "select password from Customer where phoneNumber ='" + customerId + "'";
			ResultSet resultSet = statement.executeQuery(query);

			if (resultSet.next()) {
				return (resultSet.getString(1));

			}
			resultSet.close();
			connection.close();
		} catch (Exception e) {
			msgbox("This user already has an account with the same PhoneNumber/emailId");

		}
		return null;

	}

	public void msgbox(String s) {
		JOptionPane.showMessageDialog(null, s);
	}

	public void sendMail(String[] to, String sub, String msg) {
		final String from = "lekya.sheral05@gmail.com";
		final String pass = "ryandee05";
		Properties props = System.getProperties();
		String host = "smtp.gmail.com";
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.user", from);
		props.put("mail.smtp.password", pass);
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");

		Session session = Session.getDefaultInstance(props);
		MimeMessage message = new MimeMessage(session);

		try {
			message.setFrom(new InternetAddress(from));
			InternetAddress[] toAddress = new InternetAddress[to.length];

			// To get the array of addresses
			for (int i = 0; i < to.length; i++) {
				toAddress[i] = new InternetAddress(to[i]);
			}

			for (int i = 0; i < toAddress.length; i++) {
				message.addRecipient(Message.RecipientType.TO, toAddress[i]);
			}

			message.setSubject(sub);
			message.setText(msg);
			Transport transport = session.getTransport("smtp");
			transport.connect(host, from, pass);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
		} catch (AddressException ae) {
			ae.printStackTrace();
		} catch (MessagingException me) {
			me.printStackTrace();
		}
	}

}
