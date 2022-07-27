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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/addHostelStyle.css">
        <style>
            .error {
                color: red;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="card">
                <form class="form" method="POST" action="addhostel" name="addhostelForm" onsubmit="return validateAddHostel()">
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

                        <div class="input_text"> <input type="text" name="address" placeholder="Nhập địa chỉ cụ thể"> <span>Địa chỉ</span> </div>
                        <div class="input_text"> <input type="number" name="cost" placeholder="Nhập giá thuê"> <span>Giá thuê</span> </div>
                        <div class="input_text"> <input type="number" name="distance" placeholder="Nhập khoảng cách"> <span>Khoảng cách</span> </div>
                        <div class="input_text"> <span>Mô tả</span> </div>
                        <textarea placeholder="Nhập mô tả" rows="5" style="width: 100%; margin-top: 10px"  class="input_text" name="description" style="width:250px;height:150px;"></textarea>
                        <div class="pay"> 
                            <button type="submit">Thêm nhà trọ</button>                  
                        </div>
                        <div class="pay"> 
                            <button type="reset">Reset Button</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
    <script src="js/addProduct.js"></script>
</html>

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

</html>



