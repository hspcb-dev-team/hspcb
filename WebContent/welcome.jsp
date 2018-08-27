<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import="java.sql.DriverManager"%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>
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

<link href="/WEB-INF/primary-menu.css" rel="stylesheet" />
<link href="/WEB-INF/normalize.css" rel="stylesheet" />
<link href="/WEB-INF/elements.css" rel="stylesheet" />
<link href="/WEB-INF/colors.css" rel="stylesheet" />
<link href="/WEB-INF/layout.css" rel="stylesheet" />
<link href="/WEB-INF/header.css" rel="stylesheet" />

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
<center>
<div class="clearfix region region-header" style="border: thin; background: #6ac">
    <div id="block-bartik-branding" class="clearfix site-branding block block-system block-system-branding-block">
  
    
        <a href="index.jsp" title="Department Logo" rel="home" class="site-branding__logo" tabindex="0">
<!--       <img src = "/WEB-INF/logo.jpg/" alt="Department Logo"/> -->
    </a>
        <div class="site-branding__text">
              <div class="site-branding__name">
          <h2><a href="index.jsp" title="Department Name" rel="home">Haryana State Pollution Control Board</a>
        </div>
                    <div class="site-branding__slogan" tabindex="0">Government of Haryana</div>
          </div></h2>
  </div>
<!-- <div id="block-indianemblem-2" class="block block-block-content block-block-content15b387d2-5239-4f83-8523-b73d4f146e9e"> -->
  
    
<!--       <div class="content" tabindex="0"> -->
      
<!--             <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><div class="harygovt"><a href="http://www.haryana.gov.in" target="_blank" title="Haryana Government logo"> -->
<!--             <img alt="Haryana Govt logo" src="/WEB-INF/haryana-govt1_1.png/"/> -->
<!--             </a>  </div> -->
<!-- </div> -->
      
<!--     </div> -->
  </div>
<br/>
<!-- 	<table width="100%" cellspacing="0" cellpadding="0" border="0" -->
<!-- 		align="center"> -->
<!-- 		<tbody> -->
<!-- 			<tr> -->
<!-- 							<td width="100%" valign="top" align="left"><img -->
<!-- 									src="/haryana-govt1_1.png/" alt="Haryana State Pollution Control Board" -->
<!-- 									/></td> -->
			
			
<!-- 				<td valign="top" align="left"><table width="100%" -->
<!-- 						cellspacing="0" cellpadding="0" border="0"> -->
<!-- 						<tbody> -->
<!-- 							<tr> -->
								<!-- 								<td class="bgtop" valign="top" height="91" align="left"> -->
								<!-- code for Header  -->
								<!-- 									<table width="100%" cellspacing="0" cellpadding="0" border="0"> -->
								<!-- 										<tbody> -->
								<!-- 											<tr> -->
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
				<td valign="middle" height="32" align="center"><a
					href="welcome.jsp"><span id="homeId"
						onclick="changeColor(this.id)" class="top-lnks">Home</span></a> <!-- <a href="/OCMMS/userMaster/openSpcbHome"><span class="top-lnks">Home</span></a> -->
				</td>
				<td valign="middle" align="center"><a href="perfreport.jsp"><span
						id="misId" onclick="changeColor(this.id)" class="top-lnks">MIS</span></a></td>
				<!-- <td valign="middle" align="center">
				<a class="special"
					href="ieca.jsp"><span id="inspectionManagementId"
						onclick="changeColor(this.id)" class="top-lnks">Information
							Education Communication Activities</span></a></td> -->
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
			<br />
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
					</table>
					<br /></td>

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
												<td class="top-lnks" align="right">Date <%= (new java.util.Date().toLocaleString()) %></td>
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
										style="color: rgb(50, 205, 50);">Change Password</span></a></td>

							</tr>
						</tbody>
					</table>
					<br /></td>

			</tr>
		</tbody>
	</table>

	<!-- 	</tbody> -->
	<!-- 	</table> -->


	<style type="text/css">
	
	.region-header {
	padding: 7px 0px 4px;
	position: relative;
	background-color: #d8e1ec;
    background-image: linear-gradient(to bottom, #d9e2ec 0%, #d9e2ec 100%);
}
.region-header .site-branding {
	margin-top: 0.429em;
}
.region-content input[type="text"], .region-content input[type="email"], .region-content input[type="url"], .region-content input[type="password"], .region-content input[type="search"] {
	height: 28px;
	padding: 0 6px 0px;
	border: 1px solid #ccc;
	color: #666;
	width: 100%;
}
textarea {
	height: 160px;
	color: #666;
}
.form-item label, .form-wrapper .label {
	color: #333;
	font-size: 1.1em;
	font-weight: normal;
}
input[type="button"], input[type="reset"], input[type="submit"] {
	font-size: 1.1em;
	padding: 3px 13px;
}
input.form-submit:hover, input.form-submit:focus {
	background: #004900;
	border: 1px solid #579b60;
	color: #fff;
}
	
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
	
	
<!-- 	<tr> -->
<!-- 		<td> -->
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/>
			<section class="footer_bottom">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-12 center-position">
							Site designed, hosted by Haryana State Pollution Control Board <br />
							 © Content Owned, Updated and Maintained by Haryana State
							Pollution Control Board
							<p></p>
						</div>
					</div>
				</div>
			</section>
<!-- 		</td> -->
<!-- 	</tr> -->
	<!--footer_bottom end-->



	</tbody>
	</table>

</center>
</body>

</html>