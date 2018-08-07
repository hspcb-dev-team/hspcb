<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.hspcb.bean.ConsentData"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> 
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

	<table width="1003" cellspacing="0" cellpadding="0" border="0"
		align="center">
		<tbody>
			<tr>
				<td valign="top" align="left"><table width="100%"
						cellspacing="0" cellpadding="0" border="0">
						<tbody>
							<tr>
								<td class="bgtop" valign="top" height="91" align="left">
									<!-- code for spcbHeader  -->
									<table width="1003" cellspacing="0" cellpadding="0" border="0">
										<tbody>
											<tr>
												<td width="1003" valign="top" align="left"><img
													src="/WEB-INF/images/header.JPG"
													alt="Online Consent Management System" width="1000"
													height="91"></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td valign="top" height="32"
									background="/WEB-INF/images2/gif/button_BG.gif" align="left">
									<!-- code for menuAdminHorizontal--> <script
										src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
										
									</script> <script type="text/javascript">
	jQuery.noConflict();
	function changeColor(id) {
		jQuery.ajax({
			url : '/OCMMS/userMaster/ajaxHorizontalMenu' + '?id=' + id,
			success : function(resp) {
				// only purpose of this method is to set the session and this can be used when setColor function is called at
				// bottom of this page
			},
			error : function(req, status, err) {
				console.log('something went wrong', status, err);
				// alert("error: " + err);
			}
		});

	}
</script>
									<table width="1003" cellspacing="0" cellpadding="0" border="1">

										<tbody>
											<tr>
												<td valign="middle" height="32" align="center"><a
													href="#"><span id="homeId"
														onclick="changeColor(this.id)" class="top-lnks">Home</span></a>
													<!-- <a href="/OCMMS/userMaster/openSpcbHome"><span class="top-lnks">Home</span></a> -->
												</td>

												<td width="1" valign="top"
													background="/WEB-INF/images2/gif/button_spacer.gif"
													align="center"></td>
												<td valign="middle" align="center"><a href="#"><span
														id="misId" onclick="changeColor(this.id)" class="top-lnks">MIS</span></a></td>

												<td width="2" valign="top"
													background="/WEB-INF/images2/gif/button_spacer.gif"
													align="center"></td>
												<td valign="middle" align="center"><a class="special"
													href="#"><span id="inspectionManagementId"
														onclick="changeColor(this.id)" class="top-lnks">Information
															Education Communication Activities</span></a></td>

												<td width="2" valign="middle"
													background="/WEB-INF/images2/gif/button_spacer.gif"
													align="center"></td>
												<td valign="middle" align="center"><a href="#"><span
														class="top-lnks" id="logoutId"
														onclick="changeColor(this.id)">Logout</span></a></td>
												<td width="2" valign="middle"
													background="/WEB-INF/images2/gif/button_spacer.gif"
													align="center"></td>

											</tr>
										</tbody>
									</table> <script>
										function setColor() {
											var obj = obj.style.color = "#00FFFF";
										}
										setColor();
									</script>
									<table width="100%" cellspacing="0" cellpadding="0" border="0">
										<tbody>
											<tr>
												<td valign="top" height="31"><table width="224"
														cellspacing="0" cellpadding="0" border="0">
														<tbody>
															<tr>
																<td width="6" valign="top" align="left"><img
																	src="/WEB-INF/images2/gif/left_nav.gif" width="6"
																	height="31"></td>
																<td width="218" valign="middle" height="31"
																	background="/WEB-INF/images2/gif/left_midlle.gif"
																	align="left"><table width="218" cellspacing="0"
																		cellpadding="0" border="0">
																		<tbody>
																			<tr>
																				<td width="11" valign="middle" align="left"><img
																					src="/WEB-INF/images2/gif/bullet.gif" width="11"
																					height="10"></td>
																				<td>
																					<!--<a href="#" ><span class="leftlink">User Profile</span></a>-->
																					&nbsp;&nbsp;&nbsp;<a href="adduser.jsp"><span
																						id="userManagementId"
																						onclick="changeColor12(this.id)"> User
																							Management</span></a>
																				</td>
																			</tr>
																		</tbody>
																	</table></td>
															</tr>
														</tbody>
													</table></td>
											</tr>

											<tr>
												<td valign="top"><table width="224" cellspacing="0"
														cellpadding="0" border="0">
														<tbody>
															<tr>
																<td width="6" valign="top" align="left"><img
																	src="/WEB-INF/images2/gif/left_nav.gif" width="6"
																	height="31"></td>
																<td width="218" valign="middle" height="31"
																	background="/WEB-INF/images2/gif/left_midlle.gif"
																	align="left"><table width="218" cellspacing="0"
																		cellpadding="0" border="0">
																		<tbody>
																			<tr>
																				<td width="11" valign="middle" align="left"><img
																					src="/WEB-INF/images2/gif/bullet.gif" width="11"
																					height="10"></td>
																				<td>&nbsp;&nbsp;&nbsp;<a href="changepwd.jsp"><span
																						id="changePasswordId"
																						onclick="changeColor12(this.id)"
																						style="color: rgb(50, 205, 50);">Change
																							Password</span></a></td>
																			</tr>

																			<tr>
																				<td valign="top" height="3"></td>
																			</tr>
																		</tbody>
																	</table></td>
															</tr>

														</tbody>
													</table></td>
											</tr>


										</tbody>
									</table> <script>
										function setColor12() {
											var obj12 = changePasswordId
											obj12.style.color = "#32CD32";
										}
										setColor12();
									</script>

								</td>
<!-- 								<td width="1" valign="top" bgcolor="#ADBFCB" align="left"></td> -->
<!-- 								<td width="778" valign="top" align="left"> -->
								<table
										width="100%" cellspacing="0" cellpadding="0" border="0">
										<tbody>
											<tr>
												<td valign="top" height="1"></td>
											</tr>
											<tr>
												<td><img src="/OCMMS/images2/img.jpg" width="778"
													height="134"></td>
											</tr>
											<tr>
												<td height="24" bgcolor="#EEEEF3">
													<table width="100%">

														<tbody>
															<tr bgcolor="#4C8BC0">
																<td class="top-lnks">
																	<table width="100%">
																		<tbody>
																			<tr height="10px">
																				<%
																					String user = (String) session.getAttribute("uid");
																				%>
																				<td>Welcome <%=user%> (employee)
																				</td>
																				<td class="top-lnks" align="right">Date
																					:&nbsp;6/8/2018</td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<tr>
                                <td valign="top" height="0" align="left"><table width="100%" cellspacing="0" cellpadding="0" border="0">
                                    <tbody><tr><!-- Div area for errors-->
                                        <td valign="top" align="center"><div style="width:400px; height:20px; vertical-align:middle">&nbsp;</div>
                                        </td>
                                    </tr>
<!--									<tbody> -->
<!-- 											<tr> -->
<!-- 												<td width="59" valign="top" align="left">&nbsp;</td> -->
<!-- 											</tr> -->
<!-- 										</tbody> -->

									</table>
	<table align="center" cellpadding="0" cellspacing="0" class="tab-txt">
		<tr>
			<td colspan="9" align="center"><span class="headngblue"><h2>Performance
						report of regional officers on the basis of Application Disposal
						of CTE/CTO/HWM/BMW/E-Waste/Plastic Waste</h2> </span></td>
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
		Connection connection = DriverManager.getConnection(connectionUrl + database, userid, password);
		Statement statement = connection.createStatement();
		String sql = "select * from hspcb.PerformanceReport";
		ResultSet resultSet = statement.executeQuery(sql);
	%> 
	<table border="1">
		<tr bgcolor="#CCFFCC">
			<!-- 			<td align="center" class="headngblue" rowspan="2">Region Name</td> -->
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


<!-- 		<tr class="odd"> -->
<!-- 			<td align="center" class="headngblue" rowspan="5"><td>Bahadurgarh</td> -->
<!-- 			</td> -->
			<%-- <tr>
			<c:forEach items="${consentList}" var="item">
     <td>  ${item}</td><br>
</c:forEach> --%>
			
			</tr>
			<%-- <% List<ConsentData> consentData = (ArrayList<ConsentData>)request.getAttribute("consentList");
 
    for(ConsentData consentData1 : consentData)
    {  %>
       <td><%= consentData1.getApplication_Type()%></td>

			<td><%=consentData1.getTotal_Appln_Received()%></td>

			<td><%=consentData1.getAppln_no_30d()%></td>

			<td><%=consentData1.getAppln_per_30d()%>%</td>

			<td><%=consentData1.getAppln_no_31_45d()%></td>

			<td><%=consentData1.getAppln_per_31_45d()%></td>

			<td><%=consentData1.getAppln_no_beyond45d()%></td>

			<td><%=consentData1.getAppln_per_beyond45d()%></td>

			<td><%=consentData1.getPending_Appln_no()%></td>

			<td><%=consentData1.getPending_Appln_per()%></td>

			<td><%=consentData1.getPending_Appln_no_gt45d()%></td>

			<td><%=consentData1.getPending_Appln_per_gt45d()%></td>
    	
        
 <% } %> --%>

			
			
			<%-- 
				<%
					try {
						while (resultSet.next()) {
				%>
            
			<td><%=resultSet.getString("Application_Type")%></td> --%>

		<!-- 		<tr class="odd"> -->
		<!-- 			<td align="center" class="headngblue" rowspan="5"><td>Bahadurgarh</td> -->
		<!-- 			</td> -->


		<%
			try {
				while (resultSet.next()) {
		%>

		<td><%=resultSet.getString("Application_Type")%></td>

		<td><%=resultSet.getString("Total_Appln_Received")%></td>

		<td><%=resultSet.getString("Appln_no_30d")%></td>

		<td><%=resultSet.getString("Appln_per_30d")%>%</td>

		<td><%=resultSet.getString("Appln_no_31_45d")%></td>

		<td><%=resultSet.getString("Appln_per_31_45d")%>%</td>

		<td><%=resultSet.getString("Appln_no_beyond45d")%></td>

		<td><%=resultSet.getString("Appln_per_beyond45d")%></td>

		<td><%=resultSet.getString("Pending_Appln_no")%></td>

		<td><%=resultSet.getString("Pending_Appln_per")%></td>

		<td><%=resultSet.getString("Pending_Appln_no_gt45d")%></td>

		<td><%=resultSet.getString("Pending_Appln_per_gt45d")%></td>

		</tr>

		<%
			}

			} catch (Exception e) {
				connection.close();
				e.printStackTrace();
			}

		%> 
 </table> 

	</table>
									<!--</div>
									
									</div></td>
							</tr>

						</tbody>
					</table></td>
			</tr>

		</tbody>
	</table>
	</td>
	</tr>
	</tbody>
	</table>
	</td>
	</tr> -->

	</tbody>
	</table>
	</td>
	</tr> 
	</tbody>
	</table>


	<style type="text/css">
<!--
.footer_bottom {
	background: #3670a1;
	padding: 0px 3px 15px 13px;
	height: 25px;
	color: #fff;
	font-family: "Open Sans", Helvetica, Arial, sans-serif;
	font-size: 11px;
	line-height: 20px;
	margin-bottom: 0px;
}

.center-position {
	text-align: center !important;
}
-->
</style>

	<link href="css/layout.css" rel="stylesheet">
	<!--footer_bottom start-->
	</td>
	</tr>
	<tr>
		<td>
			<section class="footer_bottom">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-12 center-position">
							Site designed, hosted by Haryana State Pollution Control Board <br>©
							Content Owned, Updated and Maintained by Haryana State Pollution
							Control Board
							<p></p>
						</div>
					</div>
				</div>
			</section>
		</td>
	</tr>
	<!--footer_bottom end-->



	</tbody>
	</table>




</body>

</html>