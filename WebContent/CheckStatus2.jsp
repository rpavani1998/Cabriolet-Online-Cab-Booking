<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.*"%>

<%@page import="javax.script.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.Reader"%>
<%@page import="java.io.Reader.*"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="java.nio.file.Files"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript" defer>
	
<%
	Statement statement;
	String old_status = null;
	String customerID = (String) (session.getAttribute("customerID"));
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Cabriolet1","root","rajula");//
	//	("jdbc:mysql://192.168.3.247:3306/cabriolet", "srividya","srividyaswamy");//	

	boolean flag = true;

	try {
		statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery(
				"select status from Ride where customerId = "+customerID+" order by bookingTime desc LIMIT 1");
		if (resultSet.next()) {
			old_status = resultSet.getString(1);
		}
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	while (flag) {
		try {
			statement = connection.createStatement();
			ResultSet resultSet1 = statement
					.executeQuery("select status from Ride order by bookingTime desc limit 1 ");
			if (resultSet1.next()) {
				String new_status = resultSet1.getString(1);
				
				if (!new_status.equals(old_status)) {
					old_status = new_status;
					if (old_status.equals("Accepted")) {
						flag = false;
					} else if (old_status.equals("Rejected")) {
						flag = false;
					}else if (old_status.equals("Completed")) {
						flag = false;
					}else if (old_status.equals("Started")) {
						flag = false;
					} 
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();

		}
	}

%>
	function RedirectToRejectionPage() {
		window.location = 'RideRejected.jsp';
	}

	function RedirectToConfirmationPage() {
		window.location = 'ConfirmBookingPage.jsp';
	}

	function RedirectToRideCompletedPage() {
		window.location = 'RideCompleted.jsp';
	}
	
	function RedirectToRideStartedPage() {
		window.location = 'RidingPage.jsp';
	}
<% 
if (old_status.equals("Rejected")) { 
    out.print("RedirectToRejectionPage();");
}else if(old_status.equals("Accepted")){
	out.print("RedirectToConfirmationPage();");
}else if(old_status.equals("Started")){
	out.print("RedirectToRideStartedPage();");
}else if(old_status.equals("Completed")){
	out.print("RedirectToRideCompletedPage();");
}
%>
	
</script>
</head>
<body>

</body>
</html>