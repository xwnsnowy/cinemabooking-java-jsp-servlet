<%-- 
    Document   : Header.jsp
    Created on : 04-03-2023, 20:42:46
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi" class="no-js">
    <head>
        <!-- Basic need -->
        <title>Cinema</title>
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
        <header class="ht-header full-width-hd">
            <div class="row">
                <nav id="mainNav" class="navbar navbar-default navbar-custom">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header logo">
                        <div class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <div id="nav-icon1">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                        <a href="home"><img class="logo" src="images/logohome.png" alt="" width="119" height="58"></a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse flex-parent" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav flex-child-menu menu-left">
                            <li class="hidden">
                                <a href="#page-top"></a>
                            </li>
                            <li class="dropdown first">
                                <a href="home" class="btn btn-default dropdown-toggle lv1" >
                                    Trang Chủ 
                                </a>

                            </li>	

                            <li class="dropdown first">
                                <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                                    PHIM<i class="fa fa-angle-down" aria-hidden="true"></i>
                                </a>
                                <ul class="dropdown-menu level1" style="background-color: #e0ae00; border-radius: 30px">
                                   
                                    <li><a href="dangchieu" >Phim đang chiếu</a></li>
                                    <li><a href="sapchieu" >Phim sắp chiếu</a></li>
                                </ul>
                            </li>
                            <li class="dropdown first">
                                <a href="membership" class="btn btn-default dropdown-toggle lv1" >
                                    MEMBERSHIP 
                                </a>
                            </li>
                            <li class="dropdown first">
                                <a href="dangchieu" class="" style="margin-bottom:15px">
                                    <img class="img-responsive" src="https://touchcinema.com/images/icons/dat-ve-ngay.png" alt="alt"/>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav flex-child-menu menu-right">                
                            
                            
                                <c:if test="${sessionScope.acc != null}">  
                                <li><a href="#" style="color:yellow">Xin chào, ${sessionScope.acc.name}</a></li>
                                <li><a href="mybooking">VÉ CỦA TÔI</a></li>
                                <li><a href="profile">Thông tin cá nhân</a></li>
                                <li class=""><a href="logout" style="
                                                background-color: #dd003f;
                                                color: #ffffff;
                                                padding: 11px 25px;
                                                -webkit-border-radius: 20px;
                                                -moz-border-radius: 20px;
                                                border-radius: 20px;">Log Out</a></li>
                            </c:if>
                            <c:if test="${sessionScope.acc == null}">
                            <li class="loginLqink"><a href="login">Đăng nhập</a></li>
                            <li class="">
                                <a href="signup" 
                                   style="
                                   background-color: #dd003f;
                                   color: #ffffff;
                                   padding: 11px 25px;
                                   -webkit-border-radius: 20px;
                                   -moz-border-radius: 20px;
                                   border-radius: 20px;">
                                    Đăng ký
                                </a>
                            </li>
                            </c:if>
                            </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
                <!-- search form -->
            </div>

        </header>
        <script src="js/jquery.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/plugins2.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>
