<%-- 
    Document   : Pay.jsp
    Created on : May 19, 2023, 10:09:20 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles/pay.css">
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

        <div class="container" style="margin-top: 120px;">

            <!--Section: Block Content-->
            <section class="mt-5 mb-4">

                <form action="checkout" method="post">
                    <!--Grid row-->
                    <div class="row">

                        <!--Grid column-->
                        <div class="col-lg-8 mb-4">

                            <!-- Card -->
                            <div class="card wish-list pb-1">
                                <div class="card-body">

                                    <h5 class="mb-2">Hóa đơn thanh toán</h5>

                                    <!-- Grid row -->
                                    <div class="row">
                                        <div class="md-form md-outline mt-2">
                                            <label for="form14">Họ và tên:</label>
                                            <input type="text"  required id="form14" 
                                                   ${sessionScope.acc.name != null ? "readonly" : ""}
                                                   value="${name}" name="name" class="form-control">
                                        </div>

                                    </div>
                                    <!-- Grid row -->

                                    <!-- Grid row -->
                                    <div class="row">
                                        <div class="md-form md-outline mt-2">
                                            <label for="form14">Email:</label>
                                            <input type="text" required
                                                   ${sessionScope.acc != null ? "readonly" : ""}
                                                   id="form14" value="${email}" name="email" class="form-control">
                                        </div>

                                    </div>
                                    <!-- Grid row -->


                                    <!-- Address Part 1 -->
                                    <div class="md-form md-outline mt-2">
                                        <label for="form14">Số nhà, đường:</label>
                                        <input type="text" required id="form14" name="sonha" placeholder="Số nhà, đường,..." class="form-control">
                                    </div>

                                    <!-- Address Part 2 -->
                                    <div class="md-form md-outline mt-2">
                                        <label for="form15">Quận/Huyện:</label>
                                        <input type="text" id="form15" name="quan" placeholder="Quận Huyện"
                                               class="form-control">
                                    </div>

                                    <!-- Town / City -->
                                    <div class="md-form md-outline mt-2">
                                        <label for="form17">Thành Phố:</label>
                                        <input type="text" required id="form17" name="thanhpho" class="form-control">

                                    </div>

                                    <!-- Phone -->
                                    <div class="md-form md-outline mt-2">
                                        <label for="form18">Số điện thoại:</label>
                                        <input type="number" minlength="10" maxlength="10"  name="sdt" required id="form18" class="form-control">
                                    </div>




                                </div>
                            </div>
                            <!-- Card -->

                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-4">

                            <!-- Card -->
                            <div class="card mb-4">
                                <div class="card-body">

                                    <h5 class="mb-3">Thanh toán sản phẩm </h5>

                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
                                            <div>
                                                <strong>
                                                    <h3>Tổng tiền phải trả:</h3> <h2 style="color: #ff9966"> <fmt:formatNumber value="${totalMoney}" pattern="#,##0" /> đ</h2>
                                                </strong>
                                            </div>
                                        </li>
                                    </ul>

                                <input class="btn btn-primary btn-block waves-effect waves-light" type="submit" value="Thanh toán">               
                                    

                                </div>
                            </div>
                            <!-- Card -->
                            <!-- Card -->
                        </div>
                        <!--Grid column-->

                    </div>
                    <!--Grid row-->
                </form>
            </section>
            <!--Section: Block Content-->


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
