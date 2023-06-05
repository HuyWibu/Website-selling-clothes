<%-- 
    Document   : AddProductAdmin.jsp
    Created on : May 19, 2023, 11:20:00 PM
    Author     : Admin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
              integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%@include file="navbar-admin.jsp" %>
        </div>

        <div class="container">
            <h3>Thêm sản phẩm mới</h3>
            <br>
            <form action="add-product" method="post">
                <div class="row">
                    <div class="col-sm-5">
                        
                        
                        
                        <div class="form-group">
                            <label for="author">Mã sản phẩm</label>
                            <input type="text" ${p.pid != null ? "readonly" : ""} class="form-control" required name="pid" 
                                   value="${p.pid}">

                        </div>

                        <div class="form-group">
                            <label for="author">Ảnh</label>
                            <input type="text" class="form-control" required name="image" placeholder="AD1285"
                                   value="${p.image}">

                        </div>

                        <div class="form-group">
                            <label for="author">Tên sản phẩm</label>
                            <input type="text" class="form-control" required name="title" 
                                   value="${p.title}">

                        </div>

                        <div class="form-group">
                            <label for="author">Giá</label>
                            <input type="text" class="form-control" required name="price" 
                                   value="${p.price}">

                        </div>
                        <div class="form-group">
                            <label for="author">Giảm giá</label>
                            <input type="text" class="form-control" required name="discount" 
                                   value="${p.discount}">

                        </div>
                        <div class="form-group">
                            <label for="author">Mã loại sản phẩm</label>
                            <input type="text" class="form-control" required name="cid" 
                                   value="${p.cid}">

                        </div>
                        <div class="form-group">
                            <label for="author">Số lượng</label>
                            <input type="text" class="form-control" required name="quantity" 
                                   value="${p.quantity}">

                        </div>

                        <div class="form-group">
                            <label for="author">Nhãn hàng</label>
                            <input type="text" class="form-control" required name="brand" 
                                   value="${p.brand}">

                        </div>
                        <div class="form-group">
                            <label for="author">Chất liệu</label>
                            <input type="text" class="form-control" required name="material" 
                                   value="${p.material}">

                        </div>
                        <div class="form-group">
                            <label for="author">Kiểu dáng</label>
                            <input type="text" class="form-control" required name="design" 
                                   value="${p.design}">

                        </div>
                        <div class="form-group">
                            <label for="author">Phù hợp</label>
                            <input type="text" class="form-control" required name="fit" 
                                   value="${p.fit}">

                        </div><br><br><br><br>
                        <c:if test="${p.pid == null}">
                            <input type="hidden" name="action" value="add">
                        </c:if>
                            <c:if test="${p.pid != null}">
                            <input type="hidden" name="action" value="edit">
                        </c:if>
                    </div>

                    <div class="col-sm-5">
                        <p>Hình Ảnh</p>
                        <div class="custom-file">
                            
                            <input type="file"  class="custom-file-input" name="productImage" accept="image/jpeg, image/png"  id="productImage"/>
                            <label class="custom-file-label" for="productImage">Choose file</label>
                        </div>
                        <div class="form-group">
                            <img id="imgPreview" height="500px" width="140px" src="" style="margin-top: 20px" alt=" ">
                        </div>
                        
                        <input type="submit" class="btn btn-primary" style="float:right; width: 60px; height: 40px" value="Lưu">
                    </div>
                </div>
            </form>
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
        <script>
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $('#imgPreview').attr('src', e.target.result).width(100).height(100);
                    }
                    reader.readAsDataURL(input.files[0])
                }
            }
            $('#productImage').change(function () {
                readURL(this);
            });
            $(".custom-file-input").on("change", function () {
                var fileName = $(this).val().split("\\").pop();
                $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
            });
        </script>
    </body>
</html>
