<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add User Information</title>
</head>
<body>
<form action="AddUser" method="post" >
		<table border="1" align="left" style="table-layout: auto;">
		<tr><td align="center">
		Add New User</td>
		</tr>
			<tr>
				<td>First Name:</td>
				<td><input type="text" name="fname" /></td>
			</tr>
			<br />
			<tr>
				<td>Last Name:</td>
				<td><input type="text" name="lname" /></td>
			</tr>
			<br />
			<tr>
				<td>Email ID:</td>
				<td><input type="text" name="emailid" /></td>
			</tr>
			<br/>
			<tr>
				<td>Employee ID:</td>
				<td><input type="text" name="empid" /></td>
			</tr>
			<tr>
				<td>Designation:</td>
				<td><input type="text" name="designation" /></td>
			</tr>
			<tr>
				<td>Place of Posting:</td>
				<td><input type="text" name="location" /></td>
			</tr>
			<tr>
				<td>Mobile No:</td>
				<td><input type="text" name="mobileno" /></td>
			</tr>
			<tr>
				<td>Contact No (Office):</td>
				<td><input type="text" name="contactno" /></td>
			</tr>
						
			<tr>
				<td><input type="submit" value="Save" /></td>
				<td><input type="submit" value="Reset" /></td>
			</tr>
		</table>
	</form>
</body>
</html>