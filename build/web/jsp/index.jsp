<%-- 
    Document   : index
    Created on : Jan 3, 2024, 5:14:15 PM
    Author     : namng
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <title>NamNG Blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <link href="//fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/template.css" rel="stylesheet" type="text/css" media="all" />
    <link href="fontawesome/css/all.min.css" rel="stylesheet" type="text/css" media="all" />
<%--    <style>--%>
<%--        html { overflow-x: hidden; }--%>

<%--        body {--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--            font-family: 'Source Sans Pro', sans-serif;--%>
<%--            font-size: 19px;--%>
<%--            line-height: 2em;--%>
<%--            overflow-x: hidden;--%>
<%--        }--%>

<%--        p, span { color: #999; }--%>
<%--        hr {--%>
<%--            border-top-color: #CCC;--%>
<%--            margin-top: 10px;--%>
<%--            margin-bottom: 10px;--%>
<%--        }--%>
<%--        .form-control::-webkit-input-placeholder { color: #999; }--%>
<%--        .form-control:-ms-input-placeholder { color: #999; }--%>
<%--        .form-control::placeholder { color: #999; }--%>

<%--        .tm-header {--%>
<%--            background-color: #0CC;--%>
<%--            color: white;--%>

<%--            position: fixed;--%>
<%--            top: 0;--%>
<%--            left: 0;--%>
<%--            bottom: 0;--%>
<%--            z-index: 100;--%>
<%--            width: 400px;--%>
<%--            overflow-y: visible;--%>
<%--        }--%>

<%--        .tm-header-wrapper {--%>
<%--            overflow-y: scroll;--%>
<%--            scrollbar-width: none;--%>
<%--            -ms-overflow-style: none;--%>
<%--            padding: 30px;--%>
<%--            width: 100%;--%>
<%--            height: 100%;--%>
<%--        }--%>

<%--        .tm-header-wrapper::-webkit-scrollbar {--%>
<%--            width: 0;--%>
<%--            height: 0;--%>
<%--        }--%>

<%--        .tm-site-header {--%>
<%--            margin-top: 50px;--%>
<%--            margin-bottom: 115px;--%>
<%--        }--%>

<%--        .tm-site-logo {--%>
<%--            width: 75px;--%>
<%--            height: 75px;--%>
<%--            border-radius: 50%;--%>
<%--            background-color: white;--%>
<%--            display: flex;--%>
<%--            align-items: center;--%>
<%--            justify-content: center;--%>
<%--        }--%>

<%--        .tm-site-logo i { color: #0CC; }--%>

<%--        .tm-main {--%>
<%--            margin-left: 400px;--%>
<%--            padding: 80px 100px 25px;--%>
<%--        }--%>

<%--        .tm-post { max-width: 470px; }--%>

<%--        .tm-row {--%>
<%--            max-width: 980px;--%>
<%--            justify-content: space-between;--%>
<%--        }--%>

<%--        .tm-nav { margin-bottom: 100px; }--%>

<%--        .tm-nav-item {--%>
<%--            list-style: none;--%>
<%--            margin-bottom: 30px;--%>
<%--        }--%>

<%--        .tm-nav-link {--%>
<%--            color: white;--%>
<%--            background-color: transparent;--%>
<%--            height: 75px;--%>
<%--            width: 100%;--%>
<%--            max-width: 300px;--%>
<%--            display: flex;--%>
<%--            align-items: center;--%>
<%--            font-size: 1.4rem;--%>
<%--            padding: 30px;--%>
<%--        }--%>

<%--        .tm-nav-item:hover .tm-nav-link,--%>
<%--        .tm-nav-item.active .tm-nav-link--%>
<%--        {--%>
<%--            color: #0CC;--%>
<%--            background-color: white;--%>
<%--            text-decoration: none;--%>
<%--        }--%>

<%--        .tm-nav ul { position: relative; }--%>

<%--        .tm-nav-item:hover:after,--%>
<%--        .tm-nav-item.active:after {--%>
<%--            content: '';--%>
<%--            width: 100%;--%>
<%--            max-width: 300px;--%>
<%--            height: 75px;--%>
<%--            display: block;--%>
<%--            border: 1px solid white;--%>
<%--            margin-left: 10px;--%>
<%--            margin-top: -65px;--%>
<%--            position: absolute;--%>
<%--            z-index: -1000;--%>
<%--        }--%>

<%--        .tm-nav-link i { margin-right: 37px; }--%>

<%--        ul {--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--        }--%>

<%--        .tm-nav { margin-left: -30px; }--%>

<%--        .tm-social-link {--%>
<%--            display: inline-block;--%>
<%--            background-color: white;--%>
<%--            font-size: 1.4rem;--%>
<%--            width: 50px;--%>
<%--            height: 50px;--%>
<%--            text-align: center;--%>
<%--            padding-top: 8px;--%>
<%--            margin-right: 15px;--%>
<%--            margin-bottom: 15px;--%>
<%--        }--%>

<%--        .tm-social-icon {--%>
<%--            color: #0CC;--%>
<%--            transition: all 0.3s ease;--%>
<%--        }--%>

<%--        .tm-social-link:hover .tm-social-icon.fa-facebook { color: #3b5998; }--%>
<%--        .tm-social-link:hover .tm-social-icon.fa-twitter { color: #00acee; }--%>
<%--        .tm-social-link:hover .tm-social-icon.fa-instagram { color: #3f729b; }--%>
<%--        .tm-social-link:hover .tm-social-icon.fa-linkedin { color: #0e76a8; }--%>
<%--        .navbar-toggler { display: none; }--%>

<%--        .tm-search-form {--%>
<%--            display: flex;--%>
<%--            align-items: center;--%>
<%--            justify-content: flex-end;--%>
<%--        }--%>

<%--        .form-inline .form-control.tm-search-input {--%>
<%--            display: block;--%>
<%--            height: 60px;--%>
<%--            width: 480px;--%>
<%--            margin-right: 30px;--%>
<%--            border-radius: 0;--%>
<%--            border-color: #0CC;--%>
<%--            font-size: 1.2rem;--%>
<%--        }--%>

<%--        .tm-search-button {--%>
<%--            width: 60px;--%>
<%--            height: 60px;--%>
<%--            border: none;--%>
<%--            background-color: #0CC;--%>
<%--            transition: all 0.3s ease;--%>
<%--        }--%>

<%--        .tm-search-button:hover { background-color: #09b6b6; }--%>

<%--        .tm-search-icon {--%>
<%--            color: white;--%>
<%--            font-size: 1.3rem;--%>
<%--        }--%>

<%--        .tm-post-link {--%>
<%--            display: block;--%>
<%--            position: relative;--%>
<%--            cursor: pointer;--%>
<%--        }--%>

<%--        .tm-post-link-inner {--%>
<%--            overflow: hidden;--%>
<%--            background: #3085a3;--%>
<%--        }--%>

<%--        .tm-post-link img {--%>
<%--            position: relative;--%>
<%--            display: block;--%>
<%--            min-height: 100%;--%>
<%--            max-width: 100%;--%>
<%--            opacity: 0.8;--%>
<%--        }--%>

<%--        .effect-lily img {--%>
<%--            max-width: none;--%>
<%--            width: -webkit-calc(100% + 50px);--%>
<%--            width: calc(100% + 50px);--%>
<%--            opacity: 0.7;--%>
<%--            -webkit-transition: opacity 0.35s, -webkit-transform 0.35s;--%>
<%--            transition: opacity 0.35s, transform 0.35s;--%>
<%--            -webkit-transform: translate3d(-40px,0, 0);--%>
<%--            transform: translate3d(-40px,0,0);--%>
<%--        }--%>

<%--        .effect-lily:hover img { opacity: 1; }--%>

<%--        .effect-lily:hover img {--%>
<%--            -webkit-transform: translate3d(0,0,0);--%>
<%--            transform: translate3d(0,0,0);--%>
<%--        }--%>

<%--        .tm-post { margin-bottom: 75px; }--%>

<%--        .tm-new-badge {--%>
<%--            top: 25px;--%>
<%--            right: -10px;--%>
<%--            background-color: #0CC;--%>
<%--            color: white;--%>
<%--            padding: 5px 20px;--%>
<%--        }--%>

<%--        .tm-post-title {--%>
<%--            font-size: 1.7rem;--%>
<%--            transition: all 0.3s ease;--%>
<%--        }--%>

<%--        .tm-post-link:hover .tm-post-title { color: #0CC; }--%>

<%--        .tm-btn {--%>
<%--            display: inline-block;--%>
<%--            border-radius: 5px;--%>
<%--            font-size: 1.3rem;--%>
<%--            transition: all 0.3s ease;--%>
<%--        }--%>

<%--        .tm-btn-primary {--%>
<%--            background-color: #0CC;--%>
<%--            color: white;--%>
<%--            padding: 8px 43px;--%>
<%--            border: none;--%>
<%--        }--%>


<%--        .tm-btn-primary:hover {--%>
<%--            background-color: #09b6b6;--%>
<%--            color: white;--%>
<%--        }--%>

<%--        .tm-paging-nav ul li {--%>
<%--            list-style: none;--%>
<%--            display: inline-block;--%>
<%--            margin-right: 10px;--%>
<%--        }--%>

<%--        .tm-paging-nav ul li:last-child { margin-right: 0; }--%>

<%--        .tm-paging-link {--%>
<%--            background-color: #F0F0F0;--%>
<%--            color: #999;--%>
<%--            width: 50px;--%>
<%--            height: 50px;--%>
<%--            display: flex;--%>
<%--            align-items: center;--%>
<%--            justify-content: center;--%>
<%--        }--%>

<%--        .tm-paging-item .tm-paging-link:hover,--%>
<%--        .tm-paging-item.active .tm-paging-link {--%>
<%--            background-color: #0CC;--%>
<%--            color: white;--%>
<%--        }--%>

<%--        .tm-btn.disabled {--%>
<%--            background-color: #F0F0F0;--%>
<%--            color: #999;--%>
<%--            cursor: not-allowed;--%>
<%--        }--%>

<%--        .tm-external-link { color: #0CC; }--%>
<%--        .tm-external-link:hover { color: #09b6b6; }--%>

<%--        .tm-paging-wrapper {--%>
<%--            display: flex;--%>
<%--            justify-content: flex-end;--%>
<%--            align-items: center;--%>
<%--        }--%>

<%--        .tm-prev-next-wrapper,--%>
<%--        .tm-paging-wrapper {--%>
<%--            flex: 0 0 50%;--%>
<%--            max-width: 50%;--%>
<%--            padding-left: 15px;--%>
<%--            padding-right: 15px;--%>
<%--        }--%>

<%--        .tm-copyright { text-align: right; }--%>

<%--        /* Single Post page */--%>
<%--        hr.tm-hr-primary { border-top: 5px solid #0CC; }--%>

<%--        video {--%>
<%--            width: 100%;--%>
<%--            height: auto;--%>
<%--        }--%>

<%--        .form-control {--%>
<%--            height: 45px;--%>
<%--            border-color: #0CC;--%>
<%--            border-radius: 0;--%>
<%--        }--%>

<%--        figure { margin: 0; }--%>
<%--        figcaption { line-height: 1.4; }--%>


<%--        .tm-pt-20 { padding-top: 20px; }--%>
<%--        .tm-pt-30 { padding-top: 30px; }--%>
<%--        .tm-pt-45 { padding-top: 45px; }--%>
<%--        .tm-pt-60 { padding-top: 60px; }--%>
<%--        .tm-mb-65 { margin-bottom: 65px; }--%>
<%--        .tm-mb-75 { margin-bottom: 75px; }--%>
<%--        .tm-mb-80 { margin-bottom: 80px; }--%>
<%--        .tm-mt-100 { margin-top: 100px; }--%>
<%--        .tm-mr-20 { margin-right: 20px; }--%>
<%--        .tm-color-primary, span.tm-color-primary { color: #099; }--%>
<%--        a.tm-color-gray, .tm-color-gray { color: #999; }--%>
<%--        a.tm-color-gray:hover { color: #099; }--%>
<%--        button:focus { outline: none; }--%>
<%--        a:hover {--%>
<%--            text-decoration: none;--%>
<%--            color: #048c8c;--%>
<%--        }--%>

<%--        a:hover figcaption { color: #056767; }--%>

<%--        .tm-social-links li {--%>
<%--            list-style: none;--%>
<%--            display: inline-block;--%>
<%--        }--%>

<%--        .tm-social-links li a {--%>
<%--            display: block;--%>
<%--            color: white;--%>
<%--            background-color: #0CC;--%>
<%--            width: 45px;--%>
<%--            height: 45px;--%>
<%--            margin-right: 15px;--%>
<%--        }--%>

<%--        .tm-social-links li a i { transition: all 0.3s ease; }--%>
<%--        .tm-social-links li a:hover i.fa-facebook { color: #3b5998; }--%>
<%--        .tm-social-links li a:hover i.fa-twitter { color: #00acee; }--%>
<%--        .tm-social-links li a:hover i.fa-youtube { color: #c4302b; }--%>
<%--        .tm-social-links li a:hover i.fa-instagram { color: #3f729b; }--%>


<%--        .tm-contact-form input,--%>
<%--        .tm-contact-form textarea {--%>
<%--            max-width: 360px;--%>
<%--        }--%>

<%--        .tm-contact-form label { font-size: 1.4rem; }--%>

<%--        @media (max-width: 1540px) {--%>
<%--            .tm-header { width: 320px; }--%>

<%--            .tm-main {--%>
<%--                margin-left: 320px;--%>
<%--                width: calc(100% - 320px);--%>
<%--            }--%>
<%--        }--%>

<%--        @media (max-width: 1300px) {--%>
<%--            .tm-about-col {--%>
<%--                flex: 0 0 100%;--%>
<%--                max-width: 100%;--%>
<%--                margin-bottom: 30px;--%>
<%--            }--%>
<%--        }--%>

<%--        @media (max-width: 1288px) {--%>
<%--            .tm-social-link { margin-right: 10px; }--%>
<%--        }--%>

<%--        @media (max-width: 1199px) {--%>
<%--            .form-inline .form-control.tm-search-input { width: 420px; }--%>
<%--        }--%>

<%--        @media (max-width: 1086px) {--%>
<%--            .form-inline .form-control.tm-search-input {--%>
<%--                width: 80%;--%>
<%--                margin-right: 15px;--%>
<%--            }--%>
<%--        }--%>

<%--        /* Hide sidebar */--%>
<%--        @media (max-width: 991px) {--%>
<%--            .tm-header {--%>
<%--                width: 320px;--%>
<%--                left: -320px;--%>
<%--                transition: all 0.3s ease;--%>
<%--            }--%>

<%--            .tm-header-wrapper { padding: 15px; }--%>

<%--            .navbar-toggler {--%>
<%--                display: block;--%>
<%--                position: fixed;--%>
<%--                left: 0;--%>
<%--                top: 0;--%>
<%--                background-color: rgba(56, 204, 204, 0.75);--%>
<%--                color: white;--%>
<%--                padding: 10px 15px;--%>
<%--                transition: all 0.3s ease;--%>
<%--                border-radius: 0;--%>
<%--                top: 5px;--%>
<%--            }--%>

<%--            .tm-header.show .navbar-toggler { left: 320px; }--%>

<%--            .tm-main {--%>
<%--                margin-left: 0;--%>
<%--                padding: 50px 40px;--%>
<%--                width: 100%;--%>
<%--            }--%>


<%--        }--%>

<%--        @media (max-width: 767px) {--%>
<%--            .form-inline .form-control.tm-search-input {--%>
<%--                width: 70%;--%>
<%--                max-width: 375px;--%>
<%--                margin-right: 15px;--%>
<%--            }--%>

<%--            .tm-search-form { justify-content: flex-start; }--%>
<%--            .tm-main { padding: 60px 10px; }--%>

<%--            .tm-prev-next-wrapper,--%>
<%--            .tm-paging-wrapper {--%>
<%--                flex: 0 0 100%;--%>
<%--                max-width: 100%;--%>
<%--            }--%>

<%--            .tm-paging-wrapper {--%>
<%--                margin-top: 50px;--%>
<%--                justify-content: flex-start;--%>
<%--            }--%>

<%--            .tm-copyright { text-align: left; }--%>
<%--        }--%>


<%--        @media (max-width: 575px) {--%>
<%--            .tm-contact-form input,--%>
<%--            .tm-contact-form textarea {--%>
<%--                max-width: 100%;--%>
<%--            }--%>
<%--        }--%>


<%--        @media (max-width: 380px) {--%>
<%--            .tm-person img { max-width: 120px; }--%>
<%--        }--%>

<%--    </style>--%>
</head>
<body>
<header class="tm-header">
    <div class="tm-header-wrapper">
        <button class="navbar-toggler" type="button" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>
        <div class="tm-site-header">
            <div class="mb-3 mx-auto tm-site-logo"><i class="fas fa-times fa-2x"></i></div>
            <h1 class="text-center">Xtra Blog</h1>
        </div>
        <nav class="tm-nav" id="tm-nav">
            <ul>
                <li class="tm-nav-item active"><a href="index.jsp" class="tm-nav-link">
                    <i class="fas fa-home"></i>
                    Blog Home
                </a></li>
                <li class="tm-nav-item"><a href="post.html" class="tm-nav-link">
                    <i class="fas fa-pen"></i>
                    Single Post
                </a></li>
                <li class="tm-nav-item"><a href="about.html" class="tm-nav-link">
                    <i class="fas fa-users"></i>
                    About Xtra
                </a></li>
                <li class="tm-nav-item"><a href="contact.html" class="tm-nav-link">
                    <i class="far fa-comments"></i>
                    Contact Us
                </a></li>
            </ul>
        </nav>
        <div class="tm-mb-65">
            <a rel="nofollow" href="https://fb.com/templatemo" class="tm-social-link">
                <i class="fab fa-facebook tm-social-icon"></i>
            </a>
            <a href="https://twitter.com" class="tm-social-link">
                <i class="fab fa-twitter tm-social-icon"></i>
            </a>
            <a href="https://instagram.com" class="tm-social-link">
                <i class="fab fa-instagram tm-social-icon"></i>
            </a>
            <a href="https://linkedin.com" class="tm-social-link">
                <i class="fab fa-linkedin tm-social-icon"></i>
            </a>
        </div>
        <p class="tm-mb-80 pr-5 text-white">
            Xtra Blog is a multi-purpose HTML template from TemplateMo website. Left side is a sticky menu bar. Right side content will scroll up and down.
        </p>
    </div>
</header>
<div class="container-fluid">
    <main class="tm-main">
        <!-- Search form -->
        <div class="row tm-row">
            <div class="col-12">
                <form method="GET" class="form-inline tm-mb-80 tm-search-form">
                    <input class="form-control tm-search-input" name="query" type="text" placeholder="Search..." aria-label="Search">
                    <button class="tm-search-button" type="submit">
                        <i class="fas fa-search tm-search-icon" aria-hidden="true"></i>
                    </button>
                </form>
            </div>
        </div>
        <div class="row tm-row">
            <article class="col-12 col-md-6 tm-post">
                <hr class="tm-hr-primary">
                <a href="post.html" class="effect-lily tm-post-link tm-pt-60">
                    <div class="tm-post-link-inner">
                        <img src="img/img-01.jpg" alt="Image" class="img-fluid">
                    </div>
                    <span class="position-absolute tm-new-badge">New</span>
                    <h2 class="tm-pt-30 tm-color-primary tm-post-title">Simple and useful HTML layout</h2>
                </a>
                <p class="tm-pt-30">
                    There is a clickable image with beautiful hover effect and active title link for each post item.
                    Left side is a sticky menu bar. Right side is a blog content that will scroll up and down.
                </p>
                <div class="d-flex justify-content-between tm-pt-45">
                    <span class="tm-color-primary">Travel . Events</span>
                    <span class="tm-color-primary">June 24, 2020</span>
                </div>
                <hr>
                <div class="d-flex justify-content-between">
                    <span>36 comments</span>
                    <span>by Admin Nat</span>
                </div>
            </article>
            <article class="col-12 col-md-6 tm-post">
                <hr class="tm-hr-primary">
                <a href="post.html" class="effect-lily tm-post-link tm-pt-60">
                    <div class=" tm-post-link-inner">
                        <img src="img/img-02.jpg" alt="Image" class="img-fluid">
                    </div>
                    <span class="position-absolute tm-new-badge">New</span>
                    <h2 class="tm-pt-30 tm-color-primary tm-post-title">Multi-purpose blog template</h2>
                </a>
                <p class="tm-pt-30">
                    <a rel="nofollow" href="https://templatemo.com/tm-553-xtra-blog" target="_blank">Xtra Blog</a>  is a multi-purpose HTML CSS template from TemplateMo website.
                    Blog list, single post, about, contact pages are included. Left sidebar fixed width and content area is a fluid full-width.
                </p>
                <div class="d-flex justify-content-between tm-pt-45">
                    <span class="tm-color-primary">Creative . Design . Business</span>
                    <span class="tm-color-primary">June 16, 2020</span>
                </div>
                <hr>
                <div class="d-flex justify-content-between">
                    <span>48 comments</span>
                    <span>by Admin Sam</span>
                </div>
            </article>
            <article class="col-12 col-md-6 tm-post">
                <hr class="tm-hr-primary">
                <a href="post.html" class="effect-lily tm-post-link tm-pt-20">
                    <div class="tm-post-link-inner">
                        <img src="img/img-03.jpg" alt="Image" class="img-fluid">
                    </div>
                    <h2 class="tm-pt-30 tm-color-primary tm-post-title">How can you apply Xtra Blog</h2>
                </a>
                <p class="tm-pt-30">
                    You are <u>allowed</u> to convert this template as any kind of CMS theme or template for your custom website builder.
                    You can also use this for your clients. Thank you for choosing us.
                </p>
                <div class="d-flex justify-content-between tm-pt-45">
                    <span class="tm-color-primary">Music . Audio</span>
                    <span class="tm-color-primary">June 11, 2020</span>
                </div>
                <hr>
                <div class="d-flex justify-content-between">
                    <span>24 comments</span>
                    <span>by John Walker</span>
                </div>
            </article>
            <article class="col-12 col-md-6 tm-post">
                <hr class="tm-hr-primary">
                <a href="post.html" class="effect-lily tm-post-link tm-pt-20">
                    <div class="tm-post-link-inner">
                        <img src="img/img-04.jpg" alt="Image" class="img-fluid">
                    </div>
                    <h2 class="tm-pt-30 tm-color-primary tm-post-title">A little restriction to apply</h2>
                </a>
                <p class="tm-pt-30">
                    You are <u>not allowed</u> to re-distribute this template as a downloadable ZIP file on any template collection
                    website. This is strongly prohibited as we worked hard for this template. Please contact TemplateMo for more information.
                    <br>For example, <a href="https://www.free-css.com/free-css-templates/page272/xtra-blog" target="_blank">Free-CSS</a> redistributed this Xtra Blog template on their website without asking any permission. It is an illegal act by Free-CSS website doing an unauthorized reposting.</p>
                <div class="d-flex justify-content-between tm-pt-45">
                    <span class="tm-color-primary">Artworks . Design</span>
                    <span class="tm-color-primary">June 4, 2020</span>
                </div>
                <hr>
                <div class="d-flex justify-content-between">
                    <span>72 comments</span>
                    <span>by Admin Sam</span>
                </div>
            </article>
            <article class="col-12 col-md-6 tm-post">
                <hr class="tm-hr-primary">
                <a href="post.html" class="effect-lily tm-post-link tm-pt-20">
                    <div class="tm-post-link-inner">
                        <img src="img/img-05.jpg" alt="Image" class="img-fluid">
                    </div>
                    <h2 class="tm-pt-30 tm-color-primary tm-post-title">Color hexa values of Xtra Blog</h2>
                </a>
                <p class="tm-pt-30">
                    If you wish to kindly support us, please contact us or contribute a small PayPal amount to info [at] templatemo.com that is helpful for us.
                    <br>
                    Title #099 New #0CC <br>
                    <span class="tm-color-primary">Text #999 Line #CCC Next #0CC Prev #F0F0F0</span>
                </p>
                <div class="d-flex justify-content-between tm-pt-45">
                    <span class="tm-color-primary">Creative . Video . Audio</span>
                    <span class="tm-color-primary">May 31, 2020</span>
                </div>
                <hr>
                <div class="d-flex justify-content-between">
                    <span>84 comments</span>
                    <span>by Admin Sam</span>
                </div>
            </article>
            <article class="col-12 col-md-6 tm-post">
                <hr class="tm-hr-primary">
                <a href="post.html" class="effect-lily tm-post-link tm-pt-20">
                    <div class="tm-post-link-inner">
                        <img src="img/img-06.jpg" alt="Image" class="img-fluid">
                    </div>
                    <h2 class="tm-pt-30 tm-color-primary tm-post-title">Donec convallis varius risus</h2>
                </a>
                <p class="tm-pt-30">
                    Quisque id ipsum vel sem maximus vulputate sed quis velit. Nunc vel turpis eget orci elementum cursus vitae in eros. Quisque vulputate nulla ut dolor consectetur luctus.
                </p>
                <div class="d-flex justify-content-between tm-pt-45">
                    <span class="tm-color-primary">Visual . Artworks</span>
                    <span class="tm-color-primary">June 16, 2020</span>
                </div>
                <hr>
                <div class="d-flex justify-content-between">
                    <span>96 comments</span>
                    <span>by Admin Sam</span>
                </div>
            </article>
        </div>
        <div class="row tm-row tm-mt-100 tm-mb-75">
            <div class="tm-prev-next-wrapper">
                <a href="#" class="mb-2 tm-btn tm-btn-primary tm-prev-next disabled tm-mr-20">Prev</a>
                <a href="#" class="mb-2 tm-btn tm-btn-primary tm-prev-next">Next</a>
            </div>
            <div class="tm-paging-wrapper">
                <span class="d-inline-block mr-3">Page</span>
                <nav class="tm-paging-nav d-inline-block">
                    <ul>
                        <li class="tm-paging-item active">
                            <a href="#" class="mb-2 tm-btn tm-paging-link">1</a>
                        </li>
                        <li class="tm-paging-item">
                            <a href="#" class="mb-2 tm-btn tm-paging-link">2</a>
                        </li>
                        <li class="tm-paging-item">
                            <a href="#" class="mb-2 tm-btn tm-paging-link">3</a>
                        </li>
                        <li class="tm-paging-item">
                            <a href="#" class="mb-2 tm-btn tm-paging-link">4</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <footer class="row tm-row">
            <hr class="col-12">
            <div class="col-md-6 col-12 tm-color-gray">
                Design: <a rel="nofollow" target="_parent" href="https://templatemo.com" class="tm-external-link">TemplateMo</a>
            </div>
            <div class="col-md-6 col-12 tm-color-gray tm-copyright">
                Copyright 2020 Xtra Blog Company Co. Ltd.
            </div>
        </footer>
    </main>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/templatemo-script.js"></script>
</body>
</html>
