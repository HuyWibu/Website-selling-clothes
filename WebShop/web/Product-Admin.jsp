<%-- 
    Document   : Product-Admin.jsp
    Created on : May 19, 2023, 10:39:03 PM
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

            <a href="add-product" style="margin: 20px 0" class="btn btn-primary">Thêm Sản Phẩm</a>
            <table class="table">
                <thead class="thead-light">
                    <tr>
                        <th scope="col">Mã sản phẩm</th>
                        <th scope="col">Ảnh</th>
                        <th scope="col">Tên sản phẩm</th>
                        <th scope="col">Giá</th>
                        <th scope="col">Giảm giá</th>
                        <th scope="col">Mã loại sản phẩm</th>
                        <th scope="col">Số lượng</th>
                        <th scope="col">Nhãn hàng</th>
                        <th scope="col">Chất liệu</th>
                        <th scope="col">Kiểu dáng</th>
                        <th scope="col">Phù hợp</th>
                        <th scope="col">Sửa</th>
                        <th scope="col">Xóa</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listDTO}" var="i">
                        <tr>
                            <td>${i.pid}</td>
                            <td><img src="${i.image}" width="160px" height="180px" alt="${i.image}"/></td>
                            <td>${i.title}</td>
                            <td>${i.price}</td>
                            <td>${i.discount}</td>
                            <td>${i.cid}</td>
                            <td>${i.quantity}</td>
                            <td>${i.brand}</td>
                            <td>${i.material}</td>
                            <td>${i.design}</td>
                            <td>${i.fit}</td>
                            <td><a href="add-product?pid=${i.pid}"><button type="button" class="btn btn-warning">Sửa</button></a></td>
                            <td><a href="delete-product?pid=${i.pid}"><button type="button" class="btn btn-danger">Xóa</button></a></td>
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
