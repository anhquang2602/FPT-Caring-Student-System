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
        <%@include file="/header.jsp" %>
        <div class="bg-white">
            <div class="d-flex nav-item main-home col-md-12">
                <ul id="navbar-items" class="col-md-2">
                    <%@include file="/sidebar.jsp" %>
                </ul>
                <div id="topnavbar1" class="col-md-10">
                    <form action="AddNewEvent" enctype="multipart/form-data"  method="post" >
                        <div class="container" style="margin-top: 50px">
                            <div class="col-lg-12 mb-5">
                                <div class="row">
                                    <div>
                                        <ul class="breadcrumb bg-white">
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
                                                        <img src="${event.url}" alt="Generic placeholder image">
                                                        <a class="btn btn-primary mt-5" href="EditEvent?eventID=${event.eventID}">Chỉnh sửa </a>
                                                        <a class="btn btn-secondary mt-5" href="DeteleEvent?eventID=${event.eventID}">Xóa </a>
                                                        
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
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <%@include file="/footer.jsp" %>
    </body>
</html>
