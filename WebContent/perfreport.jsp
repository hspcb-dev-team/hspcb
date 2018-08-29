 <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import="java.sql.DriverManager"%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.hspcb.bean.ConsentData"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>Performance Report</title>

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

<!-- 	<table width="100%" cellspacing="0" cellpadding="0" border="0" -->
<!-- 		align="center"> -->
<!-- 		<tbody> -->
<!-- 			<tr> -->
<!-- 				<td valign="top" align="left"><table width="100%" -->
<!-- 						cellspacing="0" cellpadding="0" border="0"> -->
<!-- 						<tbody> -->
<!-- 							<tr> -->
<!-- 								<td class="bgtop" valign="top" height="91" align="left"> -->
<!-- 									code for Header  -->
<!-- 									<table width="100%" cellspacing="0" cellpadding="0" border="0"> -->
<!-- 										<tbody> -->
<!-- 											<tr> -->
<!-- 												<td width="1003" valign="top" align="left"><img -->
<!-- 													src="/WEB-INF/images/header.JPG" -->
<!-- 													alt="Haryana State Pollution Control Board" width="1000" -->
<!-- 													height="91"></td> -->
<!-- 											</tr> -->
<!-- 										</tbody> -->
<!-- 									</table> -->
<!-- 								</td> -->
<!-- 							</tr> -->
<!-- 						</tbody> -->
<!-- 					</table></td> -->
<!-- 			</tr> -->
<!-- 		</tbody> -->
<!-- 	</table> -->
		<table width="100%" cellspacing="0" cellpadding="0" border="1">

		<tbody>
			<tr>
				<td valign="middle" height="32" align="center"><a href="welcome.jsp"><span
						id="homeId" onclick="changeColor(this.id)" class="top-lnks">Home</span></a>
					<!-- <a href="/OCMMS/userMaster/openSpcbHome"><span class="top-lnks">Home</span></a> -->
				</td>
				<td valign="middle" align="center"><a href="perfreport.jsp"><span
						id="misId" onclick="changeColor(this.id)" class="top-lnks">MIS</span></a>
						
				<!-- <select name="regionName" class="txt4" id="regionName" >
<a href="secques.jsp"><option value="All">Officers Performance Report</option></a>
<option value="Bahadurgarh" >Sub-Region Wise Report</option>
</select>		
					 -->	
						</td>
				<!-- <td valign="middle" align="center"><a class="special" href="ieca.jsp"><span
						id="inspectionManagementId" onclick="changeColor(this.id)"
						class="top-lnks">Information Education Communication
							Activities</span></a></td>	 -->			
				<td valign="middle" align="center"><a href="index.jsp"><span
						class="top-lnks" id="logoutId" onclick="changeColor(this.id)">Logout</span></a></td>				
			</tr>
		</tbody>
	</table>
	<script>
		function setColor() {
			var obj = obj.style.color = "#00FFFF";
		}
		setColor();
	</script>
	<table width="100%" cellspacing="1" cellpadding="1" border="1">
		<tbody>
		<br/>
			<tr>
				<td valign="top" height="31"><table width="224" cellspacing="0"
						cellpadding="0" border="0">
						<tbody>
							<tr>
								<!-- 								<td width="6" valign="top" align="left"><img -->
								<!-- 									src="/WEB-INF/images2/gif/left_nav.gif" width="6" height="31"></td> -->
								<td width="218" valign="middle" height="31"
									background="/WEB-INF/images2/gif/left_midlle.gif" align="left">
									<table width="218" cellspacing="0" cellpadding="0" border="0">
										<tbody>
											<tr>
												<td>
													<!-- 													<a href="#" ><span class="leftlink">User Profile</span></a> -->
													&nbsp;&nbsp;&nbsp;<a href="adduser.jsp"><span
														id="userManagementId" onclick="changeColor12(this.id)">
															User Management</span></a>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table><br/></td>

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
												<td class="top-lnks" align="right">Date :<%= (new java.util.Date().toLocaleString()) %></td>
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
				<td valign="top"><table width="224" cellspacing="0"
						cellpadding="0" border="0">
						<tbody>
							<tr>
								
								<td>&nbsp;&nbsp;&nbsp;<a href="changepwd.jsp"><span
										id="changePasswordId" onclick="changeColor12(this.id)"
										style="color: rgb(50, 205, 50); " >Change Password</span></a></td>

							</tr>
						</tbody>
					</table><br/></td>
				<td>
			 	<form action="ConsentData" method="post"> 
				<table>
				
				
				<tr bgcolor="#E8F6F9" >
                                                    <td  align="left"  class="headngblue">Region:</td>
                                                    
                                                    <td align="left" >

                                                        <select name="regionName" class="txt4" id="regionName" >
<option value="All">All</option>
<option value="Bahadurgarh" >Bahadurgarh</option>
<option value="Ballabhgarh" >Ballabhgarh</option>
<option value="Dharuhera" >Dharuhera</option>
<option value="Faridabad" >Faridabad</option>
<option value="Gurgaon North" >Gurgaon North</option>
<option value="Gurgaon South" >Gurgaon South</option>
<option value="Hisar" >Hisar</option>
<option value="Jind" >Jind</option>
<option value="Panchkula" >Panchkula</option>
<option value="Panipat" >Panipat</option>
<option value="Sonipat" >Sonipat</option>
<option value="Yamuna Nagar" >Yamuna Nagar</option>
</select>
                                                    </td>
                                                    <td  align="left"  class="headngblue">Office Type:</td>
                                                    
                                                    <td align="left" >

                                                        <select name="regionName" class="txt4" id="regionName" >
<option value="All">All</option>
<option value="Head Office" >Head Office</option>
<option value="HEPC Office" >HEPC Office</option>
<option value="Regional Office" >Regional Office</option>
<option value="Sub-Region1" >Sub-Region1</option>
<option value="Sub-Region2" >Sub-Region2</option>
<option value="Sub-Region3" >Sub-Region3</option>
<option value="Sub-Region4" >Sub-Region4</option>

</select>
                                                    </td>
                                                    <td  align="left"  class="headngblue"> Application Type</td>
                                                    <td align="left" >
                                                        <select name="applicationType" id="applicationType" >
<option value="All" >All</option>
<option value="Total" >Total</option>
<option value="CTO" >CTO</option>
<option value="Total" >Performance Weightage</option>
</select>
                                                    
                                                </tr>
                                              <!--   <tr>
                                                </td>
                                                    
                                                    <td  align="left"  class="headngblue">Start Date</td>
                                                    <td align="left" >
                                                       <input type="date">
</select>
                                                    </td>
                                                    </td>
                                                    
                                                    <td  align="left"  class="headngblue">End Date</td>
                                                    <td align="left" >
                                                       <input type="date">
</select>
                                                    </td>
                                                </tr> -->

	
				</table>
				
				<table width="100%" align="center">

                                                <tr>
                                                    <td align="center"><input type="submit" name="save" value="Search" class="actionbutton" ></td>

                                                </tr>

                                            </table>
				
				
				 </form> 
				
				
			

	<style type="text/css">

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
							Site designed, hosted by Haryana State Pollution Control Board <br/> ©
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
