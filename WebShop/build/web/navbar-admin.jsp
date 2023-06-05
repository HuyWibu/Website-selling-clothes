<%-- 
    Document   : navbar-admin.jsp
    Created on : May 19, 2023, 7:37:48 PM
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
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto"></ul>
                    <ul class="navbar-nav">
                        <li class="nav-item active">
                            <a class="nav-link"  href="Admin.jsp">Admin ${sessionScope.acc.user}</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link"  href="category-admin">Category</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="product-admin">Product</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="order-detail">Order-Detail</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="home">Return</a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
    </body>
</html>
