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
        <link rel="stylesheet" href="css/studentStyle.css">
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
                                    <ul class="breadcrumb bg-white">
                                        <li><a href="home.jsp">Home</a></li>
                                        <li><a>List Student</a></li>
                                    </ul>
                                </div>
                                <table class="table" id="student">
                                    <tr>
                                        <th>Student ID</th>
                                        <th>Full Name</th>
                                        <th>Age</th>
                                        <th>Sex</th>
                                        <th>Phone</th>
                                        <th>Email</th>
                                        <th>Status</th>
                                        <th>View</th>
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
                                                    <span
                                                        class="inline-flex px-5 py-2 font-semibold leading-5 text-green-800 bg-green-100 rounded-lg text-md "
                                                        ><a href="ChangeStatusCriteria?id=${student.studentNo}" style="text-decoration: none"> Active</a></span>
                                                </c:if>
                                                <c:if test="${student.status==0}">
                                                    <span
                                                        class="inline-flex px-5 py-2 font-semibold leading-5 text-green-800 bg-green-100 rounded-lg text-md "
                                                        ><a href="ChangeStatusCriteria?id=${student.studentNo}" style="text-decoration: none"> Inactive</a></span> 
                                                </c:if>
                                            </td>
                                            <td>
                                                <a href="ViewStudentController?id=${student.studentID}" style="text-decoration: none">View detail</a>
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



