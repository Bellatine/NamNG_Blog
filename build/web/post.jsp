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
                    <a href="#">Đăng Xuất</a>
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
</body>
</html>
