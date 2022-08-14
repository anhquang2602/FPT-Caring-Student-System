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
    </head>
    <body>
        <c:choose>
            <c:when test="${stt.equals('1')}">
                <div class="position-fixed bottom-0 end-0 p-3" style="right: 10px; bottom: 10px; z-index: 11">
                    <div class="toast" data-autohide="true">
                        <div class="toast-header bg-success">
                            <strong class="mr-auto text-white"><h4>Thêm Nhà Hàng Thành Công</h4></strong>
                            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
                        </div>
                        <div class="toast-body">
                            Thêm nhà hàng thành công !
                        </div>
                    </div>
                </div>
            </c:when>
            <c:when test="${stt.equals('2')}">
                <div class="position-fixed bottom-0 end-0 p-3" style="right: 10px; bottom: 10px; z-index: 11">
                    <div class="toast" data-autohide="true">
                        <div class="toast-header bg-success">
                            <strong class="mr-auto text-white"><h4>Chỉnh Sửa Nhà Hàng Thành Công</h4></strong>
                            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
                        </div>
                        <div class="toast-body">
                            Chỉnh sửa nhà hàng thành công !
                        </div>
                    </div>
                </div>
            </c:when>
            <c:when test="${stt.equals('3')}">
                <div class="position-fixed bottom-0 end-0 p-3" style="right: 10px; bottom: 10px; z-index: 11">
                    <div class="toast" data-autohide="true">
                        <div class="toast-header bg-success">
                            <strong class="mr-auto text-white"><h4>Xóa Nhà Hàng Thành Công</h4></strong>
                            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
                        </div>
                        <div class="toast-body">
                            Xóa nhà hàng thành công !
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
                    <div class="container" style="margin-top: 50px">
                        <div class="row">
                            <div class="col-lg-12 mb-5">
                                <div>
                                    <ul class="breadcrumb">
                                        <li><a href="home.jsp">Trang chủ</a></li>
                                        <li><a>Nhà hàng của tôi</a></li>
                                    </ul>
                                </div>
                                <div class="mb-3" style="text-align: end">
                                    <a style="padding: 20px; background-color: #04AA6D; color: white; border: none; text-decoration: none" href="AddRestaurantController">Thêm nhà hàng mới (+)</a>
                                </div>
                                <ul class="list-group shadow">
                                    <c:forEach items="${listRestaurant}" var="r" >
                                        <li class="list-group-item">
                                            <div class="d-flex media align-items-lg-center flex-column flex-lg-row p-1">
                                                <div class="col-md-3 media-body order-2 order-lg-1 image">
<!--                                                    <img src="${r.restaurantImage}" style="width: 150px; height: 150px" >-->

                                                    <img class="img-fluid img-responsive rounded product-image" 
                                                         <c:if test="${r.restaurantImage != null}">
                                                             src="${r.restaurantImage}" </c:if>
                                                         <c:if test="${r.restaurantImage == null}">
                                                             src="images/nhà trọ.jpg" </c:if> style="width: 150px; height: 150px">

                                                    </div>
                                                    <div class="col-md-5 media-body order-2 order-lg-1 description" id="description">
                                                        <h5 class="mt-0 font-weight-bold mb-2">
                                                            <a href="RestaurantListController?id=${r.restaurantID}" style="text-decoration: none; color:blue; font-weight: bold">${r.restaurantName}</a>
                                                    </h5>
                                                    <p class="font-italic text-muted mb-0 small" style="font-size: 18px">${r.description}</p>
                                                    <p class="font-italic text-muted mb-0 small" style="font-size: 18px">${r.address}</p>
                                                </div>
                                                <div class="col-md-4 mt-5 media-body order-2 order-lg-1 button_edit1">
                                                    <a class="btn btn-danger" href="EditRestaurantController?id=${r.restaurantID}">Chỉnh sửa</a> 
                                                    <a class="btn btn-primary" href="AddFoodController?id=${r.restaurantID}">Menu</a>
                                                    <a class="btn btn-secondary" id="btnDelete" href="#" data-href="DeleteRestaurantController?id=${r.restaurantID}" data-toggle="modal" data-target="#confirm-delete">Xoá nhà hàng</a>

                                                </div>

                                                <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                Xoá nhà hàng
                                                            </div>
                                                            <div class="modal-body">
                                                                Bạn có chắc chắn muốn xoá nhà hàng này không?
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Huỷ</button>
                                                                <a class="btn btn-danger btn-ok">Xoá</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
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
        <%@include file="/footer.jsp" %>
        <script>
            $(document).on('click', '#btnDelete', function () {
                var link = $(this).attr('data-href');
                $('.btn-ok').attr('href', link);
            });
        </script>
        <script>
            $(document).ready(function () {
                $(".toast").toast({delay: 4000});
                $(".toast").toast("show");

            });
        </script>
    </body>


</html>