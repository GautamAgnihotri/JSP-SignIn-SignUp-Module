<%-- 
    Document   : index.jsp
    Created on : Jan 17, 2023, 11:46:24 PM
    Author     : sairam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String user = (String)session.getAttribute("name");
if(user==null){
   
response.sendRedirect("LoginPage.jsp");
}

%>
<!DOCTYPE html>
<html>
    <head>
        <title>welcome Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="assets/css/loginStyle.css">
        <link rel="stylesheet" href="assets/css/HomeStyle.css">
    </head>
    <body>
  <div class="login-box">
      
      <h2>Welcome To Your Profile</h2>
     
     
       
     <form action="Logout" method="post">
        
<!--        <div class="user-box">
            <input type="text" name="uname" required="">
            <label>Username</label>
        </div>
-->        
        <div class="user-box">
            <img src="assets/images/user.png" width="100px" height="100px">
        </div>

        <table>
            <tr>
                <td> Full Name :</td>
                <td>  <%= session.getAttribute("name") %></td>
            </tr>
            <tr>
                <td> User Name :</td>
                <td>  <%= session.getAttribute("uname") %></td>
            </tr>
            <tr>
                <td> Email :</td>
                <td>  <%= session.getAttribute("email") %></td>
            </tr>
            <tr>
                <td> DOB :</td>
                <td>  <%= session.getAttribute("dob") %></td>
            </tr>
        </table>
       
        <a href="#">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        
        <input type="submit" value="Logout">
        </a>
        
    </form>
    </div>
    </body>
</html>
