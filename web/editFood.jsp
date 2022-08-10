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
         <style>
            .error {
                color: red;
            }
        </style>
    </head>
    <body>
        <form action="EditFoodController" method="POST" name="editFoodForm" onsubmit="return validateFood()" enctype="multipart/form-data">
            <h1>Edit Food</h1>
            <input type="text" name="foodId" value="${food.foodID}" hidden>   
            <label>Tên món ăn: </label>
            <input type="text" name="foodName" value="${food.foodName}">
            <div class="error" id="errorName"></div>
            <br>
            <label>Giá : </label>
            <input type="text" name="costFood" value="${food.cost}">
             <div class="error" id="errorCost"></div>
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
    <script>
                function validateFood() {
                let isValid = true;
                        const foodName = document.editFoodForm.foodName.value;
                        const costFood = document.editFoodForm.costFood.value;
                        const regex = /[+-]?([0-9]*[.])?[0-9]+/;
                        const regex2 = /^[0-9]*$/;
                        document.getElementById('errorName').innerText = ' ';
                        document.getElementById('errorCost').innerText = ' ';
                        if (!foodName) {
                document.getElementById('errorName').innerText = 'Bạn phải nhập tên món ăn!';
                        isValid = false;
                }
                if (!costFood) {
                document.getElementById('errorCost').innerText = 'Bạn phải nhập giá của món ăn!';
                        isValid = false;
                } else if (!regex.test(distance)) {
                document.getElementById('errorCost').innerText = 'Giá trị nhập không đúng. Giá tiền phải là số!';
                        isValid = false;
                } else if (distance <= 0) {
                document.getElementById('errorCost').innerText = 'Giá tiền phải > 0 ';
                        isValid = false;
                }

                return isValid;
                }
    </script>
    </body>
</html>
