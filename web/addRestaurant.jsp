<%-- 
    Document   : addRestaurant
    Created on : Jul 25, 2022, 9:37:49 PM
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
        <h1>ADD RESTAURANT</h1>
        <form class="my-2" method="POST" action="AddRestaurantController"  >
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Tên nhà hàng</label>
                <input type="text" class="form-control" id="exampleFormControlInput1" name="restaurantName" >
            </div><br>
            <label for="cars">Tỉnh,thành phố</label>
            <select name="province" id="province" class="province">
                <option value="">Select Province</option>
                <c:forEach items ="${listProvince}" var="o">
                    <option value="${o.provinceID}">${o.provinceName}</option>
                </c:forEach>
            </select><br><br>

            <label for="cars">Quận,phường</label>
            <select name="district" id ="district" class="district">

            </select><br><br>


            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Địa chỉ</label>
                <input type="text" class="form-control" id="exampleFormControlInput1" name="address">
            </div><br>

            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Giá chung :</label>
                <input type="text" class="form-control" id="exampleFormControlInput1" name="cost" >
            </div><br>

            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Khoảng cách</label>
                <input type="text" class="form-control" id="exampleFormControlInput1" name="distance" >
            </div><br>
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Mô tả</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="description"></textarea>
            </div><br>
            Image : <input type="file" name ="image"/>   <br> <br>

            <input class="mt-4 btn btn-dark d-flex justify-content-center align-items-center" type="submit" value="Thêm nhà ăn"/>
        </form>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
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
    </body>
</html>
