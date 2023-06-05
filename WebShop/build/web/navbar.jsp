<%-- 
    Document   : navbar.jsp
    Created on : Mar 8, 2023, 8:32:50 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light  fixed-top"
             style="background-color: #f7dff8; border-bottom: gray 1px solid;">
            <div class="container-lg">
                <a class="navbar-brand" href="home" id="logo">PHK</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse ul-bg" id="mynavbar">
                    <ul class="navbar-nav me-auto ">
                        <li class="nav-item">
                            <div class="nav-item1">
                                <a class="nav-link" href="category">Sản Phẩm</a>
                                <div class="dropdown">
                                    <a class="dropdown-toggle" data-bs-toggle="dropdown">
                                    </a>
                                    <ul class="dropdown-menu">
                                        <c:forEach items="${listCategory}" var="category" >
                                            <li><a class="dropdown-item" href="category?cid=${category.cid}">${category.name}</a></li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="collection">Bộ Sưu Tập</a>
                        </li>
                        <li class="nav-item">
                            <c:if test="${sessionScope.acc.isAdmin == 0}">
                                <!--nguoi dung bth thi se nhay den trang thong tin cua ng do-->
                                <a class="nav-link" href="profile">Hi, ${sessionScope.acc.user}</a>
                            </c:if>
                            <c:if test="${sessionScope.acc.isAdmin == 1}">
                                <!--neu la admin thi se nhay den trang quan ly sp-->
                                <a class="nav-link" href="admin">Hi, ${sessionScope.acc.user}</a>
                            </c:if>
                            <c:if test="${sessionScope.acc.isAdmin == null}">
                                <a class="nav-link" href="javascript:void(0)">Xin chào</a>
                            </c:if>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="introduction">Giới Thiệu</a>
                        </li>
                    </ul>


                    <ul class="navbar-nav ms-auto">
                        <li class="nav-but ">
                            <a href="cart">
                                <button class="btn btn-outline-dark">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                         class="bi bi-bucket-fill" viewBox="0 0 16 16">
                                    <path
                                        d="M2.522 5H2a.5.5 0 0 0-.494.574l1.372 9.149A1.5 1.5 0 0 0 4.36 16h7.278a1.5 1.5 0 0 0 1.483-1.277l1.373-9.149A.5.5 0 0 0 14 5h-.522A5.5 5.5 0 0 0 2.522 5zm1.005 0a4.5 4.5 0 0 1 8.945 0H3.527z" />
                                    </svg>Giỏ hàng</button>
                            </a>
                        </li>
                        <li class="nav-but">
                            <a href = "${sessionScope.acc == null ? "login.jsp" : "logout"}" ><button class="btn btn-outline-dark active ">
                                    <c:if test="${sessionScope.acc == null}">Đăng nhập</c:if>
                                    <c:if test="${sessionScope.acc != null}">Đăng xuất</c:if>
                            </button></a>
                        </li>
                    </ul>
                    <form class="d-flex btnsearch" action="search" method="post">
                        <input class="form-control me-2" type="text" value="${txtSearch}"
                               name="search" placeholder="Tìm kiếm">
                        <input type="submit" class="btn btn-success" value="Search">
                    </form>
                </div>
            </div>
        </nav>
    </body>
</html>
