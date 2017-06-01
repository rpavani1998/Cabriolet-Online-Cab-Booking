<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
</head>
<body>
<form action="CreateUser" method="post">
First Name<input type="text" name="firstName"><br><br>
Last Name <input type="text" name="lastName"><br><br>
EmailID <input type="text" name="emailID"><br><br>
Gender <select name="gender">
<option value="Female">Female</option>
<option value="Male">Male</option>
<option value="Other">Other</option>
</select><br><br>
Date of Birth <input type="date"  date-format="YYYY MM DD" name="dateOfBirth"><br><br>
Mobile Number<input type="tel"name="mobileNumber"><br><br>
Password <input type="password" name="password"><br><br>
Re-enter Password <input type="password" name="rpsw"><br><br>
<input type="submit" value="Create User">
</form>
</body>
</html>