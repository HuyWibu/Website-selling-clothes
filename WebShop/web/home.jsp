<%-- 
    Document   : home.jsp
    Created on : Mar 8, 2023, 8:21:42 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PHK Shop</title>
        <link rel="stylesheet" href="styles/style.css"/> 
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
        integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
    </head>
    <body>
        <!-- navbar -->
        <div>
            <%@include file="navbar.jsp" %>
        </div>
        
        <!-- slide -->
        <div>
            <%@include file="banner1.jsp" %>
        </div>
        
        <!-- productList -->
        <div>
            <%@include file="productList.jsp" %>
        </div>
        
        <!-- banner2 -->
        <div>
            <%@include file="banner2.jsp" %>
        </div>
        
        <!--blog-->
        <div>
            <%@include file="blog.jsp" %>
        </div>
        <!-- news -->
        <div>
            <%@include file="news.jsp" %>
        </div>
        
        <!-- footer -->
        <div>
            <%@include file="footer.jsp" %>
        </div>
        
    </body>
</html>
