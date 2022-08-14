<%-- 
    Document   : listdepartment
    Created on : Jun 18, 2022, 2:08:32 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
                                        <li><a>Nhà trọ của tôi </a></li>
                                    </ul>
                                </div>
                                <div class="mb-3" style="text-align: end">
                                    <a style="font-size: 20px; padding: 20px; background-color: #04AA6D; color: white; border: none; text-decoration: none" href="addhostel">Thêm nhà trọ mới (+)</a>
                                </div>
                                <ul class="list-group shadow">
                                    <c:forEach items="${listH}" var="d" >
                                        <li class="list-group-item">

                                            <div class="d-flex media align-items-lg-center flex-column flex-lg-row p-4">
                                                <div class="col-md-3 media-body order-2 order-lg-1 image">

                                                    <img  <c:if test="${d.img1 != null}">
                                                            src="${d.img1}" </c:if>
                                                        <c:if test="${d.img1 == null}">
                                                            src="images/nhà trọ.jpg" </c:if> style="width: 150px; height: 150px" >

                                                            
                                                    </div>
                                                    <div class="col-md-5 media-body order-2 order-lg-1 description" id="description">
                                                        <h4 class="mt-0 font-weight-bold mb-3">
                                                            <a href="detailhostel?id=${d.hostelID}" style="text-decoration: none; color:blue; font-weight: bold">Nhà trọ ${d.hostelName}</a>
                                                    </h4>
                                                    <p style="font-size: 20px">Có ${d.totalRoom} phòng</p>
                                                    <p style="font-size: 20px">Giá thuê: <fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${d.cost}" ></fmt:formatNumber> VND</p>
                                                </div>

                                                <div class="col-md-4 mt-5 media-body order-2 order-lg-1 button_edit">
                                                    <a class="btn btn-danger" href="ChartVoteController?hostelId=${d.hostelID}">Xem Biểu Đồ</a>
                                                    <a class="btn btn-primary" href="edithostel?id=${d.hostelID}" style="">Chỉnh sửa</a> 
                                                    <a class="btn btn-secondary" id="btnDelete" href="#" data-href="deletehostel?id=${d.hostelID}" data-toggle="modal" data-target="#confirm-delete">Xoá nhà trọ</a>
                                                </div>


                                                <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                Xoá nhà trọ
                                                            </div>
                                                                <div class="modal-body">
                                                                Bạn có chắc chắn muốn xoá nhà trọ này không?
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
            <%@include file="/footer.jsp" %>
            
        </div>
    </body>
    <script>
//        $('#confirm-delete').on('show.bs.modal', function (e) {
//            $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
//        });
        $(document).on('click', '#btnDelete', function () {
           var link = $(this).attr('data-href');
            $('.btn-ok').attr('href', link );
        });
    </script>

</html>

