<%-- 
    Document   : LoginNew
    Created on : 07-03-2023, 15:48:25
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/logincss.css">
    </head>
    <body>
        <div class="loginBox"> <img class="user" src="https://i.ibb.co/yVGxFPR/2.png" height="100px" width="100px">
            <p>${errorAccount}</p>
            <h3>Đăng Nhập</h3>
            <form action="login" method="post">
                <div class="inputBox"> <input id="username" type="text" name="username" placeholder="Username"> 
                    <input id="password" type="password" name="password" placeholder="Password"> 
                </div> 
                    <input type="submit" name="" value="Login">
            </form> 
            <div class="text-center">
                <a href="signup">Đăng ký tài khoản<br><br> </a>
            </div>
             <div class="text-center" >
                 <a href="home" >Back to Home </a>
            </div>
        </div>
    </body>
</html>
