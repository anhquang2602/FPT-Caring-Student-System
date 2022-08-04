<%-- 
    Document   : addHostel
    Created on : Jul 11, 2022, 9:46:01 PM
    Author     : nguye
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/addHostelStyle.css">
        <link rel="stylesheet" href="css/pagingStyle.css">
        <style>
            .error {
                color: red;
            }
        </style>
    </head>
    <body class="bg-white">
        <div class="px-0">
            <%@include file="/header.jsp" %> 
            <div class="d-md-flex">
                <ul id="navbar-items" class="p-3">
                    <%@include file="/sidebar.jsp" %>
                </ul>
                <div class="container rounded bg-white mt-5 mb-5">
                    <div class="col-xl-12 mb-5">
                        <div>
                            <ul class="breadcrumb bg-white">
                                <li><a href="home.jsp">Home</a></li>
                                <li><a href="hostellist">List My Hostels</a></li>
                                <li><a>Thêm  nhà trọ mới</a></li>
                            </ul>
                        </div>
                        <div class="card">
                            <form class="form" method="POST" action="addhostel" name="addhostelForm" onsubmit="return validateAddHostel()"  enctype="multipart/form-data">
                                <div class="left-side">
                                    <div class="left_top">
                                        <h4>Thêm phòng</h4>
                                    </div> 
                                    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                                        <div class="carousel-indicators"> 
                                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
                                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
                                        </div>
                                        <div class="carousel-inner">
                                            <div class="carousel-item active"> <img src="https://imgur.com/j1R465T.jpg" class="d-block w-100" alt="..."> </div>
                                            <div class="carousel-item"> <img src="https://imgur.com/LPFGIoY.jpg" class="d-block w-100" alt="..."> </div>
                                            <div class="carousel-item"> <img src="https://imgur.com/v7bSlKX.jpg" class="d-block w-100" alt="..."> </div>
                                            <div class="carousel-item">
                                                <img src="https://imgur.com/xZ6h8of.jpg" class="d-block w-100" alt="..."> 
                                            </div>
                                            <div class="carousel-item">
                                                <img src="https://imgur.com/I2GDFqA.jpg" class="d-block w-100 " alt="...">
                                            </div>
                                        </div>
                                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span> 
                                            <span class="visually-hidden">Previous</span> 
                                        </button> 
                                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next"> 
                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                            <span class="visually-hidden">Next</span>
                                        </button>
                                    </div>

                                    <div class="oriton_img"> 
                                        <h5>Tình trạng phòng</h5>                   
                                    </div>   
                                    <div class="left_text">
                                        <input type="radio" id="collection1" name="status" value="yes"> 
                                        <label for="collection1">
                                            <div class="left_box">
                                                <div class="left_box_collection"> 
                                                    <div class="radio_button"> <span></span>
                                                        <h4>Còn phòng</h4>
                                                    </div>                               
                                                </div>
                                            </div>
                                        </label> 
                                        <input type="radio" id="collection2" checked name="status" value="no"> 
                                        <label for="collection2">
                                            <div class="left_box">
                                                <div class="left_box_collection">
                                                    <div class="radio_button"> <span></span>
                                                        <h4>Hết phòng</h4>
                                                    </div>
                                                </div>                                    
                                            </div>
                                        </label>
                                        Image1 : <input type="file" accept="image/*" onchange="loadFile(event)" name ="image1" id="img1">
                                        <img id="output1" class="rounded-circle mt-5" width="150px"/>
                                        <script>
                                            var loadFile = function (event) {
                                                var output = document.getElementById('output1');
                                                output.src = URL.createObjectURL(event.target.files[0]);
                                                output.onload = function () {
                                                    URL.revokeObjectURL(output1.src) // free memory
                                                }
                                            };
                                        </script><br>

                                        Image2 : <input type="file" accept="image/*" onchange="loadFile2(event)" name ="image2" id="img2">
                                        <img id="output2" class="rounded-circle mt-5" width="150px"/>
                                        <script>
                                            var loadFile2 = function (event) {
                                                var output = document.getElementById('output2');
                                                output.src = URL.createObjectURL(event.target.files[0]);
                                                output.onload = function () {
                                                    URL.revokeObjectURL(output2.src) // free memory
                                                }
                                            };
                                        </script><br>

                                        Image3 : <input type="file" accept="image/*" onchange="loadFile3(event)" name ="image3" id="img3">
                                        <img id="output3" class="rounded-circle mt-5" width="150px"/>
                                        <script>
                                            var loadFile3 = function (event) {
                                                var output = document.getElementById('output3');
                                                output.src = URL.createObjectURL(event.target.files[0]);
                                                output.onload = function () {
                                                    URL.revokeObjectURL(output.src) // free memory
                                                }
                                            };
                                        </script><br>

                                        Image4 : <input type="file" accept="image/*" onchange="loadFile4(event)" name ="image4" id="img4">
                                        <img id="output4" class="rounded-circle mt-5" width="150px"/>
                                        <script>
                                            var loadFile4 = function (event) {
                                                var output = document.getElementById('output4');
                                                output.src = URL.createObjectURL(event.target.files[0]);
                                                output.onload = function () {
                                                    URL.revokeObjectURL(output.src) // free memory
                                                }
                                            };
                                        </script><br>

                                        Image5 : <input type="file" accept="image/*" onchange="loadFile5(event)" name ="image5" id="img5">
                                        <img id="output5" class="rounded-circle mt-5" width="150px"/>
                                        <script>
                                            var loadFile5 = function (event) {
                                                var output = document.getElementById('output5');
                                                output.src = URL.createObjectURL(event.target.files[0]);
                                                output.onload = function () {
                                                    URL.revokeObjectURL(output.src) // free memory
                                                }
                                            };
                                        </script> <br>

                                        Image6 : <input type="file" accept="image/*" onchange="loadFile6(event)" name ="image6" id="img6">
                                        <img id="output6" class="rounded-circle mt-5" width="150px"/>
                                        <script>
                                            var loadFile6 = function (event) {
                                                var output = document.getElementById('output6');
                                                output.src = URL.createObjectURL(event.target.files[0]);
                                                output.onload = function () {
                                                    URL.revokeObjectURL(output.src) // free memory
                                                }
                                            };
                                        </script><br>

                                        <div class="error" id="errorImg"></div>
                                    </div>
                                </div>

                                <div class="right-side">
                                    <h3>Mô tả phòng</h3>
                                    <div class="input_text"> <input type="text" name="hostelName" placeholder="Nhập tên nhà trọ"> <span>Tên nhà trọ</span> </div>
                                    <div class="error" id="errorName"></div>
                                    <div class="input_text"> <input type="text" name="room" placeholder="Nhập số phòng"> <span>Số phòng</span> </div>   
                                    <div class="error" id="errorRoom"></div>
                                    <div class="input_text"> <input type="number" name="floor" placeholder="Nhập số tầng"> <span>Số tầng</span> </div>
                                    <div class="error" id="errorFloor"></div>
                                    <div class="billing">
                                        <div class="input_text"> 
                                            <span>Tỉnh, thành phố</span> 
                                            <select name="province" id="province" class="province">
                                                <option value="">Select Province</option>
                                                <c:forEach items ="${listProvince}" var="o">
                                                    <option value="${o.provinceID}">${o.provinceName}</option>
                                                </c:forEach>
                                            </select> 
                                        </div>                         
                                    </div>
                                    <div class="error" id="errorProvince"></div>

                                    <div class="billing">
                                        <div class="input_text"> 
                                            <span>Quận, phường</span> 
                                            <select name="district"  id ="district" class="district"></select>
                                        </div>                         
                                    </div>

                                    <div class="input_text"> <input type="text" name="address" placeholder="Nhập địa chỉ cụ thể"> <span>Địa chỉ</span> 
                                        <div class="error" id="errorAddress"></div></div>
                                    <div class="input_text"> <input type="text" name="cost" placeholder="Nhập giá thuê"> <span>Giá thuê</span>
                                        <div class="error" id="errorCost"></div></div>
                                    <div class="input_text"> <input type="text" name="distance" placeholder="Nhập khoảng cách"> <span>Khoảng cách</span> 
                                        <div class="error" id="errorDistance"></div></div>
                                    <div class="input_text"> <span>Mô tả</span> </div>
                                    <textarea placeholder="Nhập mô tả" rows="5" style="width: 100%; margin-top: 10px"  class="input_text" name="description" style="width:250px;height:150px;"></textarea>

                                    <div class="pay"> 
                                        <button type="submit">Thêm nhà trọ</button>                  
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script
                src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous">
            </script>
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
                function validateAddHostel() {
                    let isValid = true;
                    const hostelName = document.addhostelForm.hostelName.value;
                    const room = document.addhostelForm.room.value;
                    const floor = document.addhostelForm.floor.value;
                    const province = document.addhostelForm.province.value;
                    const address = document.addhostelForm.address.value;
                    const cost = document.addhostelForm.cost.value;
                    const distance = document.addhostelForm.distance.value;
                    const regex = /[+-]?([0-9]*[.])?[0-9]+/;
                    const regex2 = /^[0-9]*$/;

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

                    return isValid;

                }
            </script>
    </body>
    <%@include file="/footer.jsp" %>    
</html>



