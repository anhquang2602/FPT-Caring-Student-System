<%-- 
    Document   : editRestaurant
    Created on : Jul 26, 2022, 10:25:18 PM
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
        <form class="my-2" method="POST" action="EditRestaurantController" enctype="multipart/form-data">
            <input type="text" name="id" value="${restaurant.restaurantID}" hidden>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Tên nhà hàng</label>
                <input type="text" class="form-control" id="exampleFormControlInput1" name="restaurantName" value="${restaurant.restaurantName}">
            </div><br>
            <label for="cars">Tỉnh,thành phố</label>

            <select name="province" id="province" class="province">
                <option value="">Select Province</option>
                <c:forEach items ="${listProvince}" var="o">
                    <option value="${o.provinceID}" 
                            <c:if test = "${restaurant.provinceName == o.provinceName }">
                                selected="selected"
                            </c:if>    >${o.provinceName}</option>
                </c:forEach>
            </select><br><br>

            <label for="cars">Quận,phường</label>
            <select name="district"  id ="district" class="district">
                <c:forEach items ="${listDistrict}" var="o">
                    <option value="${o.districtID}" 
                            <c:if test = "${restaurant.districtName == o.districtName }">
                                selected="selected"
                            </c:if>    >${o.districtName}</option>
                </c:forEach>
            </select><br><br>

            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Địa chỉ</label>
                <input type="text" class="form-control" id="exampleFormControlInput1" name="address" value="${restaurant.address}">
            </div><br>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Giá chung :</label>
                <input type="text" class="form-control" id="exampleFormControlInput1" name="cost" value="${restaurant.cost}"  >
            </div><br>

            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Khoảng cách</label>
                <input type="text" class="form-control" id="exampleFormControlInput1" name="distance" value="${restaurant.distance}" >
            </div><br>
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Mô tả</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="description">${restaurant.description}</textarea>
            </div><br>
            Image : <img class="rounded-circle mt-5" width="150px" src="${restaurant.restaurantImage}" id="output"><br>
            <input type="file" name ="restaurantImage" accept="image/*" onchange="loadFile(event)" class="form-control-file" id="avatarImg"/>   <br> <br>
            <br>
            <input class="mt-4 btn btn-dark d-flex justify-content-center align-items-center" type="submit" value="Sửa thông tin nhà ăn"/>
        </form>
        <h2>Thêm món ăn</h2>
        <form action="AddFoodController" method="post">
            <input type="text" name="id" value="${restaurant.restaurantID}" hidden>

            <label>Tên món ăn: </label>
            <input type="text" name="foodName">
            <br>
            <label>Giá : </label>
            <input type="text" name="costFood">
            <br>
            <label>Ghi chú :</label>
            <input type="text" name="desFood">
            <br>
            <input class="mt-4 btn btn-dark d-flex justify-content-center align-items-center" type="submit" value="Thêm món ăn"/>
        </form>
        <h1>List Food Of Restaurant</h1>
        <table border="1">
            <th>Food Name</th>
            <th>Cost</th>
            <th>Description</th>
            <th>Image</th>
            <th>Action</th>
                <c:forEach items="${listFood}" var="food" >
                <tr>
                    <td>${food.foodName}</td>
                    <td>${food.cost}</td>
                    <td>${food.descriptions}</td>
                    <td>${food.imageURL}</td>
                    <td>
                        <a class="dropdown-item" href="EditFoodController?id=${food.foodID}">Edit Food</a>
                        <a class="dropdown-item" href="DeleteFoodController?id=${food.foodID}">Delete Post</a>
                    </td>
                </tr>
            </c:forEach>
        </table>


        <script>
            function reset() {
                location.reload();
            }
            function success() {
                alert("Update Hostel Successfully!");
            }
        </script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            $(document).on('change', '.province', function () {
                var province = document.getElementById("province").value;
                $('#district').empty();


                $.ajax({
                    type: "GET",
                    url: "/Test_1/findDistrict",
                    data: {
                        province: province,
                    },
                    headers: {
                        Accept: "application/json; charset=utf-8",
                        contentType: "application/json; charset=utf-8"
                    },
                    success: function (data) {

                        data.forEach(function (a) {
                            $("#district").append('<option value="' + a.districtID + '">' + a.districtName + '</option>');

                        });
                    },
                    error: function (e) {
                        console.log("ERROR: ", e);
                    }
                });

            });
        </script>
        <script>
            var loadFile = function (event) {
                var output = document.getElementById('output');
                output.src = URL.createObjectURL(event.target.files[0]);
                output.onload = function () {
                    URL.revokeObjectURL(output.src) // free memory
                }
            };
        </script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    </body>
</html>
