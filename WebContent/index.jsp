<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Haryana State Pollution Control Board</title>
<link href="css/CSS_Home/custom.css" rel="stylesheet" />
<link href="css/CSS_Home/bootstrap.min.css" rel="stylesheet" />
<link href="css/CSS_Home/font-awesome.css" rel="stylesheet" />
<link href="css/CSS_Home/portal.css" rel="stylesheet" />
<link href="css/CSS_Home/skin.css" rel="stylesheet" />
<link href="css/CSS_Home/style.css" rel="stylesheet" />
<link href="css/CSS_Home/fontasom.css" rel="stylesheet" />
<link href="css/CSS_Home/site-footer.css" rel="stylesheet" />
<script src="js/jquery-2.1.1.min.js"></script>

<script src="js/bootstrap.min.js"></script>

<link href="css/CSS_Home/jquerysctipttop.css" rel="stylesheet" />
</head>
<style>
.btnReport {
	background: space;
	border: 2px solid #A74E0C;
	padding: 8px 8px 8px 8px;
}

.btnReport:hover {
	background: #8a3e05;
	color: #fff;
}
</style>
<style>
#mixedSlider {
	position: relative;
}

#mixedSlider .MS-content {
	white-space: nowrap;
	overflow: hidden;
	margin: 0 5%;
}

#mixedSlider .MS-content .item {
	display: inline-block;
	width: 15.3333%;
	height: 100%;
	position: relative;
	vertical-align: top;
	overflow: hidden;
	height: 100%;
	white-space: normal;
	padding: 0 10px;
}

@media ( max-width : 991px) {
	#mixedSlider .MS-content .item {
		width: 50%;
	}
}

@media ( max-width : 767px) {
	#mixedSlider .MS-content .item {
		width: 100%;
	}
}

#mixedSlider .MS-content .item .imgTitle {
	position: relative;
}

#mixedSlider .MS-content .item .imgTitle .blogTitle {
	margin: 0;
	text-align: left;
	letter-spacing: 2px;
	color: #252525;
	font-style: italic;
	position: absolute;
	background-color: rgba(255, 255, 255, 0.5);
	width: 100%;
	bottom: 0;
	font-weight: bold;
	padding: 0 0 2px 10px;
}

#mixedSlider .MS-content .item .imgTitle img {
	height: auto;
	width: 100%;
}

#mixedSlider .MS-content .item p {
	font-size: 16px;
	margin: 2px 10px 0 5px;
	text-indent: 15px;
}

#mixedSlider .MS-content .item a {
	float: right;
	margin: 0 20px 0 0;
	font-size: 16px;
	font-style: italic;
	color: rgba(173, 0, 0, 0.82);
	font-weight: bold;
	letter-spacing: 1px;
	transition: linear 0.1s;
}

#mixedSlider .MS-content .item a:hover {
	text-shadow: 0 0 1px grey;
}

#mixedSlider .MS-controls button {
	position: absolute;
	border: none;
	background-color: transparent;
	outline: 0;
	font-size: 50px;
	top: 29px;
	color: rgba(0, 0, 0, 0.4);
	transition: 0.15s linear;
}

#mixedSlider .MS-controls button:hover {
	color: rgba(0, 0, 0, 0.8);
}

@media ( max-width : 992px) {
	#mixedSlider .MS-controls button {
		font-size: 30px;
	}
}

@media ( max-width : 767px) {
	#mixedSlider .MS-controls button {
		font-size: 20px;
	}
}

#mixedSlider .MS-controls .MS-left {
	left: 0px;
}

@media ( max-width : 767px) {
	#mixedSlider .MS-controls .MS-left {
		left: -10px;
	}
}

#mixedSlider .MS-controls .MS-right {
	right: 0px;
}

@media ( max-width : 767px) {
	#mixedSlider .MS-controls .MS-right {
		right: -10px;
	}
}

#basicSlider {
	position: relative;
}

#basicSlider .MS-content {
	white-space: nowrap;
	overflow: hidden;
	margin: 0 2%;
	height: 50px;
}

#basicSlider .MS-content .item {
	display: inline-block;
	width: 20%;
	position: relative;
	vertical-align: top;
	overflow: hidden;
	height: 100%;
	white-space: normal;
	line-height: 50px;
	vertical-align: middle;
}

@media ( max-width : 991px) {
	#basicSlider .MS-content .item {
		width: 25%;
	}
}

@media ( max-width : 767px) {
	#basicSlider .MS-content .item {
		width: 35%;
	}
}

@media ( max-width : 500px) {
	#basicSlider .MS-content .item {
		width: 50%;
	}
}

#basicSlider .MS-content .item a {
	line-height: 50px;
	vertical-align: middle;
}

#basicSlider .MS-controls button {
	position: absolute;
}

#basicSlider .MS-controls .MS-left {
	top: 35px;
	left: 10px;
}

#basicSlider .MS-controls .MS-right {
	top: 35px;
	right: 10px;
}
</style>
<style type="text/css">
.carousel {
	margin-bottom: 0;
	padding: 0 40px 30px 40px;
}

.carousel-control {
	left: -12px;
	height: 40px;
	width: 40px;
	background: none repeat scroll 0 0 #222222;
	border: 4px solid #FFFFFF;
	border-radius: 23px 23px 23px 23px;
	margin-top: 90px;
}

.carousel-control.right {
	right: -12px;
}
/* The indicators */
.carousel-indicators {
	right: 50%;
	top: auto;
	bottom: -10px;
	margin-right: -19px;
}
/* The colour of the indicators */
.carousel-indicators li {
	background: #cecece;
}

.carousel-indicators .active {
	background: #428bca;
}
</style>

<style type="text/css">
body {
	font-family: Arial;
	font-size: 14px;
}

.font-button {
	background-color: #FFC107;
	height: 30px;
	width: 30px;
	border-radius: 17px;
	display: inline-block;
	color: #fff;
	text-align: center;
	line-height: 28px;
	font-size: 25pt;
	cursor: pointer;
}
</style>

<body>

	<style>
	
.link-g{
color:#2d4d03;
text-decoration:none;
}	
	
.form-control {
	border-radius: 0px;
	margin: 12px 3px;
	height: 40px;
}

.logo {
	margin: auto;
	text-align: center;
	padding-top: 20%;
}

.logo img {
	height: 70px;
}
/*footer*/
.footer a {
	color: #000;
	text-decoration: none;
}

.footer {
	color: #000;
	text-align: center;
}
/*footer end*/

/*for logintemplate blue*/
.grayBody {
	background-color: #E9E9E9;
}

.loginbox {
	margin-top: 5%;
	border-top: 6px solid #0088D8;
	background-color: #fff;
	padding: 20px;
	box-shadow: 0 10px 10px -2px rgba(0, 0, 0, 0.12), 0 -2px 10px -2px
		rgba(0, 0, 0, 0.12);
}

.singtext {
	font-size: 28px;
	color: #0088D8;
	font-weight: 500;
	letter-spacing: 1px;
}

.submitButton {
	background-color: #0088D8;
	color: #fff;
	margin-top: 12px;
	margin-bottom: 10px;
	padding: 10px 0px;
	width: 100%;
	margin-left: 2px;
	font-size: 16px;
	border-radius: 0px;
	outline: none;
}

.submitButton:hover, .submitButton:focus {
	color: #fff;
	outline: none;
}

.forGotPassword {
	background-color: #F2F2F2;
	padding: 15px 0px;
	text-align: center;
}

.forGotPassword:hover {
	box-shadow: 0 10px 10px -2px rgba(0, 0, 0, 0.12);
}

.forGotPassword a {
	color: #000;
	outline: none;
}

.forGotPassword a:hover, .forGotPassword a:active, .forGotPassword a:focus
	{
	text-decoration: none;
	outline: none;
}

.expand-container {
	width: 100%;
	/*border:1px solid #d3d3d3;*/
}
/*.expand-container div {
    width:100%;
}*/
.expand-container .header {
	background-color: #fff;
	padding: 2px;
	cursor: pointer;
	font-weight: bold;
}

.expand-container .content {
	notices_outer display: none;
	padding: 5px;
}

.flip {
	border: 2px solid;
	color: #006DA4;
}

.button {
	display: inline-block;
	border-radius: 20px;
	background-color: #a74e0c;
	border: none;
	font-family: Arial, Helvetica, sans-serif;
	color: #FFFFFF;
	text-align: center;
	font-size: 21px;
	padding: 5px;
	width: 40%;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
}

.button span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

.button span:after {
	content: '\00bb';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

.button:hover span {
	padding-right: 25px;
}

.button:hover span:after {
	opacity: 1;
	right: 0;
}
</style>
	<form method="post" action="LoginServlet" language="javascript">
		<div class="aspNetHidden">
			<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
			<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
			<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
				value="" /> <input type="hidden" name="__VIEWSTATE"
				id="__VIEWSTATE"
				value="FtrEqPWvR2qNLspYwdRCELcaWiBxKsYGys6zLDrsUIN2sCyhjBAw07NlgtC+j+Kjp9umwp++hMYjKa+xBZv6sqxGuOCRnd0Y4hKFM4D3dm69eUOFR//Od59LDmJmVZEg8o7VpfWNbTJfZqdF1xJyPlHdjJOMueq3QzvgbGk2J33r37akXETcwaJWJT4kruhGAzqW1NaSrltAmvGbj5j+OmeWVuLWNuTfpdALVw==" />
		</div>


		<div class="sidebar-second" style="width: 35%;">
			<div class="soft">
				<h2 tabindex="0">
					<span id="dnn_ctr6335_dnnTITLE_titleLabel11" class="TitleH2">HSPCB
						Application Login</span>
				</h2>

				<div class="col-md-4 col-md-offset-7">
					<div class="panel panel-default">
						<div class="flip">
							<div class="panel-body">
								<div class="form-group">
									<h2 style="background: transparent">
										<span id="Label3" style="color: black;">User ID : </span>
									</h2>
									<div class="col-sm-9">
										<input name="_ctl0:ContentPlaceHolder1:txtuserid"
											type="text" id="txtusername" tabindex="1"
											placeholder="Enter Username"
											class="form-control"
											style="width: 90%; margin-bottom: 0px;" /> <span
											controltovalidate="txtusername" focusOnError="t"
											errormessage="Please Enter Username" display="Dynamic"
											id="RequiredFieldValidator3"
											evaluationfunction="RequiredFieldValidatorEvaluateIsValid"
											initialvalue="" style="display: none;">*</span> <span
											controltovalidate="txtusername"
											errormessage="Invalid User Name" display="None"
											id="RegularExpressionValidator3"
											evaluationfunction="RegularExpressionValidatorEvaluateIsValid"
											validationexpression="[aA-zZ0-9@`*#$^&amp;_()]*"
											style="font-size: 12pt; display: none;"></span>
									</div>
								</div>
								<div class="form-group">
									<h2 style="background: transparent">
										<span id="Label5">Password : </span>
									</h2>
									<div class="col-sm-9">
										<input name="_ctl0:ContentPlaceHolder1:txtpwd" type="password"
											autocomplete="off" id="txtpwd" tabindex="2"
											class="form-control" placeholder="Enter Password"
											onblur="return EncryptPassword(&#39;412910246&#39;);"
											style="width: 90%; margin-bottom: 0px;" /> <span
											controltovalidate="txtpwd" focusOnError="t"
											errormessage="Please Enter a Password" display="Dynamic"
											id="RequiredFieldValidator4"
											evaluationfunction="RequiredFieldValidatorEvaluateIsValid"
											initialvalue="" style="display: none;">*</span> <span
											controltovalidate="txtpwd" errormessage="Invalid Password"
											display="None" id="RegularExpressionValidator4"
											evaluationfunction="RegularExpressionValidatorEvaluateIsValid"
											validationexpression="[aA-zZ0-9@`*#$^&amp;_()]*"
											style="font-size: 12pt; display: none;"></span>
									</div>
								</div>
<!-- 								<div class="form-group"> -->
<!-- 									<h2 style="background: transparent"> -->
<!-- 										<span id="Label6">Enter Text : </span> -->
<!-- 									</h2> -->
<!-- 									<div class="col-sm-offset-3 col-sm-9"> -->
<!-- 										<input name="_ctl0:ContentPlaceHolder1:txtCaptcha" type="text" -->
<!-- 											maxlength="5" id="txtCaptcha" tabindex="3" -->
<!-- 											class="form-control" Placeholder="Enter Text" -->
<!-- 											autocomplete="off" style="width: 90%; margin-bottom: 10px;" /> -->
<!-- 										<span controltovalidate="txtCaptcha" focusOnError="t" -->
<!-- 											errormessage="Enter Text as Shown in Image" -->
<!-- 											id="RequiredFieldValidator1" -->
<!-- 											evaluationfunction="RequiredFieldValidatorEvaluateIsValid" -->
<!-- 											initialvalue="" style="font-size: 12pt; visibility: hidden;">*</span> -->
<!-- 										<span controltovalidate="txtCaptcha" -->
<!-- 											errormessage="Enter Only Numbers" -->
<!-- 											id="RegularExpressionValidator1" -->
<!-- 											evaluationfunction="RegularExpressionValidatorEvaluateIsValid" -->
<!-- 											validationexpression="\d+" -->
<!-- 											style="font-size: 12pt; visibility: hidden;">*</span> <img -->
<!-- 											id="imgCaptcha" class="cap-img" src="Admin/GetImage.aspx" /> -->
<!-- 									</div> -->
<!-- 								</div> -->

								<div class="form-group" style="text-align: center;">
									<div class="col-sm-offset-3 col-sm-9">
										<div class="watermark">
											<input type="submit"
												name="_ctl0:ContentPlaceHolder1:btnLogin" value="Login"
												onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;_ctl0:ContentPlaceHolder1:btnLogin&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))"
												language="javascript" id="btnLogin" class="button"
												style="vertical-align: middle;" />
										<a class="link-g " href="forgotpwd.jsp">Forgot your password?</a>	
										</div>
										
									</div>
								</div>
								<div class="form-group" style="text-align: center;">
									<div class="col-sm-offset-3 col-sm-9">
										<strong><span style="">Office Login for
												Regional Officer and Sub Regional Officer</span></strong>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</form>

		<footer class="site-footer">

		<div class="footer-menu">
			<div class="layout-container">
				<div class="region region-footer-menu">
					<div id="block-copyright"
						class="block block-block-content block-block-content9984b4f7-0159-44d0-bd6c-b315fb9e9c89">


						<div class="content" tabindex="0">

							<div
								class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item">
								<div class="copyright">
									Copyright © Haryana State Pollution Control Board, Government
									Of Haryana 2018.
									<div class="scrollup"></div>
									<p>This website belongs to Haryana State Pollution Control
										Board, Government Of Haryana, India</p>
									<p>Sandeep Sharma (Mob. 9216849317)</p>
								</div>
							</div>

						</div>
					</div>

				</div>

			</div>
		</div>
		<div class="footer-last">
			<div class="layout-container">
<!-- 				<div class="region region-footer-last"> -->
<!-- 					<div id="block-visitorno-2" -->
<!-- 						class="block block-block-content block-block-contentf17fde0b-9226-4e90-9dd0-595e22a4b1d9"> -->


<!-- 						<div class="content" tabindex="0"> -->

<!-- 							<div -->
<!-- 								class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"> -->
<!-- 								<div class="visitor"> -->
<!-- 									Start of SimpleHitCounter Code -->
<!-- 									<div> -->
<!-- 										Visitor No.: <img alt="web counter" height="18" -->
<!-- 											src="http://simplehitcounter.com/hit.php?uid=2229991&amp;f=16777215&amp;b=0" -->
<!-- 											width="83" /> -->
<!-- 									</div> -->
<!-- 									End of SimpleHitCounter Code -->
<!-- 								</div> -->
<!-- 							</div> -->

<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div id="block-lastupdate-3" -->
<!-- 						class="block block-block-content block-block-contentc2dd4074-d659-42e1-8b12-f9d1c299a9aa"> -->


<!-- 						<div class="content" tabindex="0"> -->

<!-- 							<div -->
<!-- 								class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"> -->
<!-- 								<div class="last-update"> -->
<!-- 									Page last updated on -->

<!-- 								</div> -->
<!-- 							</div> -->

<!-- 						</div> -->
<!-- 					</div> -->

<!-- 				</div> -->

			</div>
		</div>

		</footer>
</body>
</html>