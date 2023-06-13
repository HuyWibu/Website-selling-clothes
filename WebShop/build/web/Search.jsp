<%-- 
    Document   : search.jsp
    Created on : May 17, 2023, 10:49:39 AM
    Author     : Admin
--%>

<%@page  contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<meta http-equiv="X-UA-Compatible" content="IE=edge">-->
        <!--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->
        <title>Thực tập cơ sở</title>
        <link rel="stylesheet" href="styles/search.css">
        <link rel="stylesheet" href="styles/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- Script -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
                integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <style>
            .card-search {
                text-decoration: none;
                color: black;
            }
        </style>

        <div>
            <%@include file="navbar.jsp" %>
        </div>

        <div class="para" style="margin-top: 90px; text-align: center;">
            <p style="font-size: 30px;">Kết Quả Tìm Kiếm:</p>
        </div>

        <!-- Kết quả-->
        <div class="res">
            <div class="container">
                <div class="row">

                    <c:forEach begin="${0}" end="${3}" items="${data}" var="i">
                        <div class="card col-lg-3 single-item">
                            <a href="detail?pid=${i.pid}" class="card-search">
                                <img src="${i.image}" class="d-block w-100" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">${i.title}</h5>
                                    <br>
                                    <p class="card-text">
                                        <fmt:formatNumber value="${i.price}" pattern="#,##0" /> đ
                                    </p>
                                </div>
                            </a>
                        </div> 
                    </c:forEach>

                </div>
                <div class="row">

                    <c:forEach begin="${4}" end="${7}" items="${data}" var="i">
                        <div class="card col-lg-3 single-item">
                            <a href="detail?pid=${i.pid}" class="card-search">
                                <img src="${i.image}" class="d-block w-100" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">${i.title}</h5>
                                    <br>
                                    <p class="card-text">
                                        <fmt:formatNumber value="${i.price}" pattern="#,##0" /> đ
                                    </p>
                                </div>
                            </a>
                        </div> 
                    </c:forEach>


                </div>
                <c:forEach begin="${1}" end="${numpage}" var="i">
                    <a href="search?page=${i}&search=${txtSearch}"><button class="${i == page ? "page-active" : ""}" type="button" 
                                                                           class="btn btn-secondary active" style="width: 30px;
                                                                           margin-top: 30px; margin-bottom: 30px;">${i}</button></a>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </c:forEach>
            </div>

        </div>

        <div>
            <%@include file="news.jsp" %>
        </div>

        <!-- footer -->
        <div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
