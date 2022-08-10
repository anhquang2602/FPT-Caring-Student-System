<%-- 
    Document   : listAllReport
    Created on : Aug 6, 2022, 1:39:34 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                                        <li><a>Danh sách Báo Cáo Nhà Ăn</a></li>
                                    </ul>
                                </div>
                                <table class="table" id="seller">
                                    <tr>
                                        <th>Tên Nhà Hàng</th>
                                        <th>Spam</th>
                                        <th>Violent</th>
                                        <th>Offensive</th>
                                        <th>Truthless</th>
                                        <th>Xóa Bài Đăng</th>
                                        <th>Xem Bài Viết</th>
                                    </tr>
                                    <c:forEach items="${listReportRestaurant}" var="report">
                                        <tr>
                                            <td>${report.restaurantName}</td>
                                            <td>${report.spam}</td>
                                            <td>${report.violent}</td>
                                            <td>${report.offensive}</td>
                                            <td>${report.truthless}</td>
                                            <td>   
                                                <a href="#" style="text-decoration: none">Xóa</a>
                                            </td>
                                            <td>
                                                <a href="RestaurantListController?id=${report.restaurantID}" style="text-decoration: none">Xem Bài Đăng</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <%@include file="/footer.jsp" %>
</html>
