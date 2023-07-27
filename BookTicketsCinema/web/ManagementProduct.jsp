<%-- 
    Document   : admin
    Created on : 09-03-2023, 16:53:32
    Author     : user
--%>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <link rel="icon" type="image/png" href="images/adminicon.png"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
    <title>ADMIN</title>
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand" href="admin" style="color: crimson">ADMIN CINEMA</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                        <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="images/adminicon.png" alt="" class="user-avatar-md rounded-circle"></a>
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                <div class="nav-user-info">
                                    <h5  class="mb-0 text-white nav-user-name" style="font-family: sans-serif; font-weight: bolder">Hello, Nguyễn Tiến Thành</h5>
                                </div>
                                <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Account</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Setting</a>
                                <a class="dropdown-item" href="logout"><i class="fas fa-power-off mr-2"></i>Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
        <div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list" style="background-color: #adb5bd;overflow: hidden;width: auto;height: 100%; border: #000">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav" >
                        <ul class="navbar-nav flex-column">
                             <li>
                                 <a><img src="images/adminicon.png" width="150px" style="margin-left:50px; margin-top:30px" alt="alt"/></a>
                            </li>
                            <li class="nav-item" style="margin-top:20px">
                                <a class="nav-link" href="quanlynguoidung" style="margin-bottom: 30px;font-size: 20px; font-family: New Century Schoolbook, serif; color: black; font-weight: bolder">Quản Lý Người Dùng</a>
                              
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="quanlysanpham" style="margin-bottom: 30px;font-size: 20px; font-family: New Century Schoolbook, serif; color: black ; font-weight: bolder" >Quản Lý Sản Phẩm</a>
                                
                            </li><li class="nav-item">
                                <a class="nav-link" href="quanlydonhang" style="margin-bottom: 30px; font-size: 20px; font-family: New Century Schoolbook, serif; color: black; font-weight: bolder" >Quản Lý Đơn Hàng</a>

                            </li>
                           
                        </ul>
                                                        
                        
                    </div>
                </nav>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="dashboard-ecommerce">
                      <div class="row" style="margin-left:600px; margin-top:20px">                           
                            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                                <div class="card border-3 border-top border-top-primary">
                                    <div class="card-body">
                                        <h5 class="text-muted">Tổng Số Sản Phẩm</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1" style="text-align: center">${sizeP}</h1>
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                            <!-- ============================================================== -->
                            <!-- end total orders  -->
                            <!-- ============================================================== -->
                        </div>
                    <div class="ecommerce-widget">
                        <div class="row">
                            <!-- ============================================================== -->
                      
                            <!-- ============================================================== -->

                                          <!-- recent orders  -->
                            <!-- ============================================================== -->
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12" style="margin-left:30px;">
                                <div class="card">
                                    <div style="display:flex"><h5 class="card-header" style="font-family: sans-serif; font-weight: bold">QUẢN LÝ SẢN PHẨM</h5>
                                    <a href="addproduct" >  
                                        <img src="images/movie-open-plus-outline.512x498.png" width="50px" alt="alt"/>
                                    </a> </div>
                                    <div class="card-body p-0">
                                        <div class="table-responsive">
                                            <table class="table">
                                                
                                                <thead class="bg-light">
                                                    <tr class="border-0">
                                                        <th class="border-0">ID</th>
                                                        <th class="border-0">NAME</th>
                                                        <th class="border-0">PRICE</th>
                                                        <th class="border-0">IMAGE</th>
                                                        <th class="border-0 " >DESCRIPTION</th>
                                                        <th class="border-0">TRAILER</th>
                                                        <th class="border-0">CATEGORYID</th>
                                                        <th class="border-0">MOVIEGENRE</th>
                                                        <th class="border-0">MOVIEDIRECTOR</th>
                                                        <th class="border-0">MOVITEACTOR</th>
                                                        <th class="border-0">MOVITEDURATION</th>
                                                        <th class="border-0">RELEASEDATE</th>
                                                        <th class="border-0">RATE</th>
                                                        <th class="border-0" style="text-align: center">EDIT</th>
                                                    </tr>
                                                </thead>
                                                
                                                <tbody>                       
                                                    <c:forEach items="${listP}" var="p" >
                                                    <tr>
                                                        <td>${p.productID}</td>
                                                        <td>${p.productName}</td>
                                                        <td>${p.price}</td>
                                                        <td><textarea rows="5" cols="10">${p.image}</textarea></td>
                                                        <td><textarea rows="5" cols="10">${p.description}</textarea></td>
                                                        <td><textarea rows="5" cols="10">${p.trailer}</textarea></td>
                                                        <td>${p.categoryID}</td>
                                                        <td>${p.movieGenre}</td>
                                                        <td>${p.movieDirector}</td>
                                                        <td>${p.movieActor}</td>
                                                        <td>${p.movieDuration}</td>
                                                        <td>${p.releaseDate}</td>
                                                        <td>${p.rate}</td>
                                                        <td style="text-align: center">
                                                            <a href="deleteproduct?productID=${p.productID}" ><img src="images/delete.png" width="30px" alt="alt"/></a>
                                                            <a href="editproduct?productID=${p.productID}" ><img src="images/edit-icon.png" width="35px" alt="alt"/>
                                                        </td>                                                       
                                                    </tr>
                                                        </c:forEach>
                                                </tbody>
                                                
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
                        </div>
                      
                    </div>
                </div>
            </div>

        </div>
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <!-- jquery 3.3.1 -->
    <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <!-- bootstap bundle js -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <!-- slimscroll js -->
    <script src="assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <!-- main js -->
    <script src="assets/libs/js/main-js.js"></script>
    <!-- chart chartist js -->
    <script src="assets/vendor/charts/chartist-bundle/chartist.min.js"></script>
    <!-- sparkline js -->
    <script src="assets/vendor/charts/sparkline/jquery.sparkline.js"></script>
    <!-- morris js -->
    <script src="assets/vendor/charts/morris-bundle/raphael.min.js"></script>
    <script src="assets/vendor/charts/morris-bundle/morris.js"></script>
    <!-- chart c3 js -->
    <script src="assets/vendor/charts/c3charts/c3.min.js"></script>
    <script src="assets/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
    <script src="assets/vendor/charts/c3charts/C3chartjs.js"></script>
    <script src="assets/libs/js/dashboard-ecommerce.js"></script>
</body>
 
</html>
