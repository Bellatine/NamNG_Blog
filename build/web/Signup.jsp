<%-- 
    Document   : Signup
    Created on : Jan 5, 2024, 4:00:05 PM
    Author     : namng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
		<form action="signup.do" method="post">
			<div class="form-control w3layouts"> 
				<input type="text" id="firstname" name="firstname" placeholder="First Name" title="Please enter your First Name" required="">
			</div>

			<div class="form-control w3layouts">	
				<input type="email" id="email" name="email" placeholder="mail@example.com" title="Please enter a valid email" required="">
			</div>
                        
			<div class="form-control w3layouts">
				<input type="text" id="username" name="username" placeholder="Username" title="Please enter your UserName" required="">
			</div>

			<div class="form-control agileinfo">	
				<input type="password" class="lock" name="password" placeholder="Password" id="password1" required="">
			</div>	

			<div class="form-control agileinfo">	
				<input type="password" class="lock" name="confirm-password" placeholder="Confirm Password" id="password" required="">
			</div>			
			
			<input type="submit" class="register" value="Register">
		</form>
		<script type="text/javascript">
			window.onload = function () {
				document.getElementById("password1").onchange = validatePassword;
				document.getElementById("password").onchange = validatePassword;
			}
			function validatePassword(){
				var pass2=document.getElementById("password").value;
				var pass1=document.getElementById("password1").value;
				if(pass1!=pass2)
					document.getElementById("password").setCustomValidity("Passwords Don't Match");
				else
					document.getElementById("password").setCustomValidity('');
				//empty string means no validation error
			}
		</script>
	</div>
	<div class="clear"></div>
</div>
</body>
</html>
