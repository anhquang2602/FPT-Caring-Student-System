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
        <style>
            .error {
                color: red;
            }
        </style>
    </head>
    <body>
        <form class="my-2" method="POST" name="editRestaurantForm" onsubmit="return validateRestaurant()" action="EditRestaurantController" enctype="multipart/form-data">
            <input type="text" name="id" value="${restaurant.restaurantID}" hidden>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Tên nhà hàng</label>
                <input type="text" class="form-control" id="exampleFormControlInput1" name="restaurantName" value="${restaurant.restaurantName}">
                  <div class="error" id="errorName"></div>
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
             <div class="error" id="errorProvince"></div>

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
             <div class="error" id="errorAddress"></div>
            </div><br>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Giá chung :</label>
                <input type="text" class="form-control" id="exampleFormControlInput1" name="cost" value="${restaurant.cost}"  >
             <div class="error" id="errorCost">
            </div><br>

            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Khoảng cách</label>
                <input type="text" class="form-control" id="exampleFormControlInput1" name="distance" value="${restaurant.distance}" >
            <div class="error" id="errorDistance">
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
        <script>
                function validateRestaurant() {
                let isValid = true;
                        const restaurantName = document.editRestaurantForm.restaurantName.value;
                        const province = document.editRestaurantForm.province.value;
                        const address = document.editRestaurantForm.address.value;
                        const cost = document.editRestaurantForm.cost.value;
                        const distance = document.editRestaurantForm.distance.value;
                        const regex = /[+-]?([0-9]*[.])?[0-9]+/;
                        const regex2 = /^[0-9]*$/;
                        document.getElementById('errorName').innerText = ' ';
                        document.getElementById('errorProvince').innerText = ' ';
                        document.getElementById('errorAddress').innerText = ' ';
                        document.getElementById('errorCost').innerText = ' ';
                        document.getElementById('errorDistance').innerText = ' ';
                        if (!restaurantName) {
                document.getElementById('errorName').innerText = 'Bạn phải nhập tên nhà ăn!';
                        isValid = false;
                }

                if (!province) {
                document.getElementById('errorProvince').innerText = 'Bạn phải chọn tỉnh!';
                        isValid = false;
                }

                if (!address) {
                document.getElementById('errorAddress').innerText = 'Bạn phải nhập địa chỉ!';
                        isValid = false;
                }

                if (!cost) {
                document.getElementById('errorCost').innerText = 'Bạn phải nhập giá !';
                        isValid = false;
                }

                if (!distance) {
                document.getElementById('errorDistance').innerText = 'Bạn phải nhập khoảng cách!';
                        isValid = false;
                } else if (!regex.test(distance)) {
                document.getElementById('errorDistance').innerText = 'Giá trị nhập không đúng. Khoảng cách phải là số!';
                        isValid = false;
                } else if (distance <= 0) {
                document.getElementById('errorDistance').innerText = 'Khoảng cách phải > 0 ';
                        isValid = false;
                }

                return isValid;
                }
    </script>
    
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    </body>
</html>
