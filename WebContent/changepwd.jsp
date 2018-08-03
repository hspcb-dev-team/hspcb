<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HSPCB Admin</title>
</head>
<body>
<form action="changePassword" method="post" name="myform" id="myform">
		<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" id="countrytabs">
                            <tbody align="center"><tr>
                                  <th><h2>User Management</h2><br/></th>
<!--                               <td width="11"><img src="/OCMMS/images2/gif/industry_details_left.gif" width="11" height="27"></td> -->
<!--                               <td width="147" align="center" background="/OCMMS/images2/gif/industry_details_middle.gif" class="top-lnks"><a href="#" rel="country1" class="selected">Change Password</a></td> -->
<!--                               <td width="11" valign="bottom"><img src="/OCMMS/images2/gif/industry_details_right.gif" width="11" height="27"></td> -->
<!-- 							  <td width="432">&nbsp;</td> -->
							</tr>
	    </tbody></table>
				
          <div id="country1" style="display: block;">
			
			<table width="95%" border="0" align="center" cellpadding="2" cellspacing="1" class="tblbdr">
			 
				 <tbody><tr bgcolor="#F4F7FB">
                            
								<td width="40%" align="right" bgcolor="#A8DAF3" class="headngblue">Username *: </td>
                            <td width="60%" align="left" bgcolor="#E8F6F9" style="color:black" class="txt style6">  <input name="id" type="text" class="txt4" value=""></td>
                          </tr>
                         
                          <tr align="center" bgcolor="#F4F7FB">
                            <td align="right" valign="middle" bgcolor="#A8DAF3" class="headngblue">Old Password*:</td>
                            <td align="left" bgcolor="#E8F6F9" class="txt"><input maxlength="25" name="old" type="password" id="old" class="txt4">
                            <span class="txt4">(enter old password)</span></td>
                          </tr>
                         
                          <tr bgcolor="#F4F7FB">
                            <td align="right" bgcolor="#A8DAF3" class="headngblue">Enter New Password *: </td>
                            <td align="left" bgcolor="#E8F6F9" class="txt style6">
                            <input name="newPass1" id="newPass1" type="password" class="txt4">
                            <span class="txt4">(enter new password)</span></td>
                          </tr>
                          
                          <tr bgcolor="#F4F7FB">
                            <td align="right" bgcolor="#A8DAF3" class="headngblue"> Re-type New Password*: </td>
                            <td align="left" bgcolor="#E8F6F9" class="txt style6">
                            <input name="newPass2" id="newPass2" type="password" onblur="setChangePass()" class="txt4">
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
		
		<input type="hidden" name="smsChangePswd" id="smsChangePswd" value="">
  			
            <br>
            <br>
          </div></form>
</body>
</html>