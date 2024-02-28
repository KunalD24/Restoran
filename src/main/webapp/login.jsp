<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--<%@page import="java.sql.Connection"%>
<%@page import="restron.conn.com.DBConnection"%>--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign In</title>
    
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <!-- Main css -->
    <link rel="stylesheet" href="css/registration.css">
    <style>
    hover {
        color: black;
    }
    </style>
</head>
<body>
    <% if (request.getAttribute("RegistrationSuccess") != null) { %>
        <script>Swal.fire({title: "Registration Successfull!",text: "Enter Crediential to LOG IN",icon: "success"});</script>
        <% } %>
    <div class="main">
        <!-- Sign up form -->
        <section class="signup">                        
            <div class="container">         
                <% if (request.getAttribute("LoginUnSuccess") != null) { %>
                            <!--<script>Swal.fire({title: "Login Failed",text: "Enter Crediential to LOG IN",icon: "error"}).then(function() { window.location = "<%=request.getContextPath()%>/login.jsp";});</script>-->
                        <div class="alert" style=" padding: 15px;background-color: #f44336;color: white;">
                            <span style="margin-left: 15px;color: white;font-weight: bold;float: right;font-size: 22px;line-height: 20px;cursor: pointer;transition: 0.3s;" class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                            <strong>Wrong Email Id And Password</strong>
                        </div>
                   <%  } %>                        
                <div class="signup-content">                    
                    <div class="signup-form">
                        <h2 class="form-title">Sign In</h2>
                        <form action="LogInController" method="post" autocomplete="off" onsubmit="return ValidateLoginForm()">                            
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="password" id="pass" placeholder="Password"/>
                            </div>                            
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Log In"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="img/signup-image.png" alt="sing up image"></figure>
                        <a href="registration.jsp" class="signup-image-link">Not a Member ? Register Here</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/login.js"></script>  
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>