<%--<%@page import="model.Seller"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">-->
<!--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>-->
<!--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->

<!DOCTYPE html> 
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/profileStyle.css">
        <link rel="stylesheet" href="css/pagingStyle.css">
    </head>
    <body class="bg-white">
        <div class="px-0 bg-white">
            <%@include file="/header.jsp" %> 
            <div class="d-md-flex">
                <ul id="navbar-items" class="p-3">
                    <%@include file="/sidebar.jsp" %>
                </ul>
                <form action="UpdateSellerProfile" enctype="multipart/form-data"  method="post" >
                    <div class="container rounded bg-white mt-5 mb-5">
                        <div class="row">
                            <div>
                                <ul class="breadcrumb bg-white">
                                    <li><a href="home.jsp">Home</a></li>
                                    <li><a href="UpdateSellerProfile">HỒ SƠ CỦA TÔI</a></li>                                    
                                </ul>
                            </div>

                            <div class="col-md-4">
                                <div class="justify-content-between align-items-center p-3 py-5">
                                    <div class="mt-5">
                                        <img class="rounded-circle justify-content-center" height="200px" width="200px" src="${UserAvatar}" id="output">
                                        <input type="file" name="avatarImage" accept="image/*" onchange="loadFile(event)" class="form-control-file mt-3" id="avatarImg">
                                    </div>
                                    <div id="divCheckImg"></div>
                                    <div class="mt-5">
                                        <span>${seller.email}</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <h4 class="text-right">HỒ SƠ CỦA TÔI</h4>
                                </div>
                                <div class="row mt-2">
                                    <input name="id" value="${seller.sellerID}" hidden="">
                                    <div class="col-md-6"><label class="labels">HỌ</label><input type="text" name="firstName" class="form-control" value="${seller.firstName}"></div>
                                    <div class="col-md-6"><label class="labels">TÊN</label><input type="text" name="lastName" class="form-control" value="${seller.lastName}"></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12"><label class="labels">TUỔI</label><input type="number" name="age" class="form-control"value="${seller.age}"></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12"><label class="labels">SỐ ĐIỆN THOẠI</label><input type="text" name="phone" class="form-control" value="${seller.phone}"></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12"><label class="labels">Email</label><input type="text" class="form-control" readonly="" value="${seller.email}"></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12"><label class="labels">GIỚI TÍNH</label></br>
                                        <label class="labels" id="genderlable" hidden="">${seller.gender}</label>
                                        <input class="form-check-input" type="radio" name="gender"  id="inlineRadio1" value="1"> Nam
                                        <input class="form-check-input" type="radio" name="gender"  id="inlineRadio2" value="0"> Nữ                                            
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-11">
                                        <label class="labels">LINK FACEBOOK</label>
                                        <input type="text" name="addressDetail" class="form-control"value="${seller.linkFb}">
                                    </div>
                                    <div class="col-md-1 mt-4">
                                        <a class="login-facebook-icon" style="height: 40px; width: 40px; margin-left: calc(100%-20px)" href="${seller.linkFb}" title="" target="_blank">f</a>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12">
                                        <label class="labels" for="cars">Tỉnh, thành phố</label>
                                        <select name="province" id="province" class="province form-select" onchange>
                                            <option value="">Select Province</option>
                                            <c:forEach items ="${listProvince}" var="o">
                                                <option value="${o.provinceID}" 
                                                        <c:if test = "${seller.provinceID == o.provinceID }">
                                                            selected="selected"
                                                        </c:if>    >${o.provinceName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="error" id="errorProvince"></div> 

                                <div class="row mt-3">
                                    <div class="col-md-12">
                                        <label class="labels" for="cars">Quận, phường</label>
                                        <select name="district"  id ="district" class="district form-select">
                                            <c:forEach items ="${listDistrict}" var="o">
                                                <option value="${o.districtID}" 
                                                        <c:if test = "${seller.districtID == o.districtID }">
                                                            selected="selected"
                                                        </c:if>    >${o.districtName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="col-md-12"><label class="labels">ĐỊA CHỈ</label><input type="text" name="addressDetail" class="form-control"value="${seller.address}" ></div>
                                </div>
                            </div>
                            <div class="text-center mt-5">
                                <button class="btn btn-primary profile-button" type="submit" onclick="checkValidatorForUpdateProfile()">LƯU HỒ SƠ</button>
                            </div>
                            <label class="labels">${UpdateError}</label>
                            <label class="labels">${UpdateProcess}</label>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
    <script src="validator/Validator.js"></script>
    <script language="javascript">

                                    var gender = document.getElementById('genderlable').innerHTML;

                                    if (gender == 1) {
                                        document.getElementById('inlineRadio1').setAttribute('checked', true);
                                    } else
                                    {
                                        document.getElementById('inlineRadio2').setAttribute('checked', true);
                                    }


                                    // Hàm xử lý khi thẻ select thay đổi giá trị được chọn
                                    // obj là tham số truyền vào và cũng chính là thẻ select

            
           
    </script>
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
        var loadFile = function (event) {
            var output = document.getElementById('output');
            output.src = URL.createObjectURL(event.target.files[0]);
            output.onload = function () {
                URL.revokeObjectURL(output.src) // free memory
            }
        };
    </script>
    <%@include file="/footer.jsp" %>
</html>
