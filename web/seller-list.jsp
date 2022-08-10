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
        <link rel="stylesheet" href="css/viewListStyle.css">
        <link rel="stylesheet" href="css/pagingStyle.css">
        <link rel="stylesheet" href="css/sellerStyle.css">
    </head>
    <body class="bg-white">
        <div class="px-0">
            <%@include file="/header.jsp" %>
            <div class="d-flex nav-item main-home">
                <ul id="navbar-items">
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
                                        <li><a>Danh sách Chủ Kinh Doanh</a></li>
                                    </ul>
                                </div>
                                <table class="table" id="seller">
                                    <tr>
                                        <th>ID Chủ Kinh Doanh</th>
                                        <th>Tên Chủ Kinh Doanh</th>
                                        <th>Tuổi</th>
                                        <th>Giới Tính</th>
                                        <th>Số Điện Thoại</th>
                                        <th>Email</th>
                                        <th>Trạng Thái</th>
                                        <th>Xem Hồ Sơ</th>
                                    </tr>
                                    <c:forEach items="${listSeller}" var="seller">
                                        <tr>
                                            <td>${seller.sellerID}</td>
                                            <td>${seller.firstName} ${seller.lastName}</td>
                                            <td>${seller.age}</td>
                                            <td>
                                                <c:if test="${seller.gender==1}">Nam</c:if>
                                                <c:if test="${seller.gender==0}">Nữ</c:if>
                                                </td>
                                                <td>0${seller.phone}</td>
                                            <td>${seller.email}</td>
                                            <td>
                                                <c:if test="${seller.status==1}">
                                                    <span class="inline-flex px-5 py-2 font-semibold leading-5 text-green-800 bg-green-100 rounded-lg text-md">
                                                        Hoạt Động
                                                    </span>
                                                </c:if>
                                                <c:if test="${seller.status==0}">
                                                    <span class="inline-flex px-5 py-2 font-semibold leading-5 text-green-800 bg-green-100 rounded-lg text-md">
                                                        Không Hoạt Động
                                                    </span> 
                                                    </c:if>
                                            </td>
                                            <td>
                                                <a href="ViewSellerController?id=${seller.sellerID}" style="text-decoration: none">Chi Tiết</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </table>
                                 <div class="clearfix">
                                    <ul class="pagination">
                                        <c:if test="${tag>1}">
                                            <li class="page-item disabled"><a href="SellerListController?index=${tag-1}">Previous</a></li>
                                            </c:if>
                                            <c:forEach begin="1" end="${endP}" var="i">
                                            <li class="page-item ${tag==i?"active":""}"><a href="SellerListController?index=${i}" class="page-link">${i}</a></li>
                                            </c:forEach>
                                            <c:if test="${tag<endP}">
                                            <li class="page-item"><a href="SellerListController?index=${tag+1}" class="page-link">Next</a></li>
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


