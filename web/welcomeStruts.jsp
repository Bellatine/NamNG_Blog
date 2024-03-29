<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html:form action = "/login">
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập BLOG</title>
    <link rel="stylesheet" href="E:\Netbean\WebappBlog_IT4409\web\login\login.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
        }

        .left-side {
            background-color: #FFF; /* Màu nền sáng */
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .right-side {
            background-color: #0CC; /* Màu nền xanh */
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        #login-container {
            background-color: #FFF;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px; /* Điều chỉnh kích thước của hộp đăng nhập */
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 4px;
            background-color: #F6F7F9; /* Màu nền của ô input */
        }

        input[type="submit"] {
            background-color: #1877F2; /* Màu xanh Facebook */
            color: white;
            padding: 12px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0E63AD; /* Màu xanh nhấn nút */
        }
    </style>
</head>
<body>
    <div class="left-side"></div>
    <div class="right-side">
        <div id="login-container">
            <h2>Đăng nhập vào BLOG</h2>
        </div>
    </div>
</body>
</html>
</html:form>
