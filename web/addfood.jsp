<%-- 
    Document   : addfood
    Created on : Aug 8, 2022, 12:47:55 AM
    Author     : nguye
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
        <h2>Thêm món ăn</h2>
        <form action="AddFoodController" name="addFoodForm" onsubmit="return validateFood()" method="post" enctype="multipart/form-data">
            <input type="text" name="id" value="${restaurant.restaurantID}" hidden>

            <label>Tên món ăn: </label>
            <input type="text" name="foodName">
            <div class="error" id="errorName"></div>
            <br>
            <label>Giá : </label>
            <input type="text" name="costFood">
            <div class="error" id="errorCost"></div>
            <br>
            <label>Ghi chú :</label>
            <input type="text" name="desFood">
            <br>
            <label>Hình ảnh :</label>
            <img class="rounded-circle mt-5" width="150px" src="" id="output2"><br>
            <input type="file" name ="foodImage" accept="image/*" onchange="loadFile2(event)" class="form-control-file" />   <br> <br>
            <br>
            <input class="mt-4 btn btn-dark d-flex justify-content-center align-items-center" type="submit" value="Thêm món ăn"/>
       
                   <h1>List Food Of Restaurant</h1>
        <table border="1">
            <th>Food Name</th>
            <th>Cost</th>
            <th>Description</th>
            <th>Image</th>
            <th>Action</th>
                <c:forEach items="${listFood}" var="food" >
                <tr>
                     <input type="text" value="${food.foodID}" name="fid" hidden>
                    <td>${food.foodName}</td>
                    <td>${food.cost}</td>
                    <td>${food.descriptions}</td>
                    <td><img src="${food.imageURL}" width="100px" height="100px"> </td>
                    <td>
                        <a class="dropdown-item" href="EditFoodController?foodId=${food.foodID}">Edit Food</a>
                       <a class="dropdown-item" href="DeleteFoodController?fid=${food.foodID}">Delete Food</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
                    </form>
    </body>
    
              <script>
            var loadFile2 = function (event) {
                var output = document.getElementById('output2');
                output.src = URL.createObjectURL(event.target.files[0]);
                output.onload = function () {
                    URL.revokeObjectURL(output.src) // free memory
                }
            };
        </script>
         <script>
                function validateFood() {
                let isValid = true;
                        const foodName = document.addFoodForm.foodName.value;
                        const costFood = document.addFoodForm.costFood.value;
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
                document.getElementById('errorCost').innerText = 'Invalid!';
                        isValid = false;
                } else if (distance <= 0) {
                document.getElementById('errorCost').innerText = 'Giá tiền phải > 0 ';
                        isValid = false;
                }

                return isValid;
                }
    </script>
</html>
