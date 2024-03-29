<%-- 
    Document   : listAllEventOfClub
    Created on : Aug 13, 2022, 4:08:32 PM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<!DOCTYPE html>
<html>
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
                            <strong class="mr-auto text-white"><h4>Thêm Sự Kiện Thành Công</h4></strong>
                            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
                        </div>
                        <div class="toast-body">
                            Thêm sự kiện thành công !
                        </div>
                    </div>
                </div>
            </c:when>

            <c:when test="${stt.equals('3')}">
                <div class="position-fixed bottom-0 end-0 p-3" style="right: 10px; bottom: 10px; z-index: 11">
                    <div class="toast" data-autohide="true">
                        <div class="toast-header bg-success">
                            <strong class="mr-auto text-white"><h4>Xóa Sự Kiện Thành Công</h4></strong>
                            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
                        </div>
                        <div class="toast-body">
                            Xóa sự kiện thành công !
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
                    <form action="AddNewEvent" enctype="multipart/form-data"  method="post" >
                        <div class="container" style="margin-top: 50px">
                            <div class="col-lg-12 mb-5">
                                <div class="row">
                                    <div>
                                        <ul class="breadcrumb">
                                            <li><a href="home.jsp">Trang chủ</a></li>
                                            <li><a>Danh sách sự kiện</a></li>                                    
                                        </ul>
                                    </div>
                                    <div class=" mt-5 mb-3" style="text-align: end">
                                        <a style="font-size: 20px; padding: 20px; background-color: #04AA6D; color: white; border: none; text-decoration: none" href="AddNewEvent">Thêm sự kiện (+)</a>
                                    </div>
                                    <ul class="list-group">
                                        <c:forEach items="${listEvent}" var="event">
                                            <li class="list-group-item">
                                                <div class="d-flex media align-items-lg-center flex-column flex-lg-row p-1 mt-3">
                                                    <div class="col-md-4 media-body order-2 order-lg-1 text-center image">
                                                        <img 
                                                            <c:if test="${event.url == null}">
                                                                src="images/event.jpg"
                                                            </c:if>
                                                            <c:if test="${event.url != null}">
                                                                src="${event.url}"
                                                            </c:if> 
                                                            width="400px" height="400px" alt="Generic placeholder image">
                                                        <a class="btn btn-primary mt-5" href="EditEvent?eventID=${event.eventID}">Chỉnh sửa </a>
                                                        <a class="btn btn-secondary mt-5" id="btnDelete" href="#" data-href="DeteleEvent?eventID=${event.eventID}" data-toggle="modal" data-target="#confirm-delete">Xoá sự kiện</a>
                                                    </div>
                                                    <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    Xoá sự kiện
                                                                </div>
                                                                <div class="modal-body">
                                                                    Bạn có chắc chắn muốn xoá sự kiện này không?
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Huỷ</button>
                                                                    <a class="btn btn-danger btn-ok">Xoá</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-7 media-body order-2 order-lg-1 description ml-5" id="description">
                                                        <h4 class="mt-0 font-weight-bold mb-2 text-center">
                                                            <a style="text-decoration: none; font-weight: bold">${event.eventName}</a>
                                                        </h4>
                                                        <p class="mb-2" style="font-size: 18px">${event.des}</p>
                                                        <p class="text-end text-muted mb-2" style="font-size: 18px; text-align: end">${event.time}</p>
                                                    </div>
                                                </div> 
                                            </li> 
                                        </c:forEach>
                                    </ul>
                                    <div class="clearfix">
                                        <ul class="pagination">
                                            <c:if test="${tag>1}">
                                                <li class="page-item disabled"><a href="AllEventByClub?index=${tag-1}">Previous</a></li>
                                                </c:if>
                                                <c:forEach begin="1" end="${endP}" var="i">
                                                <li class="page-item ${tag==i?"active":""}"><a href="AllEventByClub?index=${i}" class="page-link">${i}</a></li>
                                                </c:forEach>
                                                <c:if test="${tag<endP}">
                                                <li class="page-item"><a href="AllEventByClub?index=${tag+1}" class="page-link">Next</a></li>
                                                </c:if>
                                        </ul>
                                    </div> 
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <%@include file="/footer.jsp" %>
        <script>
            $(document).ready(function () {
                $(".toast").toast({delay: 4000});
                $(".toast").toast("show");

            });
        </script>
        <script>

            $(document).on('click', '#btnDelete', function () {
                var link = $(this).attr('data-href');
                $('.btn-ok').attr('href', link);
            });
        </script>
    </body>
</html>
