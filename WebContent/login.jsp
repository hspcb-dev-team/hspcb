<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Haryana State Pollution Control Board</title>
</head>
<body>
	<form action="home" method="post">
	
	 <div class="sidebar-second" style="width: 35%;">
              <div class="soft" >
   <h2 tabindex="0"><span id="dnn_ctr6335_dnnTITLE_titleLabel11" class="TitleH2">HSPCB Login</span></h2>
    
        <div class="col-md-4 col-md-offset-7">
            <div class="panel panel-default">
               <div class="flip">
                <div class="panel-body">
                        <div class="form-group">
                            <h2 style="background:transparent"> <span id="Label3" style="color:black;">Username : </span></h2>
                            <div class="col-sm-9">
                               <input name="username" type="text" id="txtusername" tabindex="1" placeholder="Enter Username" class="form-control form-control-lg" style="width: 90%;margin-bottom: 0px;" />
                                            <span controltovalidate="txtusername" focusOnError="t" errormessage="Please Enter Username" display="Dynamic" id="RequiredFieldValidator3" evaluationfunction="RequiredFieldValidatorEvaluateIsValid" initialvalue="" style="display:none;">*</span>
                                            <span controltovalidate="txtusername" errormessage="Invalid User Name" display="None" id="RegularExpressionValidator3" evaluationfunction="RegularExpressionValidatorEvaluateIsValid" validationexpression="[aA-zZ0-9@`*#$^&amp;_()]*" style="font-size:12pt;display:none;"></span>
                            </div>
                        </div>
                        <div class="form-group">
                             <h2 style="background:transparent">  <span id="Label5">Password : </span></h2>
                            <div class="col-sm-9">
                               <input name="userpass" type="password" autocomplete="off" id="txtpwd" tabindex="2" class="form-control" placeholder="Enter Password" onblur="return EncryptPassword(&#39;138793879&#39;);" style="width: 90%;margin-bottom: 0px;" />
                                        <span controltovalidate="txtpwd" focusOnError="t" errormessage="Please Enter a Password" display="Dynamic" id="RequiredFieldValidator4" evaluationfunction="RequiredFieldValidatorEvaluateIsValid" initialvalue="" style="display:none;">*</span>
                                        <span controltovalidate="txtpwd" errormessage="Invalid Password" display="None" id="RegularExpressionValidator4" evaluationfunction="RegularExpressionValidatorEvaluateIsValid" validationexpression="[aA-zZ0-9@`*#$^&amp;_()]*" style="font-size:12pt;display:none;"></span>
                            </div>
                        </div>
                        <div class="form-group">
                           <h2 style="background:transparent">  <span id="Label6">Enter Text : </span></h2>
                            <div  class="col-sm-offset-3 col-sm-9">
                                  <input name="_ctl0:ContentPlaceHolder1:txtCaptcha" type="text" maxlength="5" id="txtCaptcha" tabindex="3" class="form-control" Placeholder="Enter Text" autocomplete="off" style="width: 90%;margin-bottom: 10px;" />
                                            <span controltovalidate="txtCaptcha" focusOnError="t" errormessage="Enter Text as Shown in Image" id="RequiredFieldValidator1" evaluationfunction="RequiredFieldValidatorEvaluateIsValid" initialvalue="" style="font-size:12pt;visibility:hidden;">*</span>
                                            <span controltovalidate="txtCaptcha" errormessage="Enter Only Numbers" id="RegularExpressionValidator1" evaluationfunction="RegularExpressionValidatorEvaluateIsValid" validationexpression="\d+" style="font-size:12pt;visibility:hidden;">*</span>
                                 <img id="imgCaptcha" class="cap-img" src="Admin/GetImage.aspx" />
                            </div>
                            </div>
                        
                        <div class="form-group" style="text-align: center;">
                            <div class="col-sm-offset-3 col-sm-9">
                                 <div class="watermark">
                                        <input type="submit" name="_ctl0:ContentPlaceHolder1:btnLogin" value="Login"  language="javascript" id="btnLogin" class="button" style="vertical-align:middle;" />
                        
                                    </div>
                            </div>
                        </div>
                          <div class="form-group" style="text-align: center;">
                               <div class="col-sm-offset-3 col-sm-9">
                                     <strong><span style="">Office Login for Division and Sub Division</span></strong> 
                                   </div>
                          </div>
                </div>
                   </div>
            </div>
        </div>
    
	
<!-- 		Name:<input type="text" name="username" /><br /> -->
<!-- 		<br /> Password:<input type="password" name="userpass" /><br /> -->
<!-- 		<br /> <input type="submit" value="login" /> -->
	</form>
</body>
</html>