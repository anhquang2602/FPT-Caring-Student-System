<%-- 
    Document   : departmentdetail
    Created on : Jun 18, 2022, 3:37:44 PM
    Author     : nguye
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
        <link rel="stylesheet" href="css/pagingStyle.css">
        <link rel="stylesheet" href="css/style1.css">
    </head>
    <body class="bg-white">
        <div class="px-0">
            <%@include file="/header.jsp" %> 
            <div class="d-flex nav-item main-home">
                <ul id="navbar-items">
                    <%@include file="/sidebar.jsp" %>
                </ul>
                <div class="container rounded bg-white mt-5 mb-5">
                    <div>
                        <ul class="breadcrumb bg-white">
                            <li><a href="home.jsp">Home</a></li>
                            <li><a href="BusPagingServlet">List Bus</a></li>
                            <li><a>Bus Detail</a></li>
                        </ul>
                    </div>
                    <div class="row">
                        <div class="col-md-5">
                            <div class="justify-content-between align-items-center experience">
                                <div class="p-3 py-5">
                                    <img src="img1" alt="Generic placeholder image">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="">
                                <div class="row">
                                    <div class="col-md-5">
                                        <label class="fs12">Tên</label>
                                        <input type="text" value="Lộ trình xe bus ${busnumber}" readonly="">
                                    </div>
                                    <div class="col-md-15">
                                        <label class="fs12">Mô tả</label>
                                        <textarea  readonly="" style="width: 700px;" rows="20">
                                            <%
                                                String string = (String) request.getAttribute("StopPoint");
                                                String[] parts = string.split("&&");
                                            %>
                                            <% for (String bs : parts) {%>
                                            <%=bs%>
                                            <%}%>
                                        </textarea>
                                    </div>
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