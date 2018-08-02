
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>SPCB</title>

<link rel="stylesheet" type="text/css" href="/OCMMS/css/main.css" />
<link rel="stylesheet" type="text/css" href="/OCMMS/css/anylinkmenu.css" />
<link rel="stylesheet" type="text/css" href="/OCMMS/css/tabcontent.css" />
<link rel="stylesheet" type="text/css" href="/OCMMS/css/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="/OCMMS/css/style.css" />
<script type="text/javascript" src="/OCMMS/js/menucontents.js"></script>
<script type="text/javascript" src="/OCMMS/js/anylinkmenu.js"></script>
<script type="text/javascript" src="/OCMMS/js/tabcontent.js"></script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.style3 {
	color: #186DB5
}

.style5 {
	color: #0099FF
}

.style6 {
	color: #33FF66;
}

a:link {
	text-decoration: none;
	color: #1E6BBD;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

a:active {
	text-decoration: none;
}

.qwe123 {
	background-image: url('/OCMMS/images2/gif/blue_bg.gif');
	padding-left: 23px;
	padding-right: 20px;
	padding-top: 5px;
	padding-bottom: 5px;
}

.qwe123:hover {
	background-image: url('/OCMMS/images2/gif/gray_bg.gif');
}

.blue {
	background-image: url('/OCMMS/images2/gif/button_gray.gif');
	padding-left: 30px;
	padding-right: 27px;
	padding-top: 5px;
	padding-bottom: 7px;
}

.blue:hover {
	background-image: url('/OCMMS/images2/gif/button_blue.gif');
}
-->
</style>

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

	<script>
    function setColor() {
        var obj = misId
        obj.style.color = "#00FFFF";
    }
    setColor();
</script>

	</td>
	</tr>



	<tr>
		<td height="24" bgcolor="#EEEEF3">
			<table width="100%">




				<tr bgcolor="#4C8BC0">
					<td class="top-lnks">
						<table width="100%">
							<tr height="10px">
								<%	String user = (String) session.getAttribute("uid"); %>
								<h2 align="left">
									Welcome
									<%=user%></h2>
							
							</tr>
						</table>
					</td>
				</tr>



			</table>
		</td>
	</tr>
	<tr>
		<td height="0" align="left" valign="top"><table width="100%"
				border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td align="center" valign="top"><div
							style="width: 400px; height: 20px; vertical-align: middle">
							<span class="error"> </span>
						</div></td>
				</tr>
				<tr>
					<td height="0" align="left" valign="top"><table width="778"
							border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="82" align="left" valign="top">&nbsp;</td>
								<td align="left" valign="top"><div
										style="padding: 0px 0px 0px 0px;">


										<br />

										<form
											action="/OCMMS/uniqueGroup/officerPerformanceReport/myForm"
											method="post" name="myForm" id="myForm">

											<div style="" :1px solidgray; width:720px; margin-bottom: 1em; padding: 10px" >


												<div id="country1">

													<table width="100%" border="0" align="center"
														cellpadding="2" cellspacing="1" class="tblbdr">
Start date :<input name="ExpiryDate" type="text" id="ExpiryDate" size="10" maxlength="10" />
<!-- <img src="images/haryana-govt1_1.png" onClick="displayDatePicker("ExpiryDate");"> -->


End date : <input name="ExpiryDate" type="text" id="ExpiryDate" size="10" maxlength="10" />
<img src="images/haryana-govt1_1.png" onClick="displayDatePicker("ExpiryDate");">

														<!-- <tr bgcolor="#E8F6F9">
															<td width="12%" align="left" class="headngblue">Start
																Date:</td>
															<td width="33%" align="left"><input type="hidden"
																name="start_date_year" id="start_date_year" value="2018" />
																<input type="hidden" name="start_date_month"
																id="start_date_month" value="8" /> <input type="hidden"
																name="start_date_day" id="start_date_day" value="1" /> <input
																type="hidden" name="start_date_hour"
																id="start_date_hour" value="15" /> <input type="hidden"
																name="start_date_minute" id="start_date_minute"
																value="17" /> <input type="hidden" name="start_date"
																id="start_date" value="" /> <input type="text"
																id="start_date_value" name="start_date_value"
																readonly="true" /> <img
																src="/OCMMS/plugins/calendar-1.2.0-SNAPSHOT3/images/skin/calendar.png"
																id="start_date-trigger" alt="Date" /> <script
																	type="text/javascript">

                        Calendar.setup({
                            name:"start_date",
                            inputField:"start_date_value",
                            ifFormat:"%d/%m/%Y",
                            button:"start_date-trigger",                            
                            showsTime:false,
                            timeFormat:"24",
                            onUpdate:start_date_updated,
                            singleClick:true,
                            range:[1999,2999],
                            date:new Date(2018,7,1,15,17)
                        });

                        function start_date_updated(calendar) {

                            document.getElementById('start_date').value='struct'
                            document.getElementById('start_date_year').value= calendar.date.getFullYear();
				            document.getElementById('start_date_month').value= calendar.date.getMonth()+1;
				            document.getElementById('start_date_day').value= calendar.date.getDate();

                            if(calendar.showsTime) {
                                document.getElementById('start_date_hour').value= calendar.date.getHours();
				                document.getElementById('start_date_minute').value= calendar.date.getMinutes();
                            }else {
                                document.getElementById('start_date_hour').value = 0;
				                document.getElementById('start_date_minute').value = 0;
                            }

                        }

                        function start_date_clean() {
                                document.getElementById('start_date').value='';
                                document.getElementById('start_date_value').value=''
                                document.getElementById('start_date_year').value= '';
				                document.getElementById('start_date_month').value= '';
				                document.getElementById('start_date_day').value= '';
                                document.getElementById('start_date_hour').value = '';
				                document.getElementById('start_date_minute').value = '';                            
                        }

                    </script></td>

															<td width="15%" align="left" class="headngblue">End
																Date:</td>
															<td align="left" width="37%"><input type="hidden"
																name="end_date_year" id="end_date_year" value="2018" />
																<input type="hidden" name="end_date_month"
																id="end_date_month" value="8" /> <input type="hidden"
																name="end_date_day" id="end_date_day" value="1" /> <input
																type="hidden" name="end_date_hour" id="end_date_hour"
																value="15" /> <input type="hidden"
																name="end_date_minute" id="end_date_minute" value="17" />
																<input type="hidden" name="end_date" id="end_date"
																value="" /> <input type="text" id="end_date_value"
																name="end_date_value" readonly="true" /> <img
																src="/OCMMS/plugins/calendar-1.2.0-SNAPSHOT3/images/skin/calendar.png"
																id="end_date-trigger" alt="Date" /> <script
																	type="text/javascript">

                        Calendar.setup({
                            name:"end_date",
                            inputField:"end_date_value",
                            ifFormat:"%d/%m/%Y",
                            button:"end_date-trigger",                            
                            showsTime:false,
                            timeFormat:"24",
                            onUpdate:end_date_updated,
                            singleClick:true,
                            range:[1999,2999],
                            date:new Date(2018,7,1,15,17)
                        });

                        function end_date_updated(calendar) {

                            document.getElementById('end_date').value='struct'
                            document.getElementById('end_date_year').value= calendar.date.getFullYear();
				            document.getElementById('end_date_month').value= calendar.date.getMonth()+1;
				            document.getElementById('end_date_day').value= calendar.date.getDate();

                            if(calendar.showsTime) {
                                document.getElementById('end_date_hour').value= calendar.date.getHours();
				                document.getElementById('end_date_minute').value= calendar.date.getMinutes();
                            }else {
                                document.getElementById('end_date_hour').value = 0;
				                document.getElementById('end_date_minute').value = 0;
                            }

                        }

                        function end_date_clean() {
                                document.getElementById('end_date').value='';
                                document.getElementById('end_date_value').value=''
                                document.getElementById('end_date_year').value= '';
				                document.getElementById('end_date_month').value= '';
				                document.getElementById('end_date_day').value= '';
                                document.getElementById('end_date_hour').value = '';
				                document.getElementById('end_date_minute').value = '';                            
                        }

                    </script></td> -->
														</tr>
														<tr bgcolor="#E8F6F9">
															<td align="left" class="headngblue">Region:</td>
															<td align="left"><select name="regionName"
																class="txt4" id="regionName">
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
															</select></td>
														</tr>


													</table>


													<table width="100%" align="center">

														<tr>
															<td align="center"><input type="submit" name="save"
																value="Search" class="actionbutton"></td>

														</tr>

													</table>

													<table width=100% align="center" cellpadding="0"
														cellspacing="0" class="tab-txt">
														<tr>
															<td colspan="9" align="center"><span
																class="headngblue">Performance report of regional
																	officers on the basis of Application Disposal of
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
														<tr width="100%" bgcolor="#CCFFCC">
															<td align="center" class="headngblue" rowspan="2">Region
																Name</td>
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





														<%
try{

while(resultSet.next()){
%>


														<table>
															<tr class="odd">
																<td align="center" class="headngblue" rowspan="5">
																	<%=resultSet.getString("branch_region") %>
																</td>


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

															<tr class="odd">
																<td align="center" class="headngblue" rowspan="5">
																	<%=resultSet.getString("branch_region") %>
																</td>


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
															<tr class="odd">
																<td align="center" class="headngblue" rowspan="5">
																	<%=resultSet.getString("branch_region") %>
																</td>


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
															<tr class="odd">
																<td align="center" class="headngblue" rowspan="5">
																	<%=resultSet.getString("branch_region") %>
																</td>


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
															<tr class="odd">
																<td align="center" class="headngblue" rowspan="5">
																	<%=resultSet.getString("branch_region") %>
																</td>


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
															<tr class="odd">
																<td align="center" class="headngblue" rowspan="5">
																	<%=resultSet.getString("branch_region") %>
																</td>


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
															<tr class="odd">
																<td align="center" class="headngblue" rowspan="5">
																	<%=resultSet.getString("branch_region") %>
																</td>


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


															<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
														
</html>