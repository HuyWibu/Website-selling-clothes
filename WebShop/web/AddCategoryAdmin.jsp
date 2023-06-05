<%-- 
    Document   : AddCategoryAdmin.jsp
    Created on : May 19, 2023, 8:19:08 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <h3>Thêm loại sản phẩm mới</h3>
            <br>
            <form action="add-category" method="post">
                <div class="row">
                    <div class="col-sm-5">
                        <input type="hidden" name="cid" value="${category.cid}">
                        <div class="form-group">
                            <label for="author">Tên loại sản phẩm</label>
                            <input type="text" class="form-control" required name="name" 
                                   value="${category.name}">

                        </div>
                        <input type="submit" class="btn btn-primary" style="float:right" value="Lưu ">
                    
                    </div>
<!--                    <div class="col-sm-5">
                        <p>Hình Ảnh</p>
                        <div class="custom-file">
                            <input type="file"  class="custom-file-input" name="productImage" accept="image/jpeg, image/png"  id="productImage"/>
                            <label class="custom-file-label" for="productImage">Choose file</label>
                        </div>
                        <div class="form-group">
                            <img src="#" id="imgPreview" height="100px" width="100px" src="" style="margin-top: 20px" alt=" ">
                        </div>
                        <input type="hidden" name="imgName" value="">
                        <button type="submit" class="btn btn-primary">Thêm Mới</button>
                    </div>-->
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
