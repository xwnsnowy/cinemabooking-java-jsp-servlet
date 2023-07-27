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
                                <li> <span class="ion-ios-arrow-right"></span>Profile</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="page-single" style="background-image: url(images/bg.png)">
            <div class="container">
                <div class="row ipad-width">
                    <div class="col-md-4 col-sm-6 col-xs-6">
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
                    <div class="col-md-8 col-sm-12 col-xs-12">
                        <div class="form-style-1 user-pro"  style="margin-bottom: 30px;">
                            <form action="updateinfo" class="user">
                                <h2 style="color:white; font-family: 'Dosis', sans-serif; margin-bottom:10px">Thay đổi thông tin cá nhân</h2>
                                <div class="row">
                                    <div class="col-md-6 form-it">                                       
                                        <input type="hidden" name="username" value="${sessionScope.acc.username}" placeholder="***************">
                                        <label>Họ và Tên</label>
                                        <input type="text" name="name" >
                                    </div>
                                    <div class="col-md-6 form-it">
                                        <label>Địa chỉ Email</label>
                                        <input type="text" name="email">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 form-it">
                                        <label>Giới tính</label>
                                        <select name="gender">
                                            <option value="Nam">Nam</option>
                                            <option value="Nữ">Nữ</option>
                                            <option value="Khác">Khác</option>
                                        </select>
                                        
                                    </div>
                                    <div class="col-md-6 form-it">
                                        <label>Phone</label>
                                        <input type="text" name="phone">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 form-it">
                                        <label>Ngày Sinh</label>
                                        <input type="date" name="dob">
                                    </div>
                                    <div class="col-md-6 form-it">
                                        <label>Địa chỉ</label>
                                        <input type=text name="address">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2">
                                        <input class="submit" type="submit" value="SAVE">
                                    </div>
                                </div>	
                            </form>
                             <form action="changepassword" class="password">
                                <h2 style="color:yellow; font-family: 'Dosis', sans-serif; margin-bottom:10px">${succesfullyChange}</h2>
                                <h2 style="color:red; font-family: 'Dosis', sans-serif; margin-bottom:10px">${errorChange}</h2>
                                <h2 style="color:white; font-family: 'Dosis', sans-serif; margin-bottom:10px">Đổi mật khẩu</h2>
                                <div class="row">                     
                                    <div class="col-md-6 form-it">
                                        <label>Mật khẩu cũ</label>
                                        <input type="password" name="opass" placeholder="**********">
                                        <input type="hidden" name="username" value="${sessionScope.acc.username}" placeholder="***************">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 form-it">
                                        <label>Mật khẩu mới</label>
                                        <input type="password" name="new-pass" placeholder="*************** ">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 form-it">
                                        <label>Nhập lại mật khẩu mới</label>
                                        <input type="password" name="renew-pass" placeholder="*************** ">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2">
                                        <input class="submit" type="submit" value="CHANGE">
                                    </div>
                                </div>	
                            </form>
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