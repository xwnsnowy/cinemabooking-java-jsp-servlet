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

<!-- moviesingle07:38-->
<head>
	<!-- Basic need -->
        <link rel="icon" type="image/png" href="images/cinema_logo.png"/>
	<title>${detail.productName}</title>
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
        <!-- END | Header -->

<div class="hero mv-single-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- <h1> movie listing - list</h1>
				<ul class="breadcumb">
					<li class="active"><a href="#">Home</a></li>
					<li> <span class="ion-ios-arrow-right"></span> movie listing</li>
				</ul> -->
			</div>
		</div>
	</div>
</div>
<div class="page-single movie-single movie_single">
	<div class="container">
		<div class="row ipad-width2">
			<div class="col-md-4 col-sm-12 col-xs-12">
				<div class="movie-img sticky-sb">
                                    <img src="${detail.image}" alt="">
					<div class="movie-btn">	
						<div class="btn-transform transform-vertical red">
							<div><a href="#" class="item item-1 redbtn"> <i class="ion-play"></i> Xem Trailer</a></div>
							<div><a href="${detail.trailer}" class="item item-2 redbtn fancybox-media hvr-grow"><i class="ion-play"></i></a></div>
						</div>
                                                <c:if test="${detail.categoryID eq 1}">  
						<div class="btn-transform transform-vertical">
							<div><a href="booktime?productID=${detail.productID}" class="item item-1 yellowbtn"> <i class="ion-card"></i> Mua Vé</a></div>
							<div><a href="booktime?productID=${detail.productID}" class="item item-2 yellowbtn"><i class="ion-card"></i></a></div>
						</div>
                                                </c:if>
                                                
                                                <c:if test="${detail.categoryID eq 2}">  
						<div class="btn-transform transform-vertical">
							<div><a href="#" class="item item-1 yellowbtn"> <i class="ion-card"></i> Mua Vé</a></div>
							<div><a href="#" class="item item-2 yellowbtn"><i class="ion-card"></i></a></div>
						</div>
                                                </c:if>
					</div>
				</div>
			</div>
			<div class="col-md-8 col-sm-12 col-xs-12" >
                            <div class="movie-single-ct main-content">
                                <div class="social-btn">
                                </div>
                                <div class="movie-rate" >
                                    <div class="rate">
                                        <h1 class="bd-hd" style="margin-top:15px;margin-right:20px; color: #66afe9;max-width:85%">${errorBooking}</h1>
                                        <h1 class="bd-hd" style="margin-top:15px;margin-right:20px; color: #66afe9;max-width:85%">${detail.productName}</h1>
                                        <i class="ion-android-star"></i>
                                        <p><span>${detail.rate}</span> <span>/10</span>
                                        </p>
                                    </div>						
                                </div>
                                <div class="movie-tabs">
                                    <div class="tabs">
                                        <ul class="tab-links tabs-mv">
								                      
							</ul>
						    <div class="tab-content"    >
						        <div id="overview" class="tab active">
						            <div class="row" >
                                                                	<div class="col-md-4 col-xs-12 col-sm-12">
						            		<div class="sb-it" >
						            			<h6 style="font-size: 20px;color:yellow" >Thời Lượng: </h6>
						            			<p style="font-size: 20px">${detail.movieDuration}</p>
						            		</div>
						            		<div class="sb-it">
						            			<h6 style="font-size: 20px;color:yellow">Ngày khởi chiếu: </h6>
						            			<p style="font-size: 20px">${detail.releaseDate}</p>
						            		</div>
						            		<div class="sb-it">
						            			<h6 style="font-size: 18px;color:yellow">Thể loại: </h6>
                                                                                <p style="font-size: 20px">${detail.movieGenre}</p>
						            		</div>
						            		<div class="sb-it">
						            			<h6 style="font-size: 18px;color:yellow">Đạo diễn:</h6>
						            			<p style="font-size: 20px">${detail.movieDirector}</p>
						            		</div>
						            		<div class="sb-it">
						            			<h6 style="font-size: 18px;color:yellow">Diễn viên:</h6>
						            			<p style="font-size: 20px">${detail.movieActor}</p>
						            		</div>
						            					            		
						            	</div>
						            	<div class="col-md-8 col-sm-12 col-xs-12">
                                                                    <br>
                                                                    <h1 style="color: #01c73c">Giới Thiệu</h1>
						            		<p style="font-size: 18px; text-align: justify;margin-top:15px; color:#faebcc " class="bd-hd" >${detail.description}</p>
						            	</div>           
						            </div>
						        </div>

						    </div>
						</div>
					</div>
				</div>
			</div>
		</div>
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

<!-- moviesingle11:03-->
</html>