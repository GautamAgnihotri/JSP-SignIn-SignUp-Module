<%-- 
    Document   : LoginPage
    Created on : Jan 17, 2023, 4:29:29 PM
    Author     : sairam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="assets/css/loginStyle.css">
    </head>
    <body>
  <div class="login-box">
     <h2>Login</h2>
       
     <form action="Login" method="post">
        
        <div class="user-box">
            <input type="text" name="uname" required="">
            <label>Username</label>
        </div>
        
        <div class="user-box">
            <input type="password" name="password" required="">
            <label>Password</label>
        </div>
        
        <a href="#">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <input type="submit" value="Login">
        </a>
         <a href="RegisterPage.jsp">Create Account</a>
    </form>
    </div>
    </body>
</html>
