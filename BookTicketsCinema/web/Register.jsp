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
        <link rel="stylesheet" href="css/signupcss.css">
    </head>
    <body>
        <div class="loginBox"> <img class="user" src="https://i.ibb.co/yVGxFPR/2.png" height="100px" width="100px">
            <p>${errorSignup}</p>
            <h3>Đăng Ký</h3>
            <form action="signup" method="post">
                <div class="inputBox"> 
                    <input id="username" type="text" 
                           name="username" placeholder="Username"> 
                    <input id="password" type="password" 
                           name="password" placeholder="Password">
                    <input id="re-password" type="password" 
                           name="re_password" placeholder="Re-password">
                    <input id="email" type="text" 
                           name="email" placeholder="Email">
                    <input id="phone" type="text" 
                           name="phone" placeholder="Phone">
                </div> 
                    <input type="submit" name="" value="Đăng Ký">
            </form> 
            
            <div class="text-center">
                <a href="#" style="a:hover;color: red; margin-bottom:15px">Bạn đã có tài khoản ?<br> </a>
            </div>
            <a href="login" >Đăng Nhập Ngay</a>
        </div>
    </body>
</html>
