<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : ListMovies
    Created on : 04-03-2023, 21:01:56
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7 no-js" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8 no-js" lang="en-US">
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="vi" class="no-js">
    <head>
        <!-- Basic need -->
        <link rel="icon" type="image/png" href="images/cinema_logo.png"/>
        <title>Phim Sắp Chiếu</title>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <link rel="profile" href="#">

        <!--Google Font-->
        <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
        <!-- Mobile specific meta -->
        <meta name=viewport content="width=device-width, initial-scale=1">
        <meta name="format-detection" content="telephone-no">

        <!-- CSS files -->
        <link rel="stylesheet" href="css/plugins.css">
        <link rel="stylesheet" href="css/style.css">

    </head>
    <body>

        <!-- BEGIN | Header -->
        <%@include file="Header.jsp" %>

        <div class="hero common-hero">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="hero-ct">
                            <h1>Phim Sắp Chiếu</h1>
                            <ul class="breadcumb">
                                <li class="active"><a href="home">Home</a></li>
                                <li> <span class="ion-ios-arrow-right"></span> movie listing</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="movie-items  full-width">

            <div class="row">
                <c:forEach items="${listC2}" var="c2" >
                    <div class="col-md-5 col-md-3 col-md-3">
                        <div class="tabs">
                            <div class="tab-content">
                                <div id="tab1-h2" class="tab active">
                                    <div class="row">
                                        <div class="movie-item">
                                            <div class="mv-img" >
                                                <img src="${c2.image}" alt="">
                                            </div>
                                            <div class="hvr-inner">
                                                <p>
                                                    <a  href="detail?productID=${c2.productID}"> Chi tiết <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </c:forEach>  

            </div>
        </div>
        <!-- footer -->

        <%@include file="Footer.jsp" %>

        <!-- end of footer -->
        <script src="js/jquery.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/plugins2.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>
