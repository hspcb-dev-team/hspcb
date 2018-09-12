<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Haryana State Pollution Control Board</title>
<!-- <link href="css/CSS_Home/custom.css" rel="stylesheet" /> -->
<!-- <link href="css/CSS_Home/bootstrap.min.css" rel="stylesheet" /> -->
<link href="/WEB-INF/primary-menu.css" rel="stylesheet" />
<link href="/WEB-INF/normalize.css" rel="stylesheet" />
<link href="/WEB-INF/elements.css" rel="stylesheet" />
<link href="/WEB-INF/colors.css" rel="stylesheet" />
<link href="/WEB-INF/layout.css" rel="stylesheet" />
<link href="/WEB-INF/header.css" rel="stylesheet" />
<script src="js/jquery-2.1.1.min.js"></script>

<script src="js/bootstrap.min.js"></script>

<link href="css/CSS_Home/jquerysctipttop.css" rel="stylesheet" />

</head>
<style>
/**
 * @file
 * Float clearing.
 *
 * Based on the micro clearfix hack by Nicolas Gallagher, with the :before
 * pseudo selector removed to allow normal top margin collapse.
 *
 * @see http://nicolasgallagher.com/micro-clearfix-hack
 */

.clearfix:after {
  content: "";
  display: table;
  clear: both;
}


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
.footer_bottom {
	background: #fffeff;
	padding: 0px 3px 15px 13px;
	height: 25px;
	color: #fff;
	font-family: "Open Sans", Helvetica, Arial, sans-serif;
	font-size: 11px;
	line-height: 20px;
	margin-bottom: 0px;
}


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
<center>
	<style>
.link-g {
	color: #2d4d03;
	text-decoration: none;
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
 
	<form method="post" action="LoginServlet" language="javascript">
	
	<div class="clearfix region region-header" style="border: thin; background: #6ac">
    <div id="block-bartik-branding" class="clearfix site-branding block block-system block-system-branding-block">
  
    
        <a href="index.jsp" title="Department Logo" rel="home" class="site-branding__logo" tabindex="0">

    </a>
        <div class="site-branding__text">
              <div class="site-branding__name">
          <h2><a href="index.jsp" title="Department Name" rel="home">Haryana State Pollution Control Board</a>
        </div>
                    <div class="site-branding__slogan" tabindex="0">Government of Haryana</div>
          </div></h2>
  </div>

  </div>

  </div> <br/> <br/>
		
		<div class="flip" style="width: 584px; height: 322px;" align="center">

			<div class="form-group">
			<h2 tabindex="0" align="center">
			<span id="dnn_ctr6335_dnnTITLE_titleLabel11" class="TitleH2";">HSPCB Employee
				Login</span>
		</h2>
				<h2 style="width: 549px; ">
					<span id="Label3" style="width: 30%">User ID : </span><input
						name="_ctl0:ContentPlaceHolder1:txtuserid" type="text"
						id="txtusername" tabindex="1" placeholder="Enter Employee ID"
						class="form-control" style="width: 321px; margin-bottom: 0px;"><span
						controltovalidate="txtusername" focusOnError="t"
						errormessage="Please Enter Username" display="Dynamic"
						id="RequiredFieldValidator3"
						evaluationfunction="RequiredFieldValidatorEvaluateIsValid"
						initialvalue="" style="display: none;">*</span>
				</h2>
				<h2 style="width: 535px; ">
					<span id="Label5" style="width: 30%">Password : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><input
						name="_ctl0:ContentPlaceHolder1:txtpwd" type="password"
						autocomplete="off" id="txtpwd" tabindex="2" class="form-control"
						placeholder="Enter Password"
						onblur="return EncryptPassword(&#39;412910246&#39;);"
						style="width: 321px; margin-bottom: 0px;"><span
						controltovalidate="txtpwd" focusOnError="t"
						errormessage="Please Enter a Password" display="Dynamic"
						id="RequiredFieldValidator4"
						evaluationfunction="RequiredFieldValidatorEvaluateIsValid"
						initialvalue="" style="display: none;">*</span>
				</h2>
				<div class="watermark">
					<br> <input type="submit"
						name="_ctl0:ContentPlaceHolder1:btnLogin" value="Login"
						id="btnLogin" class="button" style="vertical-align: middle; width: 190px; height: 45px">
					<a  href="forgotpwd.jsp">Forgot password</a> <br />
						
					<br /> <strong><span style=""> Login for
							 Officers</span></strong>
				</div>
			</div>
		</div>
		<br/>
		<br/>
		<br/>
		<br/>
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
		
		
	</form>

	<!-- 									<div class="form-group" style="text-align: center; height: 70px"> -->
	<!-- 									<div class="col-sm-offset-3 col-sm-9"> -->


	<!-- 									</div> -->
	<!-- 								</div> -->


	<!-- 										</div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->


	<!-- 		<footer class="site-footer"> -->

	<!-- 		<div class="footer-menu"> -->
	<!-- 			<div class="layout-container"> -->
	<!-- 				<div class="region region-footer-menu"> -->
	<!-- 					<div id="block-copyright" -->
	<!-- 						class="block block-block-content block-block-content9984b4f7-0159-44d0-bd6c-b315fb9e9c89"> -->


	<!-- 						<div class="content" tabindex="0"> -->

	<!-- 							<div -->
	<!-- 								class="clearfix text-formatted field field--name-body field--type-text-with-summary field--label-hidden field__item"> -->
	<!-- 								<div class="copyright"> -->
	<!-- 									Copyright © Haryana State Pollution Control Board, Government -->
	<!-- 									Of Haryana 2018. -->
	<!-- 									<div class="scrollup"></div> -->
	<!-- 									<p>This website belongs to Haryana State Pollution Control -->
	<!-- 										Board, Government Of Haryana, India</p> -->
	<!-- 									<p>Sandeep Sharma (Mob. 9216849317)</p> -->
	<!-- 								</div> -->
	<!-- 							</div> -->

	<!-- 						</div> -->
	<!-- 					</div> -->

	<!-- 				</div> -->

	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 		<div class="footer-last"> -->
	<!-- 			<div class="layout-container"> -->
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

	<!-- 			</div> -->
	<!-- 		</div> -->

	<!-- 		</footer> -->
	</center>
</body>
</html>