<%-- 
    Document   : listdepartment
    Created on : Jun 18, 2022, 2:08:32 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html> 
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/viewListStyle.css">
        <link rel="stylesheet" href="css/pagingStyle.css">
        <link rel="stylesheet" href="css/sellerStyle.css">
        <style>
            .stars-outer {
                position: relative;
                display: inline-block;
            }

            .stars-inner {
                position: absolute;
                top: 0;
                left: 0;
                white-space: nowrap;
                overflow: hidden;
                width: 0;
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
        <c:choose>
            <c:when test="${stt.equals('1')}">
                <div class="position-fixed bottom-0 end-0 p-3" style="right: 10px; bottom: 10px; z-index: 11">
                    <div class="toast" data-autohide="true">
                        <div class="toast-header bg-success">
                            <strong class="mr-auto text-white"><h4>Report Restaurant Successfully</h4></strong>
                            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
                        </div>
                        <div class="toast-body">
                            Report Restaurant Successfully !
                        </div>
                    </div>
                </div>
            </c:when>
        </c:choose>
        <%@include file="/header.jsp" %>
        <div class="bg-white">
            <div class="d-flex nav-item main-home col-md-12">
                <ul id="navbar-items" class="col-md-2">
                    <%@include file="/sidebar.jsp" %>
                </ul>
                <div id="topnavbar" class="col-md-10">
                    <div class="d-flex align-items-center mb-3 mt-5 px-md-3 px-2 justify-content-center"> 
                        <form class="example d-flex align-items-center" action="FilterRestaurantController" method="post"> 
                            <input type="text" name="keyword" value="${keyword}" >
                            <button type="submit"><i class="fa fa-search"></i></button> 
                            <br/>
                            Bộ lọc tìm kiếm <br/>


                            Khoảng cách: <select name="distance">
                                <option value="6" <c:if test = "${distance == 10 }">
                                        selected="selected"
                                    </c:if>> Tất cả</option>
                                <option value="1" <c:if test = "${distance == 1 }">
                                        selected="selected"
                                    </c:if> > < 1km</option>
                                <option value="2"<c:if test = "${distance == 2 }">
                                        selected="selected"
                                    </c:if>> < 2km</option>
                                <option value="3" <c:if test = "${distance == 3 }">
                                        selected="selected"
                                    </c:if>> < 3km</option>
                                <option value="5" <c:if test = "${distance == 5 }">
                                        selected="selected"
                                    </c:if>> < 5km</option>
                            </select>
                            <br/>
                            <br/>
                            Xếp hạng: <select name="star">
                                <option value="6" <c:if test = "${star == 6 }">
                                        selected="selected"
                                    </c:if>> Tất cả</option>
                                <option value="1" <c:if test = "${star == 1 }">
                                        selected="selected"
                                    </c:if>> 1</option>
                                <option value="2" <c:if test = "${star == 2 }">
                                        selected="selected"
                                    </c:if>> 2</option>
                                <option value="3" <c:if test = "${star == 3 }">
                                        selected="selected"
                                    </c:if>> 3</option>
                                <option value="4" <c:if test = "${star == 4 }">
                                        selected="selected"
                                    </c:if>> 4</option>
                                <option value="5" <c:if test = "${star == 5 }">
                                        selected="selected"
                                    </c:if>> 5</option>
                            </select>
                            <input type="submit" value="Tìm kiếm"> 
                            <a href="ResetSearchHostelsController?keywordHostel=${keywordHostel}">Xóa bộ lọc</a>
                        </form>
                    </div>
                    <div class="container" style="margin-top: 50px">
                        <div class="row">
                            <div class="col-lg-12 mb-5">
                                <div>
                                    <ul class="breadcrumb">
                                        <li><a href="home.jsp">Trang chủ</a></li>
                                        <li><a>Danh sách tất cả nhà hàng</a></li>
                                    </ul>
                                </div>
                                <ul class="list-group shadow">
                                    <c:forEach items="${restaurants}" var="restaurant" >
                                        <li class="list-group-item">
                                            <div class="d-flex media align-items-lg-center flex-column flex-lg-row p-1">
                                                <div class="col-md-3 media-body order-2 order-lg-1 image">
                                                    <img  <c:if test="${d.img1 != null}">
                                                            src="${d.img1}" </c:if>
                                                        <c:if test="${d.img1 == null}">
                                                            src="images/nhà trọ.jpg" </c:if> style="width: 150px; height: 150px" >
                                                    </div>
                                                    <div class="col-md-5 media-body order-2 order-lg-1 description" id="description">
                                                        <h3 class="mt-0 font-weight-bold mb-4">
                                                            <a href="RestaurantListController?id=${restaurant.restaurantID}" style="text-decoration: none; color:blue; font-weight: bold">${restaurant.restaurantName}</a>
                                                    </h3>
                                                    <p style="font-size: 20px">${restaurant.description}</p>
                                                    <p style="font-size: 20px">${restaurant.address}</p>
                                                </div>
                                                <div class="col-md-4 mt-5 stars-outer media-body order-2 order-lg-1 button_edit">
                                                    <div class="stars-inner" style="width: ${d.starAVG}%">  </div>
                                                </div>
                                        </li> 
                                    </c:forEach>
                                </ul> 
                                <!--                                <div class="clearfix">
                                                                    <ul class="pagination">
                                <c:if test="${tag>1}">
                                    <li class="page-item disabled"><a href="ListAllRestaurantController?index=${tag-1}">Previous</a></li>
                                </c:if>
                                <c:forEach begin="1" end="${endP}" var="i">
                                <li class="page-item ${tag==i?"active":""}"><a href="ListAllRestaurantController?index=${i}" class="page-link">${i}</a></li>
                                </c:forEach>
                                <c:if test="${tag<endP}">
                                <li class="page-item"><a href="ListAllRestaurantController?index=${tag+1}" class="page-link">Next</a></li>
                                </c:if>
                        </ul>
                    </div> -->
                                <c:forEach begin="1" end="${totalPage}" var="i">
                                    <a href="FilterRestaurantController?index=${i}&costUnder=${under}&costUpper=${upper}&distance=${distance}&keyword=${keyword}">${i}</a> 
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            $(document).ready(function () {
                $(".toast").toast({delay: 4000});
                $(".toast").toast("show");

            });
        </script>
    </body>
</html>