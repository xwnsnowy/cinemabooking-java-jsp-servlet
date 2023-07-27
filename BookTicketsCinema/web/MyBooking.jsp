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
<html lang="en" class="no-js">

    <!-- userprofile14:04-->
    <head>
        <!-- Basic need -->
        <title>Open Pediatrics</title>
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
        <!--preloading-->

        <!-- BEGIN | Header -->
        <%@include file="Header.jsp" %>
        <!-- END | Header -->


        <div class="hero user-hero" style="  height: 250px;
             background: url(images/bg.png) no-repeat;">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="hero-ct" style="padding-top: 90px; padding-left:2px    ">
                            <ul class="breadcumb" style="margin-left:34.2%">
                                <li class="active"><a href="home" style="color: #d9edf7">Home</a></li>
                                <li> <span class="ion-ios-arrow-right"></span>Vé của tôi</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="page-single" style="background-image: url(images/bg.png);">
            <div class="container" style="width:80%">
                <div class="row ipad-width">
                    <div class="col-md-3">
                        <div class="user-information" style="margin-top:0px">
                            <div class="user-img">
                                <a href="#"><img src="images/profile.png" width="150px" alt=""><br></a>
                                <a href="#" class="redbtn">Thay đổi avatar</a>
                            </div>
                            <div class="user-fav">
                                <ul>
                                    <li style="text-align: center"><a href="#" >Thông tin tài khoản</a></li>
                                    <li class="active"><a href="#">Tên tài khoản: ${acc.username}</a></li>
                                    <li class="active"><a href="#">Họ và tên: ${acc.name}</a></li>
                                    <li class="active"><a href="#">Email: ${acc.email}</a></li>
                                    <li class="active"><a href="#">Giới tính: ${acc.gender}</a></li>
                                    <li class="active"><a href="#">Ngày sinh: ${acc.dob}</a></li>
                                    <li class="active"><a href="#">Sdt: ${acc.telephone}</a></li>
                                    <li class="active"><a href="#">Địa chỉ: ${acc.address}</a></li>
                                </ul>
                            </div>
                            <div class="user-fav">
                                <ul>
                                    <!--                                    <li><a href="#">Change password</a></li>-->
                                    <li><a href="logout">Đăng Xuất</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="form-style-1 user-pro" action="#" style="margin-bottom: 30px;">
                            <h2 style="color:white; font-family: 'Dosis', sans-serif; margin-bottom:10px">Thông tin vé</h2>
                            <table class="table" style="color:white">

                                <thead class="bg-light">
                                    <tr class="border-0">
                                        <th class="border-0">ID</th>
                                        <th class="border-0">Ghế</th>
                                        <th class="border-0">Tên Phim</th>
                                        <th class="border-0">Tên Rạp</th>
                                        <th class="border-0">Ngày Chiếu</th>     
                                        <th class="border-0">Giờ Chiếu</th>  
                                        <th class="border-0">Thời Gian Đặt Vé</th>  
                                    </tr>
                                </thead>

                                <tbody>                   
                                    <c:forEach items="${sessionScope.listO}" var="o" >
                                        <tr>
                                            <td>${o.orderID}</td>
                                            <td>${o.chairName}</td>
                                            <td>${o.productName}</td>
                                            <td>${o.nameCinema}</td>
                                            <td>${o.dateWatch}</td>
                                            <td>${o.timeWatch}</td>
                                            <td>${o.date}</td>
                                        </tr>     
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer section-->
        <%@include file="Footer.jsp" %>
        <!-- end of footer section-->

        <script src="js/jquery.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/plugins2.js"></script>
        <script src="js/custom.js"></script>
        <!--<script>
            function change(e){
                const file = e.target.files[0]
                file.preview = URL.createObjectURL(file)
                window.location = "change?" + file.preview
                console.log("abc")
            }
        </script>-->
    </body>

    <!-- userprofile14:04-->
</html>