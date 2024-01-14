<%-- 
    Document   : post
    Created on : Jan 12, 2024, 2:53:10 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Official Signup Form Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- fonts -->
    <link href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
    <!-- /fonts -->
    <link href="./jsp/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="./jsp/css/post.css">
    <title>NamNG Blog</title>
</head>
<body>
    <header>
        <div class="blog-title">
            <h1>NamNG Blog</h1>
        </div>
        <div class="user-info">
            <div class="dropdown">
                <button class="dropdown-button" onclick="toggleDropdown()">
                    &#9662; <!-- Unicode cho tam giác trỏ xuống -->
                </button>
                <div class="dropdown-content">
                    <a href="#">Thông Tin Chi Tiết</a>
                    <a href="#">Cài Đặt</a>
                    <a href="login.jsp">Đăng Xuất</a>
                </div>
            </div>
            <span class="user-name">${fullname}</span>
        </div>
    </header>
    <div id="blog-container">
        <!-- Bài viết sẽ được thêm vào đây -->
    </div>
    <script src="./jsp/js/post.js"></script>
    <script src="./jsp/js/header.js"></script>
    <ul class="social-agileinfo wthree2">
	<li><a href="https://www.facebook.com/nam.nguyengiang.7374/"><i class="fa fa-facebook"></i></a></li>
	<li><a href="https://www.youtube.com/channel/UC2MoF0fabMMSIBl5wuwV2Gw"><i class="fa fa-youtube"></i></a></li>
	<li><a href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
    </ul>
</body>
</html>
