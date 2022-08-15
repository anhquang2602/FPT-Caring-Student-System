<%-- 
    Document   : hosteldetail
    Created on : Jul 17, 2022, 7:05:42 PM
    Author     : nguye
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/viewListStyle.css">
        <link rel="stylesheet" href="css/pagingStyle.css">
        <link rel="stylesheet" href="css/addHostelStyle.css">
        <link rel="stylesheet" href="css/commentStyle.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            .stars-outer {
                position: relative;
                display: inline-block;
                font-size: 15px;
            }
            .stars-inner {
                position: absolute;
                top: 0;
                left: 0;
                white-space: nowrap;
                overflow: hidden;
                width: 0;
                font-size: 15px;
            }
            .stars-outer::before {
                content: "\f005 \f005 \f005 \f005 \f005";
                font-family: "Font Awesome 5 Free";
                font-weight: 900;
                color: #ccc;
            }
            .stars-inner::before {
                content: "\f005 \f005 \f005 \f005 \f005";
                font-family: "Font Awesome 5 Free";
                font-weight: 900;
                color: #f8ce0b;
            }
        </style>
    </head>
    <body>
        <%@include file="/header.jsp" %>
        <div class="bg-white">
            <div class="d-flex nav-item main-home col-md-12">
                <ul id="navbar-items" class="col-md-2">
                    <%@include file="/sidebar.jsp" %>
                </ul>

                <div class="container rounded bg-white mt-5 mb-5 col-md-10">
                    <div class="col-md-12 mb-5">
                        <div>
                            <ul class="breadcrumb bg-white">
                                <li><a href="home.jsp">Trang chủ</a></li>
                                <li><a href="listallhostels">Danh sách nhà trọ</a></li>
                                <li><a>Chi tiết nhà trọ</a></li>
                            </ul>
                        </div>
                        <div class="card">
                            <form class="form" method="POST" id="updateForm" action="edithostel"  name="edithostelForm" onsubmit="return validateEditHostel()">
                                <div class="input_text" hidden>
                                    <input id="hostelId" value="${hosteldetail.hostelID}" hidden/>
                                </div>
                                <div class="left-side">
                                    <div class="d-flex flex-column align-items-center text-center">
                                        <div class="form-group row"> 
                                            <div class="col mt-5 thumbnail1">
                                                <img src="${hosteldetail.img1}" style="padding: 0px;" alt="">
                                            </div>
                                            <div class="col mt-5 thumbnail1">
                                                <img src="${hosteldetail.img2}" style="padding: 0px;" alt="">
                                            </div>
                                            <div class="col mt-5 thumbnail1">
                                                <img src="${hosteldetail.img3}" style="padding: 0px;" alt="">
                                            </div>
                                        </div>
                                        <div class="form-group row"> 
                                            <div class="col mt-5 thumbnail1">
                                                <img src="${hosteldetail.img4}" style="padding: 0px;" alt="">
                                            </div>
                                            <div class="col mt-5 thumbnail1">
                                                <img src="${hosteldetail.img5}" style="padding: 0px;" alt="">
                                            </div>
                                            <div class="col mt-5 thumbnail1">
                                                <img src="${hosteldetail.img6}" style="padding: 0px;" alt="">
                                            </div>
                                        </div>
                                        <span class="font-weight-bold labels mt-5 fs-4" >
                                            <label>Nhà trọ:</label> ${hosteldetail.hostelName}
                                        </span>
                                        <div class="stars-outer mb-5">
                                            <div class="stars-inner" style="width: ${hosteldetail.starAVG}%"> </div>
                                        </div>
                                        <span class="font-weight-bold labels mb-5 fs-5">
                                            <label>Chủ trọ:</label>
                                            <a href="ViewSellerController?id=${sellerId}" style="text-decoration: none" target="_blank">${hosteldetail.sellerName}</a>
                                        </span>

                                        <c:if test = "${isStudent == 1}">
                                            <a href="commentHostel?hostelID=${hosteldetail.hostelID}" style="font-size: 20px"> <i class="glyphicon glyphicon-edit"></i> Viết đánh giá</a> 
                                        </c:if>

                                    </div>
                                </div>
                                <div class="right-side">
                                    <div class="input_text">
                                        <strong class="fs-4">Số phòng</strong>
                                        <input type="text" value="${hosteldetail.totalRoom}" readonly="">
                                    </div>
                                    <div class="input_text">
                                        <strong class="fs-4">Tình trạng phòng</strong>
                                    </div>
                                    <div class="left_text">

                                        <c:if test = "${hosteldetail.status == true}">
                                            <label for="collection1">
                                                <div class="left_box">
                                                    <div class="left_box_collection"> 

                                                        <h4>Còn phòng</h4>

                                                    </div>
                                                </div>
                                            </label> 
                                        </c:if> 


                                        <c:if test = "${hosteldetail.status == false}">
                                            <label for="collection2">
                                                <div class="left_box">
                                                    <div class="left_box_collection">

                                                        <h4>Hết phòng</h4>

                                                    </div>                                    
                                                </div>                                    
                                            </label>  
                                        </c:if> 

                                    </div>
                                    <div class="input_text">
                                        <strong class="fs-4">Số tầng</strong>
                                        <input type="text"  value="${hosteldetail.floor}" readonly="">
                                    </div>
                                    <div class="input_text">
                                        <strong class="fs-4">Tỉnh, Thành phố</strong>
                                        <input type="text"  value="${hosteldetail.provinceNamẹ}" readonly="">
                                    </div>
                                    <div class="input_text">
                                        <strong class="fs-4">Quận, Huyện</strong>
                                        <input type="text"  value="${hosteldetail.districtName}" readonly="">
                                    </div>
                                    <div class="input_text">
                                        <strong class="fs-4">Địa chỉ</strong>
                                        <input type="text" value="${hosteldetail.address}" readonly="">
                                    </div>
                                    <div class="input_text">
                                        <strong class="fs-4">Giá thuê</strong>
                                        <input type="text" value="${hosteldetail.cost}" readonly="">
                                    </div>
                                    <div class="input_text">
                                        <strong class="fs-4">Khoảng cách</strong>
                                        <input type="text" value="${hosteldetail.distance}" readonly="">
                                    </div>
                                    <div class="input_text">
                                        <strong class="fs-4">Mô tả</strong>
                                        <textarea readonly="" rows="5" style="width: 100%">${hosteldetail.description}</textarea>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="row">
                            <label class="labels" style="font-size: 30px; font-weight: bold">Đánh giá nhà trọ:</label>
                            <c:if test="${totalcomment == 0}"> <h3>Chưa có đánh giá nào</h3> </c:if>
                            <c:if test="${listCmtHostelPaging  != null}">
                                <c:forEach items="${listCmtHostelPaging}" var="d" >
                                    <div class="bg-white p-3" style="margin :5px">
                                        <div class="d-flex flex-row user-info"><img class="rounded-circle" src="${d.studentAvatar}" width="60" height="60" >
                                            <div class="d-flex flex-column justify-content-start ml-4" >
                                                <span class="d-block font-weight-bold name" style=" font-size: 15px;">${d.studentName}</span>
                                                <span class="date text-black-50" style=" font-size: 12px;">${d.date}</span>
                                                <div class="sold_stars m1-auto">
                                                    <c:forEach begin="1" end="${d.starvoting}" >
                                                        <i class="fa fa-star"  style=" font-size: 13px;"></i>      
                                                    </c:forEach>
                                                    <p class="comment-text" style=" font-size: 15px;">${d.message}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:if>
                            <div class="clearfix">
                                <ul class="pagination">
                                    <c:if test="${tag>1}">
                                        <li class="page-item disabled"><a href="detailhostel?id=${hosteldetail.hostelID}&&index=${tag-1}">Previous</a></li>
                                        </c:if>
                                        <c:forEach begin="1" end="${endP}" var="i">
                                        <li class="page-item ${tag==i?"active":""}"><a href="detailhostel?id=${hosteldetail.hostelID}&&index=${i}" class="page-link">${i}</a></li>
                                        </c:forEach>
                                        <c:if test="${tag<endP}">
                                        <li class="page-item"><a href="detailhostel?id=${hosteldetail.hostelID}&&index=${tag+1}" class="page-link">Next</a></li>
                                        </c:if>
                                </ul>
                            </div>  
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="/footer.jsp" %>                   

        <script>
            const allStars = document.querySelectorAll('.star');
            let current_rating = document.querySelector('.current_rating');
            allStars.forEach((star, i) => {
                star.onclick = function () {
                    let current_star_level = i + 1;
                    current_rating.innerText = current_star_level + ' trên 5 ';
                    allStars.forEach((star, j) => {
                        if (current_star_level >= j + 1) {
                            star.innerHTML = '&#9733';
                        } else {
                            star.innerHTML = '&#9734';
                        }
                    });
                };
            });
        </script>                            

        <script>
            $("#star5").click(function () {
                var hostelId = document.getElementById("hostelId").value;
                $.ajax({
                    type: "GET",
                    url: "/Test_1/star",
                    data: {
                        hostelId: hostelId,
                        star: 5
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
                var hostelId = document.getElementById("hostelId").value;
                $.ajax({
                    type: "GET",
                    url: "/Test_1/star",
                    data: {
                        hostelId: hostelId,
                        star: 4
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
                var hostelId = document.getElementById("hostelId").value;
                $.ajax({
                    type: "GET",
                    url: "/Test_1/star",
                    data: {
                        hostelId: hostelId,
                        star: 3
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
                var hostelId = document.getElementById("hostelId").value;
                $.ajax({
                    type: "GET",
                    url: "/Test_1/star",
                    data: {
                        hostelId: hostelId,
                        star: 2
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
                var hostelId = document.getElementById("hostelId").value;
                $.ajax({
                    type: "GET",
                    url: "/Test_1/star",
                    data: {
                        hostelId: hostelId,
                        star: 1
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
</html>