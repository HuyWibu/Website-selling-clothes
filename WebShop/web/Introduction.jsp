<%-- 
    Document   : Introduction.jsp
    Created on : May 1, 2023, 8:44:17 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles/about.css">
        <link rel="stylesheet" href="styles/style.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- Script -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
                integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
    </head>
</head>
<body>
    <div>
        <%@include file="navbar.jsp" %>
    </div>

    <!-- Paragraph -->
    <div class="paragraph">
        <p style="color:#ff00ff"><b><i>Trang Chủ / Giới Thiệu</i></b></p>
    </div>

    <!-- About -->
    <div class="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-xs-6 col-sm-6">
                    <div class="text-about">
                        <h3>THỜI TRANG PHK</h3>
                        <br>
                        <br>
                        <div class="text-about-content" style="font-size: 20px;">
                            Đồng hành cùng phụ nữ Việt Nam từ năm 2002, PHK tự hào là thương hiệu góp phần thay đổi diện
                            mạo thời trang Việt Nam trên chặng đường hoà mình cùng dòng chảy thời trang thế giới. Những
                            thiết kế từ PHK luôn đơn giản nhưng tinh tế, kết hợp giữa sự thanh lịch và nét đẹp truyền
                            thống của người Á Đông.
                            <br>
                            <br>
                            Đầu tư công sức cho việc thiết kế sản phẩm, chú trọng tới đường nét cắt may tinh xảo, lựa
                            chọn những chất liệu cao cấp, các nhà thiết kế từ PHK luôn tin rằng, một bộ trang phục dành
                            cho phụ nữ Việt, không chỉ cần sang trọng, quyến rũ, mà còn phải vừa vặn và phù hợp với vóc
                            dáng cơ thể đặc trưng của phụ nữ Châu Á.
                            <br>
                            <br>
                            Với bốn dòng sản phẩm chính
                            <br>
                            PHK New
                            <br>
                            PHK Luxury Limited
                            <br>
                            Homewear
                            <br>
                            <br>
                            cùng những nét đặc trưng riêng trong thiết kế, PHK tự tin mang đến cho khách hàng “giải
                            pháp” thời trang phù hợp với nhiều độ tuổi, phong cách ăn mặc và hoàn cảnh sử dụng khác
                            nhau.
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-xs-6 col-sm-6">
                    <img src="./image/image_gioithieu_1.webp" alt="" style="width: 100%;">
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
