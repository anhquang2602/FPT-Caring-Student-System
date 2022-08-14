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
        <title>JSP Page</title>
    </head>
    <body>
        <div class="px-0 bg-white">
            <%@include file="/header.jsp" %> 
            <div class="d-md-flex">
                <ul id="navbar-items" class="p-3">
                    <%@include file="/sidebar.jsp" %>
                </ul>
                <form action="AddNewEvent" enctype="multipart/form-data"  method="post" >
                    <div class="container rounded bg-white mt-5 mb-5">
                        <div class="row">
                            <div>
                                <ul class="breadcrumb bg-white">
                                    <li><a href="home.jsp">Trang chủ</a></li>
                                    <li><a href="UpdateClubProfile">Danh sách sự kiện</a></li>                                    
                                </ul>
                            </div>
                            <a href="AddNewEvent">Thêm sự kiện</a>
                            <ul class="list-group shadow">
                                <c:forEach items="${listEvent}" var="event">
                                    <li class="list-group-item">
                                        <a href="DeteleEvent?eventID=${event.eventID}">Xóa </a>
                                        <a href="EditEvent?eventID=${event.eventID}">Chỉnh sửa </a>
                                        <div class="media align-items-lg-center flex-column flex-lg-row p-1 mt-3">
                                            <div class="media-body order-2 order-lg-1 description" id="description">
                                                <h4 class="mt-0 font-weight-bold mb-2 text-center">
                                                    <a style="text-decoration: none; font-weight: bold">${event.eventName}</a>
                                                </h4>
                                                <p class="mb-2" style="font-size: 18px">${event.des}</p>
                                                <p class="text-muted mb-2" style="font-size: 18px; text-align: end">${event.time}</p>
                                            </div>
                                            <div class="media-body order-2 order-lg-1 image">
                                                <img src="${event.url}" alt="Generic placeholder image">
                                            </div>
                                        </div> 
                                    </li> 
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </form>
            </div>
            <%@include file="/footer.jsp" %>

        </div>
    </body>
</html>
