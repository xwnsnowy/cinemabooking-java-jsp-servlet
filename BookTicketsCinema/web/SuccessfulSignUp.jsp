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

    <!-- homev206:52-->
    <head>
        <!-- Basic need -->
        <link rel="icon" type="image/png" href="images/cinema_logo.png"/>
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
        <style>
           
        </style>
    </head>
    <body>

        <!--login form popup-->

        <%@include file="Login.jsp" %>

        <!--end of login form popup-->

        <!--signup form popup-->
        <%@include file="Register.jsp" %>
        <!--end of signup form popup-->

        <!-- BEGIN | Header -->
        <!-- END | Header -->
        
        <div class="slider sliderv2">
            
            <div class="container">
                <div class="row">
                    <div class="slider-single-item">
                        <div class="movie-item">
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12" style="margin-top: 20px">
                                    <div class="title-in">
                                        
                                        
                                        

                                    </div>
                                </div>
                     
                            </div>	
                        </div>

                        
                    </div>
                </div>
            </div>
        </div>
        <!-- Body -->  
        <div class="movie-items  full-width" >
            <h1 ><a href="#" style="
                    font-family: 'Dosis', sans-serif;
                    font-size: 60px;
                    margin-left:190px;
                    margin-bottom:15px;
                    color: yellow;
                    font-weight: 700;
                    text-transform: uppercase;
                    line-height: 60px;">Chúc mừng bạn đã đăng ký tài khoản thành công !</a></h1>
                    <h1></h1>
            <h1 ><a href="#" style="
                    margin-top:15px;
                    font-family: 'Dosis', sans-serif;
                    font-size: 40px;
                    margin-left:400px;
                    color: cyan;
                    font-weight: 700;
                    text-transform: uppercase;
                    line-height: 60px;">Nhấn vào hình bên dưới để quay trở về trang chủ</a></h1>

        </div>
        <!-- End Body -->

        <!-- footer -->

        <footer class="ht-footer">
            <div class="container">
                <div class="flex-parent-ft">
                    <div class="flex-child-ft item1">
                        <a href="home"><img style="margin-left:310px"  src="images/sc-icon.png" alt="alt" width="350" length="350"/></a>
                    </div>
                    
                </div>
            </div>
            <div class="ft-copyright">
                <div class="ft-left">
                    <p><a target="_blank" href="#">TienThanhCinema</a></p>
                </div>
                <div class="backtotop">
                    <p><a href="#" id="back-to-top">Back to top  <i class="ion-ios-arrow-thin-up"></i></a></p>
                </div>
            </div>
        </footer>

        <!-- end of footer -->

        <script src="js/jquery.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/plugins2.js"></script>
        <script src="js/custom.js"></script>
    </body>

    <!-- homev207:28-->
</html>