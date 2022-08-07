<%-- 
    Document   : hosteldetail
    Created on : Jul 17, 2022, 7:05:42 PM
    Author     : nguye
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/pagingStyle.css">
        <link rel="stylesheet" href="css/hostelStyle.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            .rate {
                float: left;
                height: 46px;
                padding: 0 10px;
            }
            .rate:not(:checked) > input {
                position:absolute;
                top:-9999px;
            }
            .rate:not(:checked) > label {
                float:right;
                width:1em;
                overflow:hidden;
                white-space:nowrap;
                cursor:pointer;
                font-size:30px;
                color:#ccc;
            }
            .rate:not(:checked) > label:before {
                content: '★ ';
            }
            .rate > input:checked ~ label {
                color: #ffc700;    
            }
            .rate:not(:checked) > label:hover,
            .rate:not(:checked) > label:hover ~ label {
                color: #deb217;  
            }
            .rate > input:checked + label:hover,
            .rate > input:checked + label:hover ~ label,
            .rate > input:checked ~ label:hover,
            .rate > input:checked ~ label:hover ~ label,
            .rate > label:hover ~ input:checked ~ label {
                color: #c59b08;
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
                    <div>
                        <ul class="breadcrumb bg-white">
                            <li><a href="home.jsp">Trang chủ</a></li>
                            <li><a href="listallhostels">Danh sách nhà trọ</a></li>
                            <li><a>Chi tiết nhà trọ</a></li>
                        </ul>
                    </div>
                    <div class="row">
                        <div class="col-md-4 mt-5">
                            <div class="d-flex flex-column align-items-center text-center">
                                <form>
                                    <div class="form-group row"> 
                                        <div class="col mt-5 thumbnail">
                                            <img src="${hosteldetail.img1}"  class="form-control" style="padding: 0px; width: 116.23px; height:116.23px " alt="">
                                        </div>
                                        <div class="col mt-5 thumbnail">
                                            <img src="${hosteldetail.img2}" class="form-control" style="padding: 0px; width: 116.23px; height:116.23px " alt="">
                                        </div>
                                        <div class="col mt-5 thumbnail">
                                            <img src="${hosteldetail.img3}" class="form-control" style="padding: 0px; width: 116.23px; height:116.23px " alt="">
                                        </div>
                                    </div>
                                    <div class="form-group row"> 
                                        <div class="col mt-5 thumbnail">
                                            <img src="${hosteldetail.img4}" class="form-control" style="padding: 0px; width: 116.23px; height:116.23px " alt="">
                                        </div>
                                        <div class="col mt-5 thumbnail">
                                            <img src="${hosteldetail.img5}" class="form-control" style="padding: 0px; width: 116.23px; height:116.23px " alt="">
                                        </div>
                                        <div class="col mt-5 thumbnail">
                                            <img src="${hosteldetail.img6}" class="form-control" style="padding: 0px; width: 116.23px; height:116.23px " alt="">
                                        </div>
                                    </div>
                                </form>
                                <span class="font-weight-bold labels mt-5" ><label class="labels">Nhà trọ:</label> ${hosteldetail.hostelName}</span>
                                <span class="font-weight-bold labels"><label class="labels">Chủ trọ:</label> ${hosteldetail.sellerName}</span>
                                <BR>
                                <div class="rate">
                                    <input type="radio" id="star5" name="rate" value="5" />
                                    <label for="star5" title="text">5 stars</label>
                                    <input type="radio" id="star4" name="rate" value="4" />
                                    <label for="star4" title="text">4 stars</label>
                                    <input type="radio" id="star3" name="rate" value="3" />
                                    <label for="star3" title="text">3 stars</label>
                                    <input type="radio" id="star2" name="rate" value="2" />
                                    <label for="star2" title="text">2 stars</label>
                                    <input type="radio" id="star1" name="rate" value="1" />
                                    <label for="star1" title="text">1 star</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="p-3 py-5">
                                <div class="row mt-3">
                                    <form class="form" method="POST" id="updateForm" action="edithostel"  name="edithostelForm" onsubmit="return validateEditHostel()">
                                        <div class="col-md-12">
                                            <label class="labels">Số phòng</label>
                                            <input type="text" class="form-control" value="${hosteldetail.totalRoom}" readonly="">
                                        </div>
                                        <div class="col-md-12">
                                            <label class="labels">Tình trạng phòng</label>
                                            <input type="radio" id="collection1" name="status"  
                                                   <c:if test = "${hosteldetail.status == true}">
                                                       checked 
                                                   </c:if> value="yes"> 
                                            <label for="collection1">
                                                <div class="left_box">
                                                    <div class="left_box_collection"> 
                                                        <div class="radio_button"> <span></span>
                                                            <h4>Còn phòng</h4>
                                                        </div>                               
                                                    </div>
                                                </div>
                                            </label> 
                                            <input type="radio" id="collection2" name="status" 
                                                   <c:if test = "${hosteldetail.status == false}">
                                                       checked  
                                                   </c:if>  name="status" value="no"> 
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
                                        <div class="col-md-12">
                                            <label class="labels">Số tầng</label>
                                            <input type="text" class="form-control" value="${hosteldetail.floor}" readonly="">
                                        </div>
                                        <div class="col-md-12">
                                            <label class="labels">Tỉnh, Thành phố</label>
                                            <input type="text" class="form-control" value="${hosteldetail.provinceNamẹ}" readonly="">
                                        </div>
                                        <div class="col-md-12">
                                            <label class="labels">Quận, Huyện</label>
                                            <input type="text" class="form-control" value="${hosteldetail.districtName}" readonly="">
                                        </div>
                                        <div class="col-md-12">
                                            <label class="labels">Địa chỉ</label>
                                            <input type="text" class="form-control" value="${hosteldetail.address}" readonly="">
                                        </div>
                                        <div class="col-md-12">
                                            <label class="labels">Giá thuê</label>
                                            <input type="text" class="form-control" value="${hosteldetail.cost}" readonly="">
                                        </div>
                                        <div class="col-md-12">
                                            <label class="labels">Khoảng cách</label>
                                            <input type="text" class="form-control" value="${hosteldetail.distance}" readonly="">
                                        </div>
                                        <div class="col-md-12">
                                            <label class="labels">Mô tả</label>
                                            <textarea class="form-control" readonly="" rows="15">${hosteldetail.description}</textarea>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            $("#star5").click(function () {
                $.ajax({
                        type: "GET",

                        url: "/Test_1/star",
                        data: {
                            star: 5,
                        },
                        headers: {
                            Accept: "application/json; charset=utf-8",
                            contentType: "application/json; charset=utf-8"
                        },

                        success: function (data) {

                            alert(data);
                        },
                        error: function (e) {
                            console.log("ERROR: ", e);
                        }
                    });
            });
            $("#star4").click(function () {
                $.ajax({
                        type: "GET",

                        url: "/Test_1/star",
                        data: {
                            star: 4,
                        },
                        headers: {
                            Accept: "application/json; charset=utf-8",
                            contentType: "application/json; charset=utf-8"
                        },

                        success: function (data) {

                            alert(data);
                        },
                        error: function (e) {
                            console.log("ERROR: ", e);
                        }
                    });
            });
            $("#star3").click(function () {
                $.ajax({
                        type: "GET",

                        url: "/Test_1/star",
                        data: {
                            star: 3,
                        },
                        headers: {
                            Accept: "application/json; charset=utf-8",
                            contentType: "application/json; charset=utf-8"
                        },

                        success: function (data) {

                            alert(data);
                        },
                        error: function (e) {
                            console.log("ERROR: ", e);
                        }
                    });
            });
            $("#star2").click(function () {
                $.ajax({
                        type: "GET",

                        url: "/Test_1/star",
                        data: {
                            star: 2,
                        },
                        headers: {
                            Accept: "application/json; charset=utf-8",
                            contentType: "application/json; charset=utf-8"
                        },

                        success: function (data) {

                            alert(data);
                        },
                        error: function (e) {
                            console.log("ERROR: ", e);
                        }
                    });
            });
            $("#star1").click(function () {
                $.ajax({
                        type: "GET",

                        url: "/Test_1/star",
                        data: {
                            star: 1,
                        },
                        headers: {
                            Accept: "application/json; charset=utf-8",
                            contentType: "application/json; charset=utf-8"
                        },

                        success: function (data) {

                            alert(data);
                        },
                        error: function (e) {
                            console.log("ERROR: ", e);
                        }
                    });
            });
            
            
        </script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    </body>
    <%@include file="/footer.jsp" %>
</html>
