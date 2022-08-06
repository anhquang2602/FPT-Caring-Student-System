<%-- 
    Document   : editFood
    Created on : Jul 29, 2022, 9:42:27 AM
    Author     : DELL
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="EditFoodController" method="POST" enctype="multipart/form-data">
            <h1>Edit Food</h1>
            <input type="text" name="foodId" value="${food.foodID}">   
            <label>Tên món ăn: </label>
            <input type="text" name="foodName" value="${food.foodName}">
            <br>
            <label>Giá : </label>
            <input type="text" name="costFood" value="${food.cost}">
            <br>
            <label>Ghi chú :</label>
            <input type="text" name="desFood" value="${food.descriptions}">
            <br>
            <label>Hình ảnh :</label>
            <img class="rounded-circle mt-5" width="150px" src="${food.imageURL}" id="output3"><br>
            <input type="file" name ="foodImage" accept="image/*" onchange="loadFile3(event)" class="form-control-file">
            <br>
            <br>
            <input class="mt-4 btn btn-dark d-flex justify-content-center align-items-center" type="submit" value="Chỉnh sửa món ăn">
        </form>
    
    <script>
        var loadFile3 = function (event) {
            var output = document.getElementById('output3');
            output.src = URL.createObjectURL(event.target.files[0]);
            output.onload = function () {
                URL.revokeObjectURL(output.src) // free memory
            }
        };
    </script>
    </body>
</html>
