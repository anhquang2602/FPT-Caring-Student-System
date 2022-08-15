<%-- 
    Document   : listClubs
    Created on : Jun 22, 2022, 12:27:04 PM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <body>
        <%@include file="/header.jsp" %>
        <div class="bg-white">
            <div class="d-flex nav-item main-home col-md-12">
                <ul id="navbar-items" class="col-md-2">
                    <%@include file="/sidebar.jsp" %>
                </ul>
                <div id="topnavbar" class="col-md-10">
                    <div class="d-flex align-items-center mb-3 mt-5 px-md-3 px-2 justify-content-center"> 
                        <form class="example d-flex align-items-center" action="ClubListController" method="post"> 
                            <input type="text" placeholder="" name="key" value="${key}"> 
                            <button type="submit"><i class="fa fa-search"></i></button> 
                            DANH MỤC
                            <div class="list-group">
                                <a href="listClubCategories?type=1&key=${key}" class="list-group-item list-group-item-action">Học Thuật</a>
                                <a href="listClubCategories?type=2&key=${key}" class="list-group-item list-group-item-action">Kỹ Năng Sống</a>
                                <a href="listClubCategories?type=3&key=${key}" class="list-group-item list-group-item-action">Võ Thuật</a>
                                <a href="listClubCategories?type=4&key=${key}" class="list-group-item list-group-item-action ">Nghệ Thuật</a>
                            </div>
                        </form>
                    </div>
                    <div class="main-wrapper">
                        <div class="page-wrapper">
                            <div class="content container-fluid">
                                <div class="row">
                                    <div class="col-lg-12 mb-5">
                                        <div>
                                            <ul class="breadcrumb">
                                                <li><a href="home.jsp">Trang chủ</a></li>
                                                <li><a>Danh sách Câu Lạc Bộ</a></li>
                                            </ul>
                                        </div>
                                        <div class="card card-table">
                                            <div class="card-body">
                                                <div class="table-responsive">
                                                    <table class="table table-hover table-center datatable" id="club">
                                                        <thead>
                                                            <tr>
                                                                <th>CÂU LẠC BỘ</th>
                                                                <th>CHỦ NHIỆM</th>
                                                                <th>LINK FACEBOOK CÂU LẠC BỘ</th>
                                                                <th>EMAIL</th>
                                                                <th>MÔ TẢ</th>
                                                                <th>XEM CHI TIẾT</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach items="${listClubs}" var="club">
                                                                <tr>
                                                                    <td>
                                                                        ${club.clubName}
                                                                    </td>
                                                                    <td>
                                                                        ${club.clubPresident}
                                                                    </td>
                                                                    <td>
                                                                        ${club.facebook}
                                                                    </td>
                                                                    <td>
                                                                        ${club.email}
                                                                    </td>  
                                                                    <td>
                                                                        ${club.des}
                                                                    </td>
                                                                    <td>
                                                                        <a style="text-decoration: none" href="detailClub?id=${club.clubID}">Chi Tiết</a>
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
        <%@include file="/footer.jsp" %>

        <script src="js/jquery-3.6.0.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.slimscroll.min.js"></script>
        <script src="js/datatables.min.js"></script>
        <script src="js/script.js"></script>
    </body>

</html>
