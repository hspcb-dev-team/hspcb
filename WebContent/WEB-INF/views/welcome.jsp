<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<head>
<style type='text/css'>
@import url(/OCMMS/plugins/calendar-1.2.0-SNAPSHOT3/css/aqua.css);
</style>
<script type="text/javascript"
	src="/OCMMS/plugins/calendar-1.2.0-SNAPSHOT3/js/calendar.js"></script>
<script type="text/javascript" src="js/ashscript.js"></script>
<script type="text/javascript"
	src="/OCMMS/plugins/calendar-1.2.0-SNAPSHOT3/js/lang/calendar-en.js"></script>
<script type="text/javascript"
	src="/OCMMS/plugins/calendar-1.2.0-SNAPSHOT3/js/calendar-setup.js"></script>

<meta charset="UTF-8">
<title>HSPCB</title>

<link rel="stylesheet" type="text/css" href="/OCMMS/css/main.css" />
<link rel="stylesheet" type="text/css" href="/OCMMS/css/anylinkmenu.css" />
<link rel="stylesheet" type="text/css" href="/OCMMS/css/tabcontent.css" />
<link rel="stylesheet" type="text/css" href="/OCMMS/css/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="/OCMMS/css/style.css" />
<script type="text/javascript" src="/OCMMS/js/menucontents.js"></script>
<script type="text/javascript" src="/OCMMS/js/anylinkmenu.js"></script>
<script type="text/javascript" src="/OCMMS/js/tabcontent.js"></script>


<script type="text/javascript" src="js/tabcontent.js">
    </script>
<script type="text/javascript">
        anylinkmenu.init("menuanchorclass")
    </script>
<script type="text/javascript" src="/OCMMS/js/prototype/prototype.js"></script>
<script type="text/javascript"
	src="/OCMMS/js/prototype/scriptaculous.js"></script>
<script type="text/javascript" src="/OCMMS/js/prototype/builder.js"></script>
<script type="text/javascript" src="/OCMMS/js/prototype/controls.js"></script>
<script type="text/javascript" src="/OCMMS/js/prototype/effects.js"></script>
<script type="text/javascript" src="/OCMMS/js/prototype/slider.js"></script>
<script type="text/javascript" src="/OCMMS/js/prototype/dragdrop.js"></script>
</head>


<body>
	<table>
		<tr bgcolor="#4C8BC0" width="100%">
			<td class="top-lnks">
				<table>
					<tr>
						<%	String user = (String) session.getAttribute("uid"); %>
						<h2 align="left">
							Welcome
							<%=user%></h2>

					</tr>
				</table>
			</td>
		</tr>
	</table>

	<table>
		<tr>
			<td>Start date :<input name="ExpiryDate" type="date"
				id="ExpiryDate" size="10" maxlength="10" /></td>
			<!-- <img src="images/haryana-govt1_1.png" onClick="displayDatePicker("ExpiryDate");"> -->
			<td>End date : <input name="ExpiryDate" type="date"
				id="ExpiryDate" size="10" maxlength="10" /></td>
		</tr>
		<!-- <img src="images/haryana-govt1_1.png" onClick="displayDatePicker("ExpiryDate");"> -->

		<tr>
			<td align="left" class="headngblue">Region:</td>
			<td align="left"><select name="regionName" class="txt4"
				id="regionName">
					<option value="All">All</option>
					<option value="5456977">Bahadurgarh</option>
					<option value="5456980">Ballabhgarh</option>
					<option value="5456981">Dharuhera</option>
					<option value="5456982">Faridabad</option>
					<option value="5456983">Gurgaon North</option>
					<option value="5456984">Gurgaon South</option>
					<option value="5456985">Hisar</option>
					<option value="5456986">Jind</option>
					<option value="5456991">Panchkula</option>
					<option value="5456987">Panipat</option>
					<option value="5456989">Sonipat</option>
					<option value="5456990">Yamuna Nagar</option>
			</select></td>

			<td align="left" class="headngblue">Application Type</td>
			<td align="left"><select name="applicationType"
				id="applicationType">
					<option value="All">All</option>
					<option value="Total">Total</option>
						<option value="Total">Performance Weightage</option>
			</select></td>
		</tr>


	</table>


	<table  align="center">

		<tr>
			<td align="center"><input type="submit" name="save"
				value="Search" class="actionbutton"></td>

		</tr>

	</table>

	<table  align="center" cellpadding="0" cellspacing="0"
		class="tab-txt">
		<tr>
			<td colspan="9" align="center"><span class="headngblue">Performance
					report of regional officers on the basis of Application Disposal of
					CTE/CTO/HWM/BMW/E-Waste/Plastic Waste </span></td>
		</tr>

	</table>


	<% 
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "hspcb";
String userid = "root";
String password = "Admin@1234";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = DriverManager.getConnection(connectionUrl+database, userid, password);
Statement statement=connection.createStatement();
String sql ="select * from hspcb.PerformanceReport";
ResultSet resultSet = statement.executeQuery(sql);

%>
	<table border="1">
		<tr  bgcolor="#CCFFCC">
			<td align="center" class="headngblue" rowspan="2">Region Name</td>
			<td align="center" class="headngblue" rowspan="2">Application
				type</td>
			<td align="center" class="headngblue" rowspan="2">Total
				applications received</td>
			<td align="center" class="headngblue" colspan="2">Applications
				decided within 30 days</td>
			<td align="center" class="headngblue" colspan="2">Applications
				decided within 31-45 days</td>
			<td align="center" class="headngblue" colspan="2">Applications
				decided beyond 45 days</td>
			<td align="center" class="headngblue" colspan="2">Pending
				Applications</td>
			<td align="center" class="headngblue" colspan="2">Pending
				Application more than 45 days</td>

		</tr>
		<tr bgcolor="#CCFFCC">
			<td align="center" class="headngblue">Number</td>
			<td align="center" class="headngblue">Percentage</td>
			<td align="center" class="headngblue">Number</td>
			<td align="center" class="headngblue">Percentage</td>
			<td align="center" class="headngblue">Number</td>
			<td align="center" class="headngblue">Percentage</td>
			<td align="center" class="headngblue">Number</td>
			<td align="center" class="headngblue">Percentage</td>
			<td align="center" class="headngblue">Number</td>
			<td align="center" class="headngblue">Percentage</td>
		</tr>


		<tr class="odd">
			<td align="center" class="headngblue" rowspan="5">
			<td>Bahadurghar</td>
			</td>

			<%
														
try{
	
while(resultSet.next()){
%>
            <td><%=resultSet.getString("Application_Type") %></td>

			<td><%=resultSet.getString("Total_Appln_Received") %></td>

			<td><%=resultSet.getString("Appln_no_30d") %></td>

			<td><%=resultSet.getString("Appln_per_30d") %>%</td>

			<td><%=resultSet.getString("Appln_no_31_45d") %></td>

			<td><%=resultSet.getString("Appln_per_31_45d") %>%</td>

			<td><%=resultSet.getString("Appln_no_beyond45d") %></td>

			<td><%=resultSet.getString("Appln_per_beyond45d") %></td>

			<td><%=resultSet.getString("Pending_Appln_no") %></td>

			<td><%=resultSet.getString("Pending_Appln_per") %></td>

			<td><%=resultSet.getString("Pending_Appln_no_gt45d") %></td>

			<td><%=resultSet.getString("Pending_Appln_per_gt45d") %></td>

		</tr>

		<%	}	
						
} catch (Exception e) {
	 connection.close();
e.printStackTrace();
}
%>
 </table> 

</body>

</html>