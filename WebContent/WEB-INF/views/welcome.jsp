<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Regional Officer Details</title>
</head>
<body>
	<form action="SROData" method="post">
		<%
			String user = (String) session.getAttribute("uname");
		%>
		<h2 align="left">
			Welcome
			<%=user%></h2>

		<table border="1" align="left" style="table-layout: auto;">
		<tr><td align="center">
		Regional Officer Data</td>
		</tr>
			<tr>
				<td>Total Application Received:</td>
				<td><input type="text" name="arcvd" /></td>
			</tr>
			<br />
			<tr>
				<td>Application Processsed within 30 days:</td>
				<td><input type="text" name="aprcsd" /></td>
			</tr>
			<br />
			<br />
			<tr>
				<td><input type="submit" value="Save" /></td>
				<td><input type="submit" value="Cancel" /></td>
			</tr>
		</table>
	</form>
</body>
</html>