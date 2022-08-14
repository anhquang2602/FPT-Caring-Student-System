<%-- 
    Document   : edithostel
    Created on : Jul 17, 2022, 4:23:34 PM
    Author     : nguye
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/viewListStyle.css">
        <link rel="stylesheet" href="css/addHostelStyle.css">
        <link rel="stylesheet" href="css/hostelStyle.css">
        <link rel="stylesheet" href="css/pagingStyle.css">
        <style>
            .labels{
                font-weight: 800;
            }
            .error {
                color: red;
            }
            .message {
                color: green;

            }
        </style>
    </head>
    <body class="bg-white">
        <div class="px-0">
            <%@include file="/header.jsp" %> 
            <div class="d-flex nav-item main-home">
                <ul id="navbar-items">
                    <%@include file="/sidebar.jsp" %>
                </ul>
                <div class="container rounded bg-white mt-5 mb-5">
                    <div class="col-xl-12 mb-5">
                        <div>
                            <ul class="breadcrumb bg-white">
                                <li><a href="home.jsp">Trang chủ</a></li>
                                <li><a href="ListRestaurantBySeller">Danh sách nhà hàng</a></li>
                                <li><a>Chi tiết nhà hàng</a></li>
                            </ul>
                        </div>
                        <div class="card">
                            <form class="form" method="POST" id="updateForm" action="RestaurantListController"  name="viewRestaurantForm" enctype="multipart/form-data">

                                <div class="input_text" hidden>
                                    <input type="text" name="id" value="${restaurant.restaurantID}" hidden>
                                </div>
                                <div class="left-side">
                                    <h3>Menu nhà hàng</h3>

                                    <div class="mt-5">

                                        <c:if test="${editHostel.img1 != null}">
                                            <a id="U1" class ="Url1" style="position: absolute; margin-left: -20px; text-decoration: none" href="deleteImage?id=${editHostel.hostelID}&url=Url1">X</a>
                                        </c:if>   -->

                                        <c:forEach items="${listFood}" var="food" >

                                            <div class="row p-2 bg-white border rounded" style="margin-top: -40px; margin-bottom: 80px;">
                                                <div class="col-md-3 mt-1"><img class="img-fluid img-responsive rounded product-image" src="${food.imageURL}"></div>
                                                <div class="col-md-6 mt-1">
                                                    <label class="labels">${food.foodName}</label>



                                                    <p class="text-justify text-truncate para mb-0">${food.descriptions}<br><br></p>
                                                </div>
                                                <div class="align-items-center align-content-center col-md-3 border-left mt-1">
                                                    <div class="d-flex flex-row align-items-center">
                                                        <h4 class="mr-1">${food.cost} VND</h4> </div>

                                                </div>
                                            </div>
                                        </c:forEach>

                                    </div> 


                                </div>

                                <div class="right-side">

                                    <h3>Mô tả nhà hàng</h3>    
                                    <div class="col mt-5 thumbnail">
                                        <img src="${restaurant.restaurantImage}"  class="form-control" style="padding: 0px;margin-top: -40px; width: 116.23px; height:116.23px " alt="">
                                    </div>
                                    <div class="col-md-12">
                                        <label class="labels" >Chủ nhà ăn : </label>
                                        <br>
                                        <a href="ViewSellerController?id=${sellerId}" style="text-decoration: none" target="_blank">${restaurant.sellerName}</a>
                                    </div>
                                    <div class="col-md-12">
                                        <label class="labels">Tên nhà hàng</label>
                                        <input type="text" class="form-control" value="${restaurant.restaurantName}" readonly="">
                                    </div>

                                    <div class="col-md-12">
                                        <label class="labels">Tỉnh, Thành phố</label>
                                        <input type="text" class="form-control" value="${restaurant.provinceName}" readonly="">
                                    </div>
                                    <div class="col-md-12">
                                        <label class="labels">Quận, Huyện</label>
                                        <input type="text" class="form-control" value="${restaurant.districtName}" readonly="">
                                    </div>
                                    <div class="col-md-12">
                                        <label class="labels">Địa chỉ</label>
                                        <input type="text" class="form-control" value="${restaurant.address}" readonly="">
                                    </div>                                    
                                    <div class="col-md-12">
                                        <label class="labels">Giá chung</label>
                                        <input type="text" class="form-control" value="${restaurant.cost} VND" readonly="">
                                    </div>

                                    <div class="col-md-12">
                                        <label class="labels">Khoảng cách</label>
                                        <input type="text" class="form-control" value="${restaurant.distance}" readonly="">
                                    </div>


                                    <div class="col-md-12">
                                        <label class="labels">Mô tả</label>
                                        <textarea class="form-control" readonly="" rows="5  ">${restaurant.description}</textarea>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


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
            });</script>
        <script>
                    $("#U1").click(function (event) {
            event.preventDefault();
                    $.ajax({
                    url: $(this).attr('href'),
                            success: function (response) {
                            var output = document.getElementById(response);
                                    output.src = '';
                                    output.style.width = "0px"
                                    $("." + response).remove();
                                    output.onload = function () {
                                    URL.revokeObjectURL(output.src) // free memory
                                    }


                            }
                    });
                    return false; // for good measure
            });
                    $("#U2").click(function (event) {
            event.preventDefault();
                    $.ajax({
                    url: $(this).attr('href'),
                            success: function (response) {
                            var output = document.getElementById(response);
                                    output.src = '';
                                    output.style.width = "0px"
                                    $("." + response).remove();
                                    output.onload = function () {
                                    URL.revokeObjectURL(output.src) // free memory
                                    }


                            }
                    });
                    return false; // for good measure
            });
                    $("#U3").click(function (event) {
            event.preventDefault();
                    $.ajax({
                    url: $(this).attr('href'),
                            success: function (response) {
                            var output = document.getElementById(response);
                                    output.src = '';
                                    output.style.width = "0px"
                                    $("." + response).remove();
                                    output.onload = function () {
                                    URL.revokeObjectURL(output.src) // free memory
                                    }


                            }
                    });
                    return false; // for good measure
            });
                    $("#U4").click(function (event) {
            event.preventDefault();
                    $.ajax({
                    url: $(this).attr('href'),
                            success: function (response) {
                            var output = document.getElementById(response);
                                    output.src = '';
                                    output.style.width = "0px"
                                    $("." + response).remove();
                                    output.onload = function () {
                                    URL.revokeObjectURL(output.src) // free memory
                                    }


                            }
                    });
                    return false; // for good measure
            });
                    $("#U5").click(function (event) {
            event.preventDefault();
                    $.ajax({
                    url: $(this).attr('href'),
                            success: function (response) {
                            var output = document.getElementById(response);
                                    output.src = '';
                                    output.style.width = "0px"
                                    $("." + response).remove();
                                    output.onload = function () {
                                    URL.revokeObjectURL(output.src) // free memory
                                    }


                            }
                    });
                    return false; // for good measure
            });
                    $("#U6").click(function (event) {
            event.preventDefault();
                    $.ajax({
                    url: $(this).attr('href'),
                            success: function (response) {
                            var output = document.getElementById(response);
                                    output.src = '';
                                    output.style.width = "0px"
                                    $("." + response).remove();
                                    output.onload = function () {
                                    URL.revokeObjectURL(output.src) // free memory
                                    }


                            }
                    });
                    return false; // for good measure
            });</script>
        <script>
                    function reset() {
                    location.reload();
                    }

        </script>

        <script>
            function validateEditHostel() {
            let isValid = true;
                    const hostelName = document.edithostelForm.hostelName.value;
                    const room = document.edithostelForm.room.value;
                    const floor = document.edithostelForm.floor.value;
                    const province = document.edithostelForm.province.value;
                    const address = document.edithostelForm.address.value;
                    const cost = document.edithostelForm.cost.value;
                    const distance = document.edithostelForm.distance.value;
                    const regex = /[+-]?([0-9]*[.])?[0-9]+/;
                    const regex2 = /^[0-9]*$/;
                    const success = document.getElementById('success');
                    document.getElementById('errorName').innerText = ' ';
                    document.getElementById('errorRoom').innerText = ' ';
                    document.getElementById('errorFloor').innerText = ' ';
                    document.getElementById('errorProvince').innerText = ' ';
                    document.getElementById('errorAddress').innerText = ' ';
                    document.getElementById('errorCost').innerText = ' ';
                    document.getElementById('errorDistance').innerText = ' ';
                    if (!hostelName) {
            document.getElementById('errorName').innerText = 'Bạn phải nhập tên nhà trọ!';
                    isValid = false;
            }

            if (!room) {
            document.getElementById('errorRoom').innerText = 'Bạn phải nhập số phòng!';
                    isValid = false;
            } else if (room <= 0) {
            document.getElementById('errorRoom').innerText = 'Invalid!';
                    isValid = false;
            } else if (!regex2.test(room)) {
            document.getElementById('errorRoom').innerText = 'Invalid!';
                    isValid = false;
            }

            if (!floor) {
            document.getElementById('errorFloor').innerText = 'Bạn phải nhập số tầng!';
                    isValid = false;
            } else if (!regex2.test(floor)) {
            document.getElementById('errorFloor').innerText = 'Invalid!';
                    isValid = false;
            } else if (floor <= 0) {
            document.getElementById('errorFloor').innerText = 'Invalid!';
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
            document.getElementById('errorCost').innerText = 'Bạn phải nhập giá thuê!';
                    isValid = false;
            } else if (!regex.test(cost)) {
            document.getElementById('errorCost').innerText = 'Invalid!';
                    isValid = false;
            } else if (cost <= 0) {
            document.getElementById('errorCost').innerText = 'Giá thuê phải > 0 ';
                    isValid = false;
            }

            if (!distance) {
            document.getElementById('errorDistance').innerText = 'Bạn phải nhập khoảng cách!';
                    isValid = false;
            } else if (!regex.test(distance)) {
            document.getElementById('errorDistance').innerText = 'Invalid!';
                    isValid = false;
            } else if (distance <= 0) {
            document.getElementById('errorDistance').innerText = 'Khoảng cách phải > 0 ';
                    isValid = false;
            }

            if (isValid) {
            alert('Save successfully!');
            }

            return isValid;
            }
        </script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous">
        </script>
    </body>

</html>
