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
                                    <ul class="breadcrumb">
                                        <li><a href="home.jsp">Home</a></li>
                                        <li><a>List Hostels</a></li>
                                    </ul>
                                </div>
                                <ul class="list-group shadow">
                                    <c:forEach items="${listHostelPaging}" var="d" >
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
                                            </div> 
                                        </li> 
                                    </c:forEach>
                                </ul> 
                                <div class="clearfix">
                                    <ul class="pagination">
                                        <c:if test="${tag>1}">
                                            <li class="page-item disabled"><a href="listallhostels?index=${tag-1}">Previous</a></li>
                                            </c:if>
                                            <c:forEach begin="1" end="${endP}" var="i">
                                            <li class="page-item ${tag==i?"active":""}"><a href="listallhostels?index=${i}" class="page-link">${i}</a></li>
                                            </c:forEach>
                                            <c:if test="${tag<endP}">
                                            <li class="page-item"><a href="listallhostels?index=${tag+1}" class="page-link">Next</a></li>
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



