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
        <link rel="stylesheet" href="css/clubStyle.css">
        <link rel="stylesheet" href="css/pagingStyle.css">
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
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 mb-5">
                                <div>
                                    <ul class="breadcrumb bg-white">
                                        <li><a href="home.jsp">Trang chủ</a></li>
                                        <li><a>Danh sách Câu Lạc Bộ</a></li>
                                    </ul>
                                </div>
                                <table id="club">
                                    <thead>
                                        <tr>
                                            <th scope="col">CÂU LẠC BỘ</th>
                                            <th scope="col">CHỦ NHIỆM</th>
                                            <th scope="col">LINK FACEBOOK CÂU LẠC BỘ</th>
                                            <th scope="col">EMAIL</th>
                                            <th scope="col">XEM CHI TIẾT</th>
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
    </body>
    <%@include file="/footer.jsp" %>
</html>
