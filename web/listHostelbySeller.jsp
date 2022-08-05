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
        <link rel="stylesheet" href="css/pagingStyle.css">
        <link rel="stylesheet" href="css/sellerStyle.css">
    </head>
    <body class="bg-white">
        <div class="px-0">
            <%@include file="/header.jsp" %>
            <div class="d-md-flex">
                <ul id="navbar-items" class="p-3">
                    <%@include file="/sidebar.jsp" %>
                </ul>
                <div id="topnavbar">
                    <div class="d-flex align-items-center mb-3 mt-5 px-md-3 px-2 justify-content-center"> 
                        <form class="example d-flex align-items-center"> 
                            <input type="text" placeholder="" name="search"> 
                            <button type="submit"><i class="fa fa-search"></i></button> 
                        </form>
                    </div>
                    <div class="container" style="margin-top: 50px">
                        <div class="row">
                            <div class="col-lg-12 mb-5">
                                <div>
                                    <ul class="breadcrumb bg-white">
                                        <li><a href="home.jsp">Trang chủ</a></li>
                                        <li><a>Nhà trọ của tôi </a></li>
                                    </ul>
                                </div>
                                <!--                                <table class="table" id="seller">
                                                                    <tr>
                                                                        <th>Hostel Name</th>
                                                                        <th>Delete Hostel</th>
                                                                    </tr>
                                <c:forEach items="${listH}" var="o" >
                                    <tr>
                                        <td><a href="edithostel?id=${o.hostelID}">${o.hostelName}</a></td> 
                                        <td><a href="deletehostel?id=${o.hostelID}">Delete Hostel</a></td>
                                    </tr>
                                </c:forEach>
                            </table>-->


                                <a href="addhostel" >Thêm nhà trọ mới (+)</a><br><br>
                                <ul class="list-group shadow">
                                    <c:forEach items="${listH}" var="d" >
                                        <li class="list-group-item">
                                            <div class="media align-items-lg-center flex-column flex-lg-row p-1">
                                                <div class="media-body order-2 order-lg-1 description" id="description">
                                                    <h5 class="mt-0 font-weight-bold mb-2">
                                                        <a href="detailhostel?id=${d.hostelID}" style="text-decoration: underline;color:blue; font-weight: bold">Nhà trọ ${d.hostelName}</a>
                                                    </h5>
                                                    <p class="font-italic text-muted mb-0 small" style="font-size: 18px">Có ${d.totalRoom} phòng</p>
                                                    <p class="font-italic text-muted mb-0 small" style="font-size: 18px">Giá thuê: ${d.cost} VND</p>
                                                </div>
                                                <div class="media-body order-2 order-lg-1 image">
                                                    <img src="${d.img1}" style="width: 150px; height: 150px" >
                                                </div>
                                                <a href="edithostel?id=${d.hostelID}" style="margin-left: 1000px">Chỉnh sửa</a> 
                                                <a href="deletehostel?id=${d.hostelID}" style="margin-left: 1000px">Xoá nhà trọ</a> 
                                            </div> 
                                        </li> 
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <%@include file="/footer.jsp" %>
</html>


