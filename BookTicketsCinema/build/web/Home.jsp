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

    </head>
    <body>

        <!-- BEGIN | Header -->
        <%@include file="Header.jsp" %>
        <div class="slider sliderv2">           
            <div class="container">
                <div class="row">
                    <div class="slider-single-item">
                        <c:forEach items="${listTOP}" var="t" >
                        <div class="movie-item">
                            <div class="row">
                                <div class="col-md-8 col-sm-12 col-xs-12">
                                    <div class="title-in">
                                        <div class="cate">
<!--                                            <span class="yell"><a href="#">Hành động</a></span>
                                            <span class="orange"><a href="#">Phiêu lưu</a></span>-->
                                        </div>
                                        <h1><a href="#">${t.productName}</a></h1>
                                        <div class="social-btn" style="margin-top:10px">
                                            <a style="margin-right:10px" href="${t.trailer}" class="item item-2 redbtn fancybox-media hvr-grow"><i class="ion-play"></i>Trailer</a>
                                            <!--                                            <a href="#" class="parent-btn"><i class="ion-heart"></i> Add to Favorite</a>-->
                                            <div class="hover-bnt">
                                                <a href="#" class="parent-btn"><i class="ion-android-share-alt"></i>share</a>
                                                <div class="hvr-item">
                                                    <a href="#" class="hvr-grow"><i class="ion-social-facebook"></i></a>
                                                    <a href="#" class="hvr-grow"><i class="ion-social-twitter"></i></a>
                                                    <a href="#" class="hvr-grow"><i class="ion-social-googleplus"></i></a>
                                                    <a href="#" class="hvr-grow"><i class="ion-social-youtube"></i></a>
                                                </div>
                                            </div>		
                                        </div>
                                        <div class="mv-details">
                                            <p><i class="ion-android-star"></i><span>${t.rate}</span> /10</p>
                                            <ul class="mv-infor" style="color: #f29438">
                                                <li>  Thời lượng: ${t.movieDuration} phút </li>
                                                <li>  Ngày phát hành: ${t.releaseDate}</li>
                                                <li>  Thể loại: ${t.movieGenre}</li>
                                            </ul>
                                        </div>
                                        <div class="btn-transform transform-vertical">
                                            <div><a href="detail?productID=${t.productID}" class="item item-1 redbtn yell" style="background-color: yellow; color: black">Chi tiết</a></div>
                                            <div><a href="detail?productID=${t.productID}" class="item item-2 redbtn hvrbtn">Chi tiết</a></div>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-12 col-xs-12">
                                    <div class="mv-img-2">
                                        <a href="#"><img src="${t.image}" alt=""></a>
                                    </div>
                                </div>
                            </div>	
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <!-- Body -->  
        <div class="movie-items  full-width">
            <div class="row">
                <div class="col-md-12">
                    <div class="title-hd">
                        <h2>PHIM ĐANG CHIẾU</h2>
                        <a href="dangchieu" class="viewall"> Xem tất cả <i class="ion-ios-arrow-right"></i></a>
                    </div>
                    <div class="tabs">
                        <div class="tab-content">

                            <div id="tab1-h2" class="tab active">
                                <div class="row">
                                    <div class="slick-multiItem2">
                                        <c:forEach items="${listC1}" var="c1" >

                                            <div class="slide-it" >
                                                <div class="movie-item">
                                                    <div class="mv-img">
                                                        <img src="${c1.image}" alt="">
                                                    </div>
                                                    <div class="hvr-inner">
                                                        <a  href="detail?productID=${c1.productID}"> Chi tiết <i class="ion-android-arrow-dropright"></i> </a>
                                                    </div>
                                                    <div class="title-in">
                                                    </div>
                                                </div>
                                            </div> 
                                        </c:forEach>    

                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="title-hd">
                        <h2>phim sắp chiếu</h2>
                        <a href="sapchieu" class="viewall">Xem tất cả <i class="ion-ios-arrow-right"></i></a>
                    </div>
                    <div class="tabs">
                        <!--                    <ul class="tab-links-2">
                                                <li class="active"><a href="#tab21-h2">#Popular</a></li>
                                                <li><a href="#tab22-h2"> #Coming soon</a></li>
                                                <li><a href="#tab23-h2">  #Top rated  </a></li>
                                                <li><a href="#tab24-h2"> #Most reviewed</a></li>                        
                                            </ul>-->
                        <div class="tab-content">
                            <div id="tab21-h2" class="tab active">
                                <div class="row">
                                    <div class="slick-multiItem2">
                                        <c:forEach items="${listC2}" var="c2" >
                                            <div class="slide-it" >
                                                <div class="movie-item">
                                                    <div class="mv-img">
                                                        <img src="${c2.image}" alt="">
                                                    </div>
                                                    <div class="hvr-inner">
                                                        <a href="detail?productID=${c2.productID}"> Chi tiết <i class="ion-android-arrow-dropright"></i> </a>
                                                    </div>
                                                    <div class="title-in">
                                                    </div>
                                                </div>
                                            </div> 
                                        </c:forEach>                           
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- End Body -->

        <!-- footer -->

        <%@include file="Footer.jsp" %>

        <!-- end of footer -->

        <script src="js/jquery.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/plugins2.js"></script>
        <script src="js/custom.js"></script>
    </body>

    <!-- homev207:28-->
</html>