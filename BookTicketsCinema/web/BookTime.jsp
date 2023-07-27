<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Book Vé Xem Phim</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            .screen-container {
                perspective: 1000px;
                margin: 40px 0;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
            }

            .screen {
                background: rgb(255, 255 , 255);
                height: 70px;
                width: 70%;
                margin: 15px 0;
                transform: rotateX(-45deg);
                box-shadow: 0 3px 10px rgba(19, 120, 145, 0.7);
            }

            input.largerCheckbox {
                width: 100px;
                height: 100px;
                cursor: pointer;
            }
        </style>
    </head>
    <body style="background-image: url(images/bg.png)">
        <!-- nav bar -->
        <br><br><br>
        <!-- end of navbar -->
        <div class="container">
        </div>
        <div class="screen-container">
            <div class="screen" style="text-align: center;margin:auto"> 
                <a href="home"><h1 style="font-weight: bolder;color: indigo;margin-top:8px;font-family: sans-serif">Book Vé Xem Phim</h1></a>
            </div>
            <br><br> 
            <div class="container">
                <form action="booktime" method="post">                  
                    <br>
                    <br>
                    <h4 style="font-weight: bolder;color:white;">Chọn Rạp</h4>
                    <select id="nameCinema" class="form-control form-control-lg" name="nameCinema">
                        <option value="TIENTHANHCINEMA Phú Thọ">TIENTHANHCINEMA Phú Thọ</option>
                    </select>
                    <br>
                    <h4 style="font-weight: bolder;color:white;">Chọn ngày xem phim</h4>
                    <select id="dateWatch" class="form-control form-control-lg" name="dateWatch" >
                        <option value="16-03-2023">16-03-2023</option>
                    </select>
                    <br>
                    <h4 style="font-weight: bolder;color:white;">Chọn giờ xem phim</h4>
                    <select id="timeWatch" class="form-control form-control-lg" name="timeWatch">
                        <option value="16h30">16h30</option>    
                    </select>
                    <br><br>
                    <input type="submit" class="btn btn-outline-danger btn-block" 
                           value="Tiếp Tục" 
                           style="background-color: #abdde5; color: red;
                           font-family: sans-serif;font-size: 30px; font-weight: bolder">                             
                    </input>
                </form>
            </div>
        </div>
    </body>
</html>