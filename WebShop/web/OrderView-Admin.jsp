<%-- 
    Document   : Category-Admin.jsp
    Created on : May 19, 2023, 7:57:05 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%@include file="navbar-admin.jsp" %>
        </div>

        <div class="container-fluid">

            <table class="table">
                <thead class="thead-light">
                    <tr>
                        <th scope="col">Mã hóa đơn</th>
                        <th scope="col">Tên người mua</th>
                        <th scope="col">Tên sản phẩm</th>
                        <th scope="col">Ngày đặt</th>
                        <th scope="col">Kích thước</th>
                        <th scope="col">Số lượng</th>
                        <th scope="col">Giá bán</th>
                        <th scope="col">Số điện thoại</th>
                        <th scope="col">Địa chỉ nhận hàng</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${list}" var="i">
                        <tr>
                            <td>${i.oid}</td>
                            <td>${i.customerName}</td>
                            <td>${i.productName}</td>
                            <td>${i.dateBuy}</td>
                            <td>${i.size}</td>
                            <td>${i.quantity}</td>
                            <td>${i.salePrice}</td>
                            <td>${i.phoneNumber}</td>
                            <td>${i.address}</td>
                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
    </body>
</html>
