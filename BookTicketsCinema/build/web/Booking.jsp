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
                <form action="booking" >
                    <table style="width:100%">
                        <tr >
                            <th></th>
                            <th style="color:white;font-family: sans-serif;font-size: 30px">1</th>
                            <th style="color:white;font-family: sans-serif;font-size: 30px">2</th>
                            <th style="color:white;font-family: sans-serif;font-size: 30px">3</th>
                            <th style="color:white;font-family: sans-serif;font-size: 30px">4</th>
                            <th style="color:white;font-family: sans-serif;font-size: 30px">5</th>
                        </tr>
                        <tr>
                            <th style="color:white;font-family: sans-serif;font-size: 30px">A</th>
                            
                                <c:forEach items="${listSeatRow1}" var="row1">
                                    <c:choose>
                                        <c:when test="${row1.status eq 1}">
                                        <th><input type="checkbox" class="largerCheckbox" name="seat" value="${row1.chairname}" checked  disabled></th>
                                        </c:when>
                                        <c:otherwise>
                                        <th><input type="checkbox" class="largerCheckbox" name="seat" value="${row1.chairname}" ></th>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </tr>
                        <tr>
                            <th style="color:white;font-family: sans-serif;font-size: 30px">B</th>
                                <c:forEach items="${listSeatRow2}" var="row2">
                                    <c:choose>
                                        <c:when test="${row2.status eq 1}">
                                        <th><input type="checkbox" class="largerCheckbox" name="seat" value="${row2.chairname}" checked disabled></th>
                                        </c:when>
                                        <c:otherwise>
                                        <th><input type="checkbox" class="largerCheckbox" name="seat" value="${row2.chairname}" ></th>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                        </tr>
                        <tr>
                            <th style="color:white;font-family: sans-serif;font-size: 30px">C</th>
                                <c:forEach items="${listSeatRow3}" var="row3">
                                    <c:choose>
                                        <c:when test="${row3.status eq 1}">
                                        <th><input type="checkbox" class="largerCheckbox" name="seat" value="${row3.chairname}" checked disabled></th>
                                        </c:when>
                                        <c:otherwise>
                                        <th><input type="checkbox" class="largerCheckbox" name="seat" value="${row3.chairname}" ></th>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                        </tr>
                        <tr>
                            <th style="color:white;font-family: sans-serif;font-size: 30px">D</th>
                                <c:forEach items="${listSeatRow4}" var="row4">
                                    <c:choose>
                                        <c:when test="${row4.status eq 1}">
                                        <th><input type="checkbox" class="largerCheckbox" name="seat" value="${row4.chairname}" checked disabled></th>
                                        </c:when>
                                        <c:otherwise>
                                        <th><input type="checkbox" class="largerCheckbox" name="seat" value="${row4.chairname}" ></th>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                        </tr>
                        <tr>
                            <th style="color:white;font-family: sans-serif;font-size: 30px">E</th>
                                <c:forEach items="${listSeatRow5}" var="row5">
                                    <c:choose>
                                        <c:when test="${row5.status eq 1}">
                                        <th><input type="checkbox" class="largerCheckbox" name="seat" value="${row5.chairname}" checked disabled></th>
                                        </c:when>
                                        <c:otherwise>
                                        <th><input type="checkbox" class="largerCheckbox" name="seat" value="${row5.chairname}" ></th>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                        </tr>
                        
                    </table>
                    <br>
                    <br>
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