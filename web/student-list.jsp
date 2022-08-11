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
        <link rel="stylesheet" href="css/studentStyle.css">
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
                                        <li><a href="home.jsp">Trang Chủ</a></li>
                                        <li><a>Danh sách Học Sinh</a></li>
                                    </ul>
                                </div>
                                <table class="table" id="student">
                                    <tr>
                                        <th>ID Học Sinh</th>
                                        <th>Tên Học Sinh</th>
                                        <th>Tuổi</th>
                                        <th>Giới Tính</th>
                                        <th>Số Điện Thoại</th>
                                        <th>Email</th>
                                        <th>Trạng Thái</th>
                                        <th>Xem Hồ Sơ</th>
                                    </tr>
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
                                            <td>
                                                <c:if test="${student.status==1}">
                                                    <span class="inline-flex px-5 py-2 font-semibold leading-5 text-green-800 bg-green-100 rounded-lg text-md">
                                                        <a href="ChangeStatusCriteria?id=${student.studentNo}" style="text-decoration: none">Hoạt Động</a>
                                                    </span>
                                                </c:if>
                                                <c:if test="${student.status==0}">
                                                    <span class="inline-flex px-5 py-2 font-semibold leading-5 text-green-800 bg-green-100 rounded-lg text-md">
                                                        <a href="ChangeStatusCriteria?id=${student.studentNo}" style="text-decoration: none">Không Hoạt Động</a>
                                                    </span> 
                                                </c:if>
                                            </td>
                                            <td>
                                                <a href="ViewStudentController?id=${student.studentID}" style="text-decoration: none">Chi Tiết</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </table>
                                <div class="clearfix">
                                    <ul class="pagination">
                                        <c:if test="${tag>1}">
                                            <li class="page-item disabled"><a href="StudentListController?index=${tag-1}">Previous</a></li>
                                            </c:if>
                                            <c:forEach begin="1" end="${endP}" var="i">
                                            <li class="page-item ${tag==i?"active":""}"><a href="StudentListController?index=${i}" class="page-link">${i}</a></li>
                                            </c:forEach>
                                            <c:if test="${tag<endP}">
                                            <li class="page-item"><a href="StudentListController?index=${tag+1}" class="page-link">Next</a></li>
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



