<%-- 
    Document   : viewRestaurant
    Created on : Aug 3, 2022, 4:03:00 PM
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
        
        <form class="my-2" method="POST" action="RestaurantListController">
            <h1>All information about restaurant </h1>
              <a href="ReportRestaurantController?id=${restaurant.restaurantID}" style="margin-left: 1000px">Báo Cáo Bài Viết</a> 
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
            Image : <input type="file" name ="image" value="${restaurant.restaurantImage}"/>
            <br>
        </form>
        
        <h1>List Food Of Restaurant</h1>
        <table border="1">
            <th>Food Name</th>
            <th>Cost</th>
            <th>Description</th>
            <th>Image</th>
          
                <c:forEach items="${listFood}" var="food" >
                <tr>
                    <td>${food.foodName}</td>
                    <td>${food.cost}</td>
                    <td>${food.descriptions}</td>
                    <td>${food.imageURL}</td>
                    
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
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    </body>
</html>
