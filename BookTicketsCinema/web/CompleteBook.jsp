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
                background: rgb(225, 247 , 155);
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
                <c:if test="${errorSeat == null}">  
      
                <a href="#"><h1 style="font-weight: bolder;color: indigo;margin-top:8px;font-family: sans-serif">Thông Tin Vé</h1></a>
                </c:if>
                <c:if test="${errorSeat != null}">  
                <a href="#"><h1 style="font-weight: bolder;color: red;margin-top:8px;font-family: sans-serif;">${errorSeat}</h1></a>
                </c:if>
            </div>
            
            <br><br> 
            <div class="container">
                <div class="container">
                    <br>
                    <div style="display:flex">
                        
                        <table>
                            <tr>
                                <th style="color: #FFD43B;font-family: var;font-size: 30px"><b>Tên Phim: </b></th>
                                 <c:if test="${errorSeat == null}">
                                <th style="color:white;font-family: sans-serif;font-size: 25px">${sessionScope.product.productName}</th>
                                </c:if>
                                <c:if test="${errorSeat != null}">
                                <th style="color:white;font-family: sans-serif;font-size: 25px">${sessionScope.product.productName}</th>
                                </c:if>
                                </tr>
                            <tr>
                                <th style="color:#FFD43B;font-family: var;font-size: 30px"><b>Chi Nhánh: </b></th>
                                <th style="color:white;font-family: sans-serif;font-size: 25px">${order.nameCinema}</th>
                            </tr>
                            <tr>
                                <th style="color:#FFD43B;font-family: var;font-size: 30px"><b>Giờ Chiếu: </b></th>
                                <th style="color:white;font-family: sans-serif;font-size: 25px">${order.timeWatch}</th>
                            </tr>
                            <tr>
                                <th style="color:#FFD43B;font-family: var;font-size: 30px"><b>Ngày Chiếu: </b></th>
                                <th style="color:white;font-family: sans-serif;font-size: 25px">${order.dateWatch}</th>
                            </tr>
                            <tr>
                                <th style="color:#FFD43B;font-family: var;font-size: 30px"><b>Tên Ghế: </b></th>
                                <th style="color:white;font-family: sans-serif;font-size: 25px">${sessionScope.listSeat}</th>
                            </tr>
                            <tr>
                                <th style="color:#FFD43B;font-family: var;font-size: 30px"><b>Tiền Vé Đơn: </b></th>
                                <c:if test="${errorSeat == null}">
                                <th style="color:white;font-family: sans-serif;font-size: 25px">${sessionScope.product.price}</th>
                                </c:if>
                                <c:if test="${errorSeat != null}">
                                <th style="color:white;font-family: sans-serif;font-size: 25px">${sessionScope.product.price}</th>
                                </c:if>
                            </tr>
                            <tr>
                                <th style="color:#FFD43B;font-family: var;font-size: 30px"><b>Tổng: </b></th>
                                <th style="color:white;font-family: sans-serif;font-size: 25px">${sessionScope.orderDetail.total()}</th>
                            </tr>
                        </table>
                        
                        <c:if test="${errorSeat == null}">
                        <div style="margin-left:50px; height: 300px;">
                            <img style="height: 100%;" src="${sessionScope.product.image}" alt="">
                        </div>
                        </c:if>
                            
                        <c:if test="${errorSeat != null}">
                                <img style="height: 80%;width:30%" src="images/erroraccount.png" alt="">
                        </c:if>
                    </div>
                    <br>
                    <c:if test="${errorSeat == null}">
                    <form action="mybooking" method="POST">
                        <input type="submit" class="btn btn-outline-danger btn-block" 
                               value="Thanh Toán" name="payment"
                               style="background-color: #abdde5; color: red;
                           font-family: sans-serif;font-size: 30px; font-weight: bolder">                             
                        </input> 
                    </form> 
                    </c:if>
                </div>
            </div>
        </div>
    </body>
</html>