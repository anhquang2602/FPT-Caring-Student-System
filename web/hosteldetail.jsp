<%-- 
    Document   : hosteldetail
    Created on : Jul 17, 2022, 7:05:42 PM
    Author     : nguye
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/pagingStyle.css">
        <link rel="stylesheet" href="css/hostelStyle.css">
        <link rel="stylesheet" href="css/commentStyle.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>


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
    <body class="bg-white">
        <div class="px-0">
            <%@include file="/header.jsp" %> 
            <div class="d-md-flex">
                <ul id="navbar-items" class="p-3">
                    <%@include file="/sidebar.jsp" %>
                </ul>

                <input id="hostelId" value="${hosteldetail.hostelID}" hidden/>

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
                                    </div   >
                                </form>
                                <span class="font-weight-bold labels mt-5" ><label class="labels">Nhà trọ:</label> ${hosteldetail.hostelName}</span>
                                <div class="stars-outer">
                                    <div class="stars-inner" style="width: ${hosteldetail.starAVG}%"> </div>
                                </div> <br><br>
                                <span class="font-weight-bold labels"><label class="labels">Chủ trọ:</label>
                                    <a href="ViewSellerController?id=${sellerId}" title="" target="_blank">${hosteldetail.sellerName}</a>
                                </span>


                                <!--                                <div class="rate">
                                
                                                                    <input type="radio" id="star5" name="rate" value="5" />
                                                                    <label for="star5" title="text">5 stars</label>
                                                                    <input type="radio" id="star4" name="rate" value="4" />
                                                                    <label for="star4" title="text">4 stars</label>
                                                                    <input type="radio" id="star3" name="rate" value="3" />
                                                                    <label for="star3" title="text">3 stars</label>
                                                                    <input type="radio" id="star2" name="rate" value="2" />
                                                                    <label for="star2" title="text">2 stars</label>
                                                                    <input type="radio" id="star1" name="rate" />
                                                                    <label for="star1" title="text">1 star</label>
                                
                                                                </div>-->

                                <c:if test = "${isStudent== 1}">
                                    <a href="commentHostel  ?hostelID=${hosteldetail.hostelID}" style="font-size: 20px"> <i class="glyphicon glyphicon-edit"></i> Viết đánh giá</a> 
                                </c:if>





                                <!--                                <h3 class="rating_heading">Đánh giá 5 sao</h3>
                                                                <div class ="star_rating">
                                                                    <p style="font-weight:  bold">Cảm nhận của bạn về nhà trọ này?</p>
                                                                    <button class="star" id="star1"  value="1">&#9734;</button>
                                                                    <button class="star" id="star2"  value="2">&#9734;</button>
                                                                    <button class="star" id="star3"  value="3">&#9734;</button>
                                                                    <button class="star" id="star4"  value="4">&#9734;</button>
                                                                    <button class="star" id="star5"  value="5">&#9734;</button>
                                                                    <p class="current_rating">0 trên 5</p>
                                                                </div>-->
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
                                            <label class="labels">Tình trạng phòng:     </label>
                                             
                                                   <c:if test = "${hosteldetail.status == true}">
                                                          <label for="collection1">
                                                <div class="left_box">
                                                    <div class="left_box_collection"> 
                                                        <div class="radio_button"> <span></span>
                                                            <h4 style="margin-left: 10px">   Còn phòng</h4>
                                                        </div>                               
                                                    </div>
                                                </div>
                                            </label> 
                                                   </c:if> 
                                        
                                                       
                                                   <c:if test = "${hosteldetail.status == false}">
                                                       <label for="collection2">
                                                <div class="left_box">
                                                    <div class="left_box_collection">
                                                        <div class="radio_button"> <span></span>
                                                            <h4  style="margin-left: 10px">   Hết phòng</h4>
                                                        </div>
                                                    </div>                                    
                                                </div>
                                            </label>
                                                   </c:if>  
                                        
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
                                            <textarea class="form-control" readonly="" rows="5  ">${hosteldetail.description}</textarea>



                                        </div>

                                        <!--                                        <div class="container mt-7">
                                                                                    <div class="d-flex justify-content-center row">
                                                                                        <div class="col-md-9" style="min-width: 100%">
                                                                                            <div class="d-flex flex-column comment-section">-->

                                        <!--                                                    </div>
                                        
                                                                                        </div>
                                                                                    </div>
                                                                                </div>-->

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row" style="background-color: #e9ecef" >
                        <label class="labels" style="font-size: 30px">Đánh giá nhà trọ:</label>
                         <c:if test="${totalcomment == 0}"> <h1>Chưa có đánh giá nào</h1> </c:if>
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
                    <!--                                         <div class="container mt-5">
                                                        <div class="d-flex justify-content-center row">
                                                            <div class="col-md-8" style="min-width: 100%">
                                                                <div class="d-flex flex-column comment-section">-->


                    <!--                                            </div>
                                                            </div>
                                                        </div>
                                                    </div>-->


                </div>   

            </div>

        </div>

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
                    })
                }
            })

        </script>                            

        <script>
            $("#star5").click(function () {
                var hostelId = document.getElementById("hostelId").value;

                $.ajax({
                    type: "GET",

                    url: "/Test_1/star",
                    data: {
                        hostelId: hostelId,
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
                var hostelId = document.getElementById("hostelId").value;
                $.ajax({
                    type: "GET",

                    url: "/Test_1/star",
                    data: {
                        hostelId: hostelId,
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
                var hostelId = document.getElementById("hostelId").value;
                $.ajax({
                    type: "GET",

                    url: "/Test_1/star",
                    data: {
                        hostelId: hostelId,
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
                var hostelId = document.getElementById("hostelId").value;
                $.ajax({
                    type: "GET",

                    url: "/Test_1/star",
                    data: {
                        hostelId: hostelId,
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
                var hostelId = document.getElementById("hostelId").value;
                $.ajax({
                    type: "GET",

                    url: "/Test_1/star",
                    data: {
                        hostelId: hostelId,
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
