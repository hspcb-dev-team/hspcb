<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HSPCB Admin</title>
<link href="/WEB-INF/primary-menu.css" rel="stylesheet" />
<link href="/WEB-INF/normalize.css" rel="stylesheet" />
<link href="/WEB-INF/elements.css" rel="stylesheet" />
<link href="/WEB-INF/colors.css" rel="stylesheet" />
<link href="/WEB-INF/layout.css" rel="stylesheet" />
<link href="/WEB-INF/header.css" rel="stylesheet" />
</head>
<body bgcolor="#E8F6F9">
<center>
<style>

.clearfix:after {
  content: "";
  display: table;
  clear: both;
}


.region-header,
.region-header a,
.region-header li a.is-active,
.site-branding__text,
.site-branding,
.site-branding__text a,
.site-branding a,
.region-secondary-menu .menu-item a,
.region-secondary-menu .menu-item a.is-active {
  color: #fffeff;
}

#header {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
.header .section {
	position: relative;
}
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

</style>

	<form action="forgotPassword" method="post" name="myform" id="myform">
		<div class="clearfix region region-header">
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
<div id="block-indianemblem-2" class="block block-block-content block-block-content15b387d2-5239-4f83-8523-b73d4f146e9e">
  
    
      <div class="content" tabindex="0">
      
            <div class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"><div class="harygovt"><a href="http://www.haryana.gov.in" target="_blank" title="Haryana Government logo">
<!--             <img alt="Haryana Govt logo" src="/WEB-INF/haryana-govt1_1.png/"/> -->
            </a>  </div>
</div>
      
    </div>
  </div>

  </div> <br/> <br/>
		<!-- 		<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" id="countrytabs"> -->
		<!--                             <tbody align="center"><tr> -->

		<!-- 							</tr> -->
		<!-- 	    </tbody></table> -->

		<div id="country1" style="border:threeddarkshadow; outline-color; color: olive;" align="center">
		<h2 width="55%" style="width: 577px;">
			<span id="forgot_label">Reset Password</span>
		</h2>

			<table width="55%" border="1" align="center" cellpadding="2"
				cellspacing="1" class="tblbdr" style="width: 577px; height: 237px" bgcolor="#F4F7FB">

				<tbody>

					<tr bgcolor="#F4F7FB">

						<td width="40%" align="right" bgcolor="#E8F6F9" class="headngblue">Employee
							ID *:</td>
						<td width="60%" align="left" bgcolor="#E8F6F9"
							style="color: black" class="txt style6"><input
							name="uid_forgot" type="text" class="txt4" value=""
							style="width: 180px;"></td>
					</tr>

					<tr bgcolor="#F4F7FB">
						<td align="right" bgcolor="#E8F6F9" class="headngblue">Enter
							New Password *:</td>
						<td align="left" bgcolor="#E8F6F9" class="txt style6"><input
							name="newPass1_forgot" id="newPass1" type="password" class="txt4"
							style="width: 180px;"> <span class="txt4">(enter
								new password)</span></td>
					</tr>

					<tr bgcolor="#F4F7FB">
						<td align="right" bgcolor="#E8F6F9" class="headngblue">
							Re-type New Password*:</td>
						<td align="left" bgcolor="#E8F6F9" class="txt style6"><input
							name="newPass2_forgot" id="newPass2" type="password"
							onblur="setChangePass()" class="txt4" style="width: 180px;">
							<span class="txt4">(re-enter password)</span></td>
					</tr>
					
					<tr>
										
						<td align="right" style="height: 57px;" bgcolor="#E8F6F9"><h2><input type="submit" name="Update"
							value="Update" onclick="/changePassword" class="actionbutton" style="width: 90px; height: 39px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2></td>
						<td style="height: 59px; " bgcolor="#E8F6F9"><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="reset"
							value="Reset" class="actionbutton" style="width: 90px; height: 39px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp">Home</a></h2></td>
					</tr>
				</tbody>
			</table>
			<!-- 						<table width="95%" border="0" align="center" cellpadding="2" cellspacing="1"> -->
			<!--               <tbody><tr align="center"> -->
			<!--                      <td align="left" valign="middle" class="txt"> <font color="red">*Please follow the password format as (1 Special character(only @,#,$), 1 number and min 8 character in length and maximum 15 character in length)</font></td> -->
			<!--                </tr> -->
			<!--        </tbody></table>    -->


<!-- 			<table width="95%" align="center"> -->
<!-- 				<tbody> -->
					<!-- 	   		<tr> -->
					<!-- 	   		<td colspan="3">&nbsp;</td> -->
					<!-- 	   		</tr> -->
					<tr>
<!-- 						<td align="right"><input type="submit" name="Update" -->
<!-- 							value="Update" onclick="/changePassword" class="actionbutton"></td> -->
<!-- 						<td align="left"><input type="reset" name="reset" -->
<!-- 							value="Reset" class="actionbutton"></td> -->
<!-- 					</tr> -->
<!-- 				</tbody> -->
<!-- 			</table> -->

			<!-- 		<input type="hidden" name="smsChangePswd" id="smsChangePswd" value=""> -->

			<!--             <br> -->
			<!--             <br> -->
		</div>
	</form>
	</center>
</body>
</html>