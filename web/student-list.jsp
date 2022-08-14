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
                                            <ul class="breadcrumb">
                                                <li><a href="home.jsp">Trang Chủ</a></li>
                                                <li><a>Danh sách Học Sinh</a></li>
                                            </ul>
                                        </div>
                                        <div class="card card-table">
                                            <div class="card-body">
                                                <div class="table-responsive">
                                                    <table class="table table-hover table-center datatable" id="seller">
                                                        <thead>
                                                            <tr>
                                                                <th>ID Học Sinh</th>
                                                                <th>Tên Học Sinh</th>
                                                                <th>Tuổi</th>
                                                                <th>Giới Tính</th>
                                                                <th>Số Điện Thoại</th>
                                                                <th>Email</th>
                                                                <th class="text-center">Trạng Thái</th>
                                                                <th>Xem Hồ Sơ</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach items="${listStudent}" var="student">
                                                                <tr>
                                                                    <td>${student.studentID}</td>
                                                                    <td>${student.firstName}${student.lastName}</td>
                                                                    <td>${student.age}</td>
                                                                    <td>
                                                                        <c:if test="${student.gender==1}">Nam</c:if>
                                                                        <c:if test="${student.gender==0}">Nữ</c:if>
                                                                        </td>
                                                                        <td>0${student.phone}</td>
                                                                    <td>${student.email}</td>
                                                                    <td class="text-center">
                                                                        <c:if test="${student.status==1}">
                                                                            <div class="actions">
                                                                                <a href="ChangeStatusCriteria?id=${student.studentNo}" class="btn btn-sm bg-purple-light mr-2">
                                                                                    <i class="fas fa-check-square"></i>
                                                                                </a>
                                                                            </div>
                                                                        </c:if>
                                                                        <c:if test="${student.status==0}">
                                                                            <div class="actions">
                                                                                <a href="ChangeStatusCriteria?id=${student.studentNo}" class="btn btn-sm bg-default-light mr-2">
                                                                                    <i class="fas fa-square"></i>
                                                                                </a>
                                                                            </div>
                                                                        </c:if>
                                                                    </td>
                                                                    <td>
                                                                        <a href="ViewStudentController?id=${student.studentID}" style="text-decoration: none">Chi Tiết</a>
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



