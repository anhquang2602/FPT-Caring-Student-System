<%-- 
    Document   : detailClub
    Created on : Jun 28, 2022, 10:59:22 PM
    Author     : win
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
        <link rel="stylesheet" href="css/viewListStyle.css">
        <link rel="stylesheet" href="css/profileStyle.css">
        <link rel="stylesheet" href="css/pagingStyle.css">
    </head>
    <%@include file="/header.jsp" %>
    <div class="bg-white">
        <div class="d-flex nav-item main-home col-md-12">
            <ul id="navbar-items" class="col-md-2">
                <%@include file="/sidebar.jsp" %>
            </ul>
            <div id="topnavbar1" class="col-md-10">
                <div class="container rounded bg-white mt-5 mb-5">
                    <div>
                        <ul class="breadcrumb bg-white">
                            <li><a href="home.jsp">Trang chủ</a></li>
                            <li><a href="ClubListController">Danh sách Câu Lạc Bộ</a></li>
                            <li><a>Chi tiết Câu Lạc Bộ</a></li>
                        </ul>
                    </div>
                    <div class="row">
                        <div class="col-md-4 ml-5">
                            <div class="d-flex flex-column align-items-center text-center">
                                <c:if test="${club.avatar != null}">
                                    <div class="form-group mt-3">
                                        <img src="${club.avatar}" class="form-control" style="padding: 0px">
                                    </div>
                                </c:if>
                                <c:if test="${club.avatar == null}">
                                    <div class="form-group mt-3">
                                        <img class="form-control" style="padding: 0px; width: 200px; height: 200px">
                                    </div>
                                </c:if>
                                <div class="mt-5">
                                    <h4 class="font-weight-bold">${club.clubName}</h4>
                                    <h5>${club.email}</span><span></h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 ml-5 mt-5">
                            <div class="p-3 py-5">
                                <div class="row mt-5">
                                    <div class="col-md-12">
                                        <h4>Chủ Nhiệm</h4>
                                        <input type="text" class="form-control" value="${club.clubPresident}" readonly="">
                                    </div>
                                    <div class="col-md-12 mt-3">
                                        <h4>Link Facebook</h4>
                                        <input type="text" class="form-control" value="${club.facebook}" readonly="">
                                    </div>
                                    <div class="col-md-12 mt-3">
                                        <h4>Giới Thiệu</h4>
                                        <textarea class="form-control" readonly="re">${club.des}</textarea>
                                        <!--<input type="text" class="form-control" value="${club.des}" readonly="" maxlength="">-->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="p-3 py-5">
                                <div style="border: 1px solid greenyellow; background-color: greenyellow; border-radius: 0.5; width: auto; height: auto; color: brown">
                                    <h3 class="text-center">SỰ KIỆN CÂU LẠC BỘ</h3>
                                </div>
                                <span style="font-size: 25">${eventNull}</span> 
                                <ul class="list-group shadow">
                                    <c:forEach items="${listEvent}" var="event">
                                        <li class="list-group-item">
                                            <div class="d-flex media align-items-lg-center flex-column flex-lg-row p-1 mt-3">
                                                <div class="col-md-4 media-body order-2 order-lg-1 image">
                                                    <img src="${event.url}" width="300px" height="300px" alt="Generic placeholder image">
                                                </div>
                                                <div class="col-md-7 media-body order-2 order-lg-1 description ml-5" id="description">
                                                    <h4 class="mt-0 font-weight-bold mb-2 text-center">
                                                        <a style="text-decoration: none; font-weight: bold">${event.eventName}</a>
                                                    </h4>
                                                    <p class="mb-2" style="font-size: 18px">${event.des}</p>
                                                    <p class="text-muted mb-2" style="font-size: 18px; text-align: end">${event.time}</p>
                                                </div>
                                            </div> 
                                        </li> 
                                    </c:forEach>
                                </ul>
                                <div class="clearfix">
                                    <ul class="pagination">
                                        <c:if test="${tag>1}">
                                            <li class="page-item disabled"><a href="detailClub?index=${tag-1}&email=${club.email}">Previous</a></li>
                                            </c:if>
                                            <c:forEach begin="1" end="${endP}" var="i">
                                            <li class="page-item ${tag==i?"active":""}"><a href="detailClub?index=${i}&email=${club.email}" class="page-link">${i}</a></li>
                                            </c:forEach>
                                            <c:if test="${tag<endP}">
                                            <li class="page-item"><a href="detailClub?index=${tag+1}&email=${club.email}" class="page-link">Next</a></li>
                                            </c:if>
                                    </ul>
                                </div> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <%@include file="/footer.jsp" %>
</html>
