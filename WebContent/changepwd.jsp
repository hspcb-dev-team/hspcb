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
<title>HSPCB Home Page</title>

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
<form action="changePassword" method="post">
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
<!-- 												<td width="100%" valign="top" align="left"><img -->
<!-- 													src="/WEB-INF/images/header1.JPG/" -->
<!-- 													alt="Haryana State Pollution Control Board" width="100%" -->
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
						id="misId" onclick="changeColor(this.id)" class="top-lnks">MIS</span></a></td>
				<td valign="middle" align="center"><a class="special" href="ieca.jsp"><span
						id="inspectionManagementId" onclick="changeColor(this.id)"
						class="top-lnks">Information Education Communication
							Activities</span></a></td>				
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
												<td class="top-lnks" align="right">Date :&nbsp;6/8/2018</td>
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
				<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" id="countrytabs">
                            <tbody align="center"><tr>
                                  <th><h2>User Management</h2><br/></th>

							</tr>
	    </tbody></table>
				
          <div id="country1" style="display: block;">
			
			<table width="95%" border="0" align="center" cellpadding="2" cellspacing="1" class="tblbdr">
			 
				 <tbody><tr bgcolor="#F4F7FB">
                            
								<td width="40%" align="right" bgcolor="#A8DAF3" class="headngblue">Username *: </td>
                            <td width="60%" align="left" bgcolor="#E8F6F9" style="color:black" class="txt style6">  <input name="uid_change" type="text" class="txt4" value=""></td>
                          </tr>
                         
                          <tr align="center" bgcolor="#F4F7FB">
                            <td align="right" valign="middle" bgcolor="#A8DAF3" class="headngblue">Old Password*:</td>
                            <td align="left" bgcolor="#E8F6F9" class="txt"><input maxlength="25" name="old_change" type="password" id="old" class="txt4">
                            <span class="txt4">(enter old password)</span></td>
                          </tr>
                         
                          <tr bgcolor="#F4F7FB">
                            <td align="right" bgcolor="#A8DAF3" class="headngblue">Enter New Password *: </td>
                            <td align="left" bgcolor="#E8F6F9" class="txt style6">
                            <input name="newPass1_change" id="newPass1" type="password" class="txt4">
                            <span class="txt4">(enter new password)</span></td>
                          </tr>
                          
                          <tr bgcolor="#F4F7FB">
                            <td align="right" bgcolor="#A8DAF3" class="headngblue"> Re-type New Password*: </td>
                            <td align="left" bgcolor="#E8F6F9" class="txt style6">
                            <input name="newPass2_change" id="newPass2" type="password" onblur="setChangePass()" class="txt4">
                            <span class="txt4">(re-enter password)</span></td>
                          </tr>
                          <tr>
        	 
                        </tr></tbody></table>
						<table width="95%" border="0" align="center" cellpadding="2" cellspacing="1">
              <tbody><tr align="center">
<!--                      <td align="left" valign="middle" class="txt"> <font color="red">*Please follow the password format as (1 Special character(only @,#,$), 1 number and min 8 character in length and maximum 15 character in length)</font></td> -->
               </tr>
       </tbody></table>   
						
						
	   <table width="95%" align="center">
	   		<tbody><tr>
	   		<td colspan="3">&nbsp;</td>
	   		</tr>
		  <tr>
			<td align="right"><input type="submit" name="Update" value="Update"  class="actionbutton"></td>
			<td align="left"><input type="reset" name="reset" value="Reset" class="actionbutton"></td>			
		  </tr>
		</tbody></table>
				</td>
			</tr>
		</tbody>
	</table>

<!-- 	</tbody> -->
<!-- 	</table> -->


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
</form>

</body>

</html>