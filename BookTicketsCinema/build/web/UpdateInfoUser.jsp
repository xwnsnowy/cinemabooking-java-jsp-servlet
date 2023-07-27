<%-- 
    Document   : admin
    Created on : 09-03-2023, 16:53:32
    Author     : user
--%>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>s
<!doctype html>
<html lang="en">
 
 <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
        <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/libs/css/style.css">
            <link href="css/formcss.css" rel="stylesheet">
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
                                    <h5  class="mb-0 text-white nav-user-name" style="font-family: sans-serif; font-weight: bolder">Hello ${sessionScope.acc.name} dz</h5>
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
            <div class="menu-list" style="background-color: rgb(255 255 255);overflow: hidden;width: auto;height: 100%; border: #000">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav" >
                        <ul class="navbar-nav flex-column">
                             <li>
                                 <a herf="admin"><img src="images/adminicon.png" width="150px" style="margin-left:50px; margin-top:30px" alt="alt"/></a>
                            </li>
                            <li class="nav-item" style="margin-top:20px">
                                <a class="nav-link" href="quanlynguoidung" style="margin-bottom: 30px;font-size: 20px; font-family: New Century Schoolbook, serif; color: black; font-weight: bolder">Quản lý Người Dùng</a>
                              
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="quanlysanpham" style="margin-bottom: 30px;font-size: 20px; font-family: New Century Schoolbook, serif; color: black ; font-weight: bolder" >Quản lý sản phẩm</a>
                                
                            </li><li class="nav-item">
                                <a class="nav-link" href="quanlydonhang" style="margin-bottom: 30px; font-size: 20px; font-family: New Century Schoolbook, serif; color: black; font-weight: bolder" >Đơn hàng</a>

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
                     
                    <div class="ecommerce-widget">
                        <div class="row">
                            <!-- ============================================================== -->
                      
                            <!-- ============================================================== -->

                            <!-- recent orders  -->
                            <!-- ============================================================== -->
                            <div id="first">
                                  <h1 style="text-align: center;
                                        font-family: sans-serif;
                                        font-weight: bolder;
                                        color:blue;
                                       
                                        ">UPDATE TÀI KHOẢN</h1>
                                        <form action="updateinfouser" method="POST">
                                  
                                            <h1> ${errorUpdateUser}<h1>
                                 <c:set var="p" value="${requestScope.uid}"/>
                                <label>ID:</label>    
                                <br>
                                <input id="ID" name="id" type="text" READONLY value="${p.id}">     
                                
                                
                                <br><label>Mật Khẩu:</label>
                                <br>
                                <input id="password" name="password" type="text" value="${p.password}"> 
                                
                                <br><label>Họ và Tên:</label>
                                <br>
                                <input id="name" name="name" type="text" value="${p.name}">
                                           
                                <br><label>Địa Chỉ:</label>
                                <br>
                                <input id="address" name="address" type="text" value="${p.address}">
                                <br><label>Số Điện Thoại:</label>
                                <br>
                                <input id="phone" name="phone" type="text" value="${p.telephone}">
                                
                                <br><label>Email:</label>
                                <br>
                                <input id="email" name="email" type="text"  value="${p.email}">

                                <input id="submit" type="submit" value="UPDATE" style="margin-top:10px">
                                </form>
                            </div>


                            <!=<!-- form -->


                            <!=<!-- end form -->

                        </div>
                        <div class="row">
                        </div>

                        <div class="row">
                           
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
