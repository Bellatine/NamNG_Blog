<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>NamNG Blog</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Official Signup Form Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- fonts -->
<link href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
<!-- /fonts -->
<!-- css -->
<link href="./jsp/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="./jsp/css/login_signup.css" rel='stylesheet' type='text/css' media="all" />
<!-- /css -->
</head>
<body>
<h1 class="w3ls">NamNG Login Page</h1>
<div class="content-w3ls">
	<div class="content-agile1">
		<h2 class="agileits1">NamNG's Blog</h2>
		<p class="agileits2">Create and change your future ;)</p>
	</div>
	<div class="content-agile2">
		<form action="login.do" method="post">
			<div class="form-control w3layouts"> 
                            <input type="text" id="username" name="username" placeholder="Username" title="Địa chỉ email hoặc số điện thoại"/>
			</div>

			<div class="form-control agileinfo">	
                            <input type="password" id="password1" name="password" placeholder="Password" title="Mật khẩu" />
			</div>			
			
			<input type="submit" class="register" value="Login">
		</form>
		<p class="wthree w3l">Fast Login With Your Favourite Social Profile</p>
		<ul class="social-agileinfo wthree2">
			<li><a href="#"><i class="fa fa-facebook"></i></a></li>
			<li><a href="#"><i class="fa fa-youtube"></i></a></li>
			<li><a href="#"><i class="fa fa-twitter"></i></a></li>
			<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
		</ul>
                <p class="copyright w3l">If you don't have account, Signup here <a href="./Signup.jsp" target="_blank">Signup</a></p>
	</div>
	<div class="clear"></div>
</div>


</body>
</html>

