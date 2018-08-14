<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HSPCB Admin</title>
</head>
<body>
	<form action="forgotPassword" method="post" name="myform" id="myform">
		<!-- 		<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" id="countrytabs"> -->
		<!--                             <tbody align="center"><tr> -->

		<!-- 							</tr> -->
		<!-- 	    </tbody></table> -->

		<div id="country1" style="border:threeddarkshadow; outline-color; color: olive;" align="center">
		<h2 width="55%" style="width: 577px;">
			<span id="forgot_label" >Reset Password</span>
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
</body>
</html>