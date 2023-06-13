<%-- 
    Document   : NewProduct.jsp
    Created on : Mar 8, 2023, 8:44:49 AM
    Author     : Admin
--%>

<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.NumberFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .single-item{
                transition: 0.5s;
                
            }
            
            .single-item:hover{
                transform: scale(1.05);
                
            }
        </style>
    </head>
    <body>
        <div class="new-product">
            <h2>SẢN PHẨM</h2>
            <!-- Slider Product -->

            <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner product">
                    <div class="carousel-item active">
                        <div class="row">
                            <c:forEach begin="0" end="4" items="${listProduct}" var="p">
                                <div class="card col-lg-2 single-item">
                                    <a href="detail?pid=${p.pid}">
                                        <img src="${p.image}" class="d-block w-100" alt="...">
                                        <div class="card-body">
                                            <h5 class="card-title">${p.title}</h5>
                                            <p class="card-text" id="formattedNumber">
                                                <fmt:formatNumber value="${p.price}" pattern="#,##0" /> đ
                                            </p>
                                        </div>
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <c:forEach begin="5" end="9" items="${listProduct}" var="p">
                                <div class="card col-lg-2 single-item">
                                    <a href="detail?pid=${p.pid}">
                                        <img src="${p.image}" class="d-block w-100" alt="...">
                                        <div class="card-body">
                                            <h5 class="card-title">${p.title}</h5>
                                            <p class="card-text">
                                                <fmt:formatNumber value="${p.price}" pattern="#,##0" /> đ
                                            </p>
                                        </div>
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                        data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Trước</span>
                </button>
                <button class="carousel-control-next " type="button" data-bs-target="#carouselExampleControls"
                        data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Tiếp</span>
                </button>
            </div>

        </div>
        
        
    </body>
</html>
