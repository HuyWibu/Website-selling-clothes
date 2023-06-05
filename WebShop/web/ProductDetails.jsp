<%-- 
    Document   : ProductDetails.jsp
    Created on : May 2, 2023, 3:06:48 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles/product-detail.css">
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
            <p style="color:#ff00ff"><b><i>
                        Trang Chủ / ${category.name} / ${product.title}
            </i></b></p>
        </div>

        <!-- detail -->
        <div class="detail">
            <div class="container">
                <div class="row">

                    <div class="col-lg-9 col-md-9 col-xs-9">
                        <div class="row">
                            <div class="list-image col-lg-3 col-md-3 col-xs-3">
                                <a href="#" onclick="show1()">
                                    <img src="${detail.image1}" alt="" class="img1"
                                         style="width: 100%; margin-bottom: 20px;">
                                </a>
                                <a href="#" onclick="show2()">
                                    <img src="${detail.image2}" alt="" class="img2"
                                         style="width: 100%; margin-bottom: 20px;">
                                </a>
                                <a href="#" onclick="show3()">
                                    <img src="${detail.image3}" alt="" class="img3"
                                         style="width: 100%; margin-bottom: 20px;">
                                </a>
                            </div>
                            <div class="show col-lg-9 col-md-9 col-xs-9">
                                <img src="${product.image}" class="img-show" alt=""
                                     style="width: 90%; margin-bottom: 20px;">
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-xs-3">
                        <h4>${product.title}</h4>
                        <br>
                        <p>
                            Thương hiệu: ${detail.brand}
                            <br>
                        </p>
                        <br>
                        <h3>
                            <fmt:formatNumber value="${product.price}" pattern="#,##0" /> đ
                        </h3>
                        <br>
                        <form action="buy" method="post">
                        <h5>Kích Thước</h5><br> 
                        <!--Cho nay danh cho order sp-->
                        <div class="size" style="display: flex; justify-content: space-between;">
                            <p><input type="radio" name="size" value="S"  checked="true"> S</p>
                            <p><input type="radio" name="size" value="M" > M</p>
                            <p><input type="radio" name="size" value="L" > L</p>
                            <p><input type="radio" name="size" value="XL" > XL</p>
                            <p><input type="radio" name="size" value="XXL" > XXL</p>
                        </div>
                        <br>
                            <h5>Số Lượng</h5>
                            <input type="number" placeholder="Nhập số lượng" 
                                   name="quantity" id="quantityInput" style="padding: 2px;" oninput="checkQuantity()">
                            <div class="detail-btn">
                                <input  type="submit" class="btn btn-outline-dark" 
                                        disabled="" id="detailSubmit" style="width: 100%; margin-top: 40px;" value="Thêm Vào Giỏ Hàng">
                        
                            </div>
                            <input type="hidden" name="pid" value="${product.pid}">
                        </form>            
                        <a href="cart"><button class="btn btn-outline-dark active" style="width: 100%;margin-top: 20px;">Mua
                                    Ngay</button></a>
                        <br>
                        <br>
                        <h5>Chất liệu:</h5>
                        <p>${detail.material}</p>
                        <h5>Kiểu dáng:</h5>
                        <p>${detail.design}</p>
                        <h5>Phù hợp:</h5>
                        <p>${detail.fit}</p>
                    </div>
                </div>
            </div>
        </div>

        <!--Liên quan-->
        <div class="lienquan" style="text-align: center; margin-bottom: 30px;">
            <h3 style="padding: 20px;">SẢN PHẨM LIÊN QUAN</h3>
            <div class="container">
                <div class="row">
                    <c:forEach begin="0" end="3" items="${productRelated}" var="pr">
                        <div class="card col-lg-3 col-md-3 col-xs-3">
                            <a href="detail?pid=${pr.pid}">
                                <img src="${pr.image}" class="d-block w-100" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">${pr.title}</h5>
                                    <p class="card-text">
                                        <fmt:formatNumber value="${pr.price}" pattern="#,##0" /> đ
                                    </p>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
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

        <script>

            let img1 = document.querySelector(".img1");
            let img2 = document.querySelector(".img2");
            let img3 = document.querySelector(".img3");
            function show1() {
                document.querySelector(".img-show").src = img1.src;
            }
            function show2() {
                document.querySelector(".img-show").src = img2.src;
            }
            function show3() {
                document.querySelector(".img-show").src = img3.src;
            }
            
            function checkQuantity(e){
                const res = document.getElementById("quantityInput");
                const detailSubmit = document.getElementById("detailSubmit");
                if(res.value <= 0){
                    detailSubmit.setAttribute("disabled", "");
                    console.log("here1");
                }
                else{
                    detailSubmit.removeAttribute('disabled');
                    console.log("here");
                }
            }
        </script>
    </body>
</html>
