<%-- 
    Document   : listAllReport
    Created on : Aug 6, 2022, 1:39:34 AM
    Author     : DELL
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
        <link rel="stylesheet" href="css/datatables.min.css">
        <link rel="stylesheet" href="css/style1.css">
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
                    <div class="main-wrapper">
                        <div class="page-wrapper">
                            <div class="content container-fluid">
                                <div class="row">
                                    <div class="col-lg-12 mb-5">
                                        <div>
                                            <ul class="breadcrumb bg-white">
                                                <li><a href="home.jsp">Trang chủ</a></li>
                                                <li><a>Danh sách Báo Cáo Nhà Ăn</a></li>
                                            </ul>
                                        </div>
                                        <div class="card card-table">
                                            <div class="card-body">
                                                <div class="table-responsive">
                                                    <table class="table table-hover table-center datatable" id="seller">
                                                        <thead>
                                                            <tr>
                                                                <th>Tên Nhà Hàng</th>
                                                                <th>Spam</th>
                                                                <th>Hình Ảnh Không Phù Hợp</th>
                                                                <th>Ngôn Từ Đả Kích</th>
                                                                <th>Thông Tin Sai Sự Thật</th>
                                                                <th class="text-center">Xem Bài Viết/ Xóa Bài Đăng</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach items="${listReportRestaurant}" var="report">
                                                                <tr>
                                                                    <td>${report.restaurantName}</td>
                                                                    <td>${report.spam}</td>
                                                                    <td>${report.violent}</td>
                                                                    <td>${report.offensive}</td>
                                                                    <td>${report.truthless}</td>
                                                                    <td class="text-center">
                                                                        <div class="actions">
                                                                            <a href="RestaurantListController?id=${report.restaurantID}" class="btn btn-sm bg-success-light mr-2">
                                                                                <i class="fas fa-pen"></i>
                                                                            </a>
                                                                            <a href="DeleteRestaurantController?id=${report.restaurantID}" class="btn btn-sm bg-danger-light">
                                                                                <i class="fas fa-trash"></i>
                                                                            </a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/jquery-3.6.0.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.slimscroll.min.js"></script>
        <script src="js/datatables.min.js"></script>
        <script src="js/script.js"></script>
    </body>
    <%@include file="/footer.jsp" %>
</html>
