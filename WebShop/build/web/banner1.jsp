<%-- 
    Document   : banner1.jsp
    Created on : Mar 8, 2023, 8:34:52 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="slide" class="carousel slide" data-bs-ride="carousel">

            <!-- Indicators/dots -->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#slide" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#slide" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#slide" data-bs-slide-to="2"></button>
            </div>

            <!-- The slideshow/carousel -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="./image/banner1.webp" class="d-block" style="width:100%">
                </div>
                <div class="carousel-item">
                    <img src="./image/ms_banner_img2.jpg" class="d-block" style="width:100%">
                </div>
                <div class="carousel-item">
                    <img src="./image/ms_banner_img1.webp" class="d-block" style="width:100%">
                </div>
            </div>

            <!-- Left and right controls/icons -->
            <button class="carousel-control-prev" type="button" data-bs-target="#slide" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#slide" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>
    </body>
</html>
