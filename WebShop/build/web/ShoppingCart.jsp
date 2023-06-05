<%-- 
    Document   : ShoppingCart.jsp
    Created on : May 1, 2023, 9:00:53 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.NumberFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles/shopping-cart.css">
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

        <div class="paragraph">
            <p style="color:#ff00ff"><b><i>Trang Chủ / Giỏ Hàng</i></b></p>
        </div>

        <!-- giỏ hàng -->
        <div class="giohang" style="text-align: center;">
            <h3 style="padding: 20px;">GIỎ HÀNG</h3>
            <c:set var="o" value="${sessionScope.cart}"/>
            <c:forEach items="${o.items}" var="i">
                <div class="item-list">
                    <div class="row-list" style="display: flex;">
                        <img src="${i.product.image}" alt="">
                        <div class="list-item-content">
                            <p style="font-size: 20px; padding: 20px;">${i.product.title}</p>
                            <p style="font-size: 20px; padding: 20px;">
                                <a href="process?num=-1&pid=${i.product.pid}"><button class="btn btn-outline-dark btn-amount">
                                        <
                                    </button></a>&nbsp; ${i.quantity} &nbsp;
                                <a href="process?num=1&pid=${i.product.pid}"><button class="btn btn-outline-dark btn-amount">
                                        >
                                    </button></a></p>
                            <p style="font-size: 20px; padding: 20px;">Size: ${i.size}</p>
                            <p style="font-size: 20px; padding: 20px;">
                                <fmt:formatNumber value="${i.price}" pattern="#,##0" /> đ
                            </p>
                            <form action="process" method="post">
                                <input type="hidden" name="id" value="${i.product.pid}">
                                <input type="submit" class="btn btn-danger" value="Xóa">
                            </form>
                            
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <!--thanh toan-->
        <div class="giohang2" style="display: flex;">
            <div class="giohang2-content"  style="margin-left: 60%;">
                <h3 style="color: black;">
                    Tổng tiền: <fmt:formatNumber pattern="##.#" value="${i.price}"/> 
                    <%
                        double totalMoney = (Double) request.getAttribute("totalMoney");
                        NumberFormat formatter = NumberFormat.getInstance();
                        String formatterTotal = formatter.format(totalMoney);
                    %>
                    <%= formatterTotal %> đ
                </h3><br>
               
                <a href="${totalMoney <= 0 ? "cart" : "pay"}" ><button class="btn btn-outline-dark" >Đặt hàng</button></a>
<!--                <input type="submit"  class="btn btn-outline-dark" ${totalMoney <= 0 ? "disabled" : ""} value="Đặt hàng">-->
                
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
