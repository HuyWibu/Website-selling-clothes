<%-- 
    Document   : Profile.jsp
    Created on : May 19, 2023, 2:49:48 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles/profile.css">
        <link rel="stylesheet" href="styles/style.css">
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

        <!-- profile -->
        <form action="profile" method="post">
            <section class="vh-100" style="background-color: #f4f5f7;">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <!--<form action="profile" method="post">-->
                        <div class="col col-lg-8 mb-6 mb-lg-0">
                            <div class="card mb-3" style="border-radius: .5rem;">
                                <div class="row g-0">
                                    <div class="col-md-4 gradient-custom text-center text-white"
                                         style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
                                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                                             alt="Avatar" class="img-fluid my-5" style="width: 80px;" />
                                        <h5>${sessionScope.acc.user}</h5>
                                        <p>-- PHK brand --</p>
                                        <i class="far fa-edit mb-5"></i>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body p-4">
                                            <h6>Thông tin</h6>
                                            <hr class="mt-0 mb-4">
                                            <div class="row pt-1">
                                                <div class="col-6 mb-3">
                                                    <h6>Email</h6>
                                                    <input type="text" name="email" readonly required value="${sessionScope.acc.email}">
                                                </div>
                                                <div class="col-6 mb-3">
                                                    <h6>Số điện thoại</h6>
                                                    <input type="text" name="phone" required value="${sessionScope.acc.phone}">
                                                </div>
                                            </div>

                                            <hr class="mt-0 mb-4">
                                            <div class="row pt-1">
                                                <div class="col-6 mb-3">
                                                    <h6>Họ và tên</h6>
                                                    <input type="text" name="name" required value="${sessionScope.acc.name}">
                                                </div>
                                                <div class="col-6 mb-3">
                                                    <h6>Địa chỉ</h6>
                                                    <input type="text" name="address" required value="${sessionScope.acc.address}">
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-start">
                                                <a href="#!"><i class="fab fa-facebook-f fa-lg me-3"></i></a>
                                                <a href="#!"><i class="fab fa-twitter fa-lg me-3"></i></a>
                                                <a href="#!"><i class="fab fa-instagram fa-lg"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="submit" class="btn btn-outline-dark" 
                                   style="float: right; font-size: 20px; width: 80px" value="Save">

                        </div>
                        <!--</form>-->                        

                    </div>
                </div>
            </section>
        </form>                                       
        <!-- footer -->
        <div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
