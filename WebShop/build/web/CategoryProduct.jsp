<%-- 
    Document   : CategoryProduct.jsp
    Created on : Apr 2, 2023, 3:30:01 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles/product.css">
        <link rel="stylesheet" href="styles/style.css"/> 
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- Script -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
                integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
    </head>
    <body>
        <div>
            <%@include file="navbar.jsp" %>
        </div>

        <!-- Paragraph -->
        <div class="paragraph">
            <p style="color:#ff00ff"> <b><i> Trang Chủ / Sản Phẩm
                <c:if test="${category != null}">
                    / ${category.name}
                </c:if>
            </i></b></p>
        </div>

        <!---Banner-->
        <div class="banner-product">
            <img src="./image/banner-product.webp" alt="" style="width: 100%;">
        </div>

        <!-- List Category-->
        <div class="list-product">
            <div class="container">
                <div class="row">
                    <div class="lists col-lg-4">
                        <div class="text">
                            <p>DANH MỤC SẢN PHẨM</p>
                            <ul>
                                <c:forEach items="${listCategory}" var="listC">
                                    <li><a class="${cid == listC.cid ? "category-selected" : ""}" 
                                           href="category?cid=${listC.cid}">${listC.name}</a></li> 
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <div class="product col-lg-8">
                        <p>TẤT CẢ SẢN PHẨM</p>
                        <div class="product-line">
                            <c:forEach begin="${0}" end="${2}" items="${data}" var="i">
                                <div class="card col-lg-4 single-item">
                                    <a href="detail?pid=${i.pid}">
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
                            <div class="col-lg-4"></div>
                        </div>
                        <!--Load sp len day-->
                        <div class="product-line">
                            <c:forEach begin="${3}" end="${5}" items="${data}" var="i">
                                <div class="card col-lg-4 single-item">
                                    <a href="detail?pid=${i.pid}">
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
                            <div class="col-lg-4"></div>
                        </div>                     
                        <div class="product-line">
                            <c:forEach begin="${6}" end="${8}" items="${data}" var="i">
                                <div class="card col-lg-4 single-item">
                                    <a href="detail?pid=${i.pid}">
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
                            <div class="col-lg-4"></div>
                        </div>        
                        <c:set var="page" value="${page}"/>
                        <c:forEach begin="${1}" end="${numpage}" var="i">
                            <a href="category?page=${i}"><button class="${i == page ? "page-active" : ""}" type="button" 
                                                                 class="btn btn-secondary active" style="width: 30px;
                                   margin-top: 30px; margin-bottom: 30px;">${i}</button></a>
                        </c:forEach>
                        
                    </div>

                </div>
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
