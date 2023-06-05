<%-- 
    Document   : login.jsp
    Created on : Mar 26, 2023, 8:41:40 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
              integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" href="styles/style.css">
        <title>Login</title>
    </head>
    <body>
        <div id="logreg-forms">
            <form action="login" method="post" class="form-signin">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
                <c:if test="${mess!=null}">
                    <div class="alert alert-danger" role="alert">
                        ${mess}
                    </div>
                </c:if>
                <input name="user" type="text" id="inputEmail" class="form-control" placeholder="Username" required=""
                       autofocus="">
                <input name="pass" type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
                <div >
                    <input type="checkbox" name="remember" style="margin: 16px 8px;">Remember me
                </div>
                <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
                <hr>
                <!-- <p>Don't have an account!</p>  -->
                <button class="btn btn-primary btn-block" type="button" id="btn-signup">
                    <a href="signup.jsp" style="display: inline-block; padding: 0; color: white; text-decoration: none"><i class="fas fa-user-plus"></i>Sign up New Account</a>
                </button>
            </form>

        </div>
        <p style="text-align:center">
        </p>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
        <script src="/script.js"></script>

        
    </body>
</html>
