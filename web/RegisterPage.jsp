<%-- 
    Document   : RegisterPage
    Created on : Jan 17, 2023, 4:29:06 PM
    Author     : sairam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

 <html>
    <head>
        <title>Register</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="assets/css/loginStyle.css">
        
        <script>
            function checkPass(){
            const password = document.getElementsByName("password").value;
            const confpassword = document.getElementsByName("conf_password").value;
            if(password !== confpassword){
                alert("Password and Confirm Password not matched");
            }
        }
        </script>
    </head>
    <body>
  <div class="login-box">
     <h2>Register</h2>
       
     <form action="Register" method="post">
        <div class="user-box">
             <input type="text" name="name" required="">
             <label>Full Name</label>
        </div>
        <div class="user-box">
            <input type="text" name="username" required="">
            <label>Username</label>
        </div>
        <div class="user-box">
            <input type="email" name="email" required="">
            <label>Email</label>
        </div>
        <div class="user-box">
            <input type="date" name="dob" required="">
            <label>DOB</label>
        </div>
        <div class="user-box">
            <input type="password" name="password" required="">
            <label>Password</label>
        </div>
        <div class="user-box">
            <input type="password" name="conf_password" required="">
            <label>Confirm Password</label>
        </div>
        <a href="#">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <input type="submit" value="Register" onclick="checkPass(); ">
        </a>
         <a href="LoginPage.jsp">Already a User</a>
    </form>
    </div>
    </body>
</html>

