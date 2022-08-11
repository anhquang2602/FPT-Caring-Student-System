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
        <link rel="stylesheet" href="css/profileStyle.css">
        <link rel="stylesheet" href="css/pagingStyle.css">
    </head>
    <body class="bg-white">
        <div class="px-0">
            <%@include file="/header.jsp" %> 
            <div class="d-flex nav-item main-home">
                <ul id="navbar-items">
                    <%@include file="/sidebar.jsp" %>
                </ul>
                <div class="container rounded bg-white mt-5 mb-5">
                    <div class="row">
                        <div>
                            <ul class="breadcrumb bg-white">
                                <li><a href="home.jsp">Trang chủ</a></li>
                                <li><a href="StudentListController">Danh sách Học Sinh</a></li>
                                <li><a>Hồ sơ Học Sinh</a></li>
                            </ul>
                        </div>
                        <div class="col-md-4">
                            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                                <img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg">
                                <!--                                <form action="ViewStudentController" method="post">
                                                                    <div class="form-group">                       
                                                                        <input style="padding-left: 80px"type="file" class="form-control-file" id="exampleFormControlFile1">
                                                                    </div>
                                                                </form>-->
                                <div class="p-3 py-5">
                                    <form action="ChangeStatusStudent" method="post">
                                        <div class="col-md-12 mt-5 ml-5">
                                            <input type="text" class="form-control" name="email" value="${student.email}" readonly="" hidden="">
                                        </div>
                                        <div class="mt-1">
                                            <c:if test="${student.status eq 1}">
                                                <strong class="ml-3 mr-1">Hoạt Động</strong><input class="form-check-input" type="radio" name="status" checked="" id="inlineRadio1" value="1">
                                                <strong class="ml-3 mr-1">Không Hoạt Động</strong><input class="form-check-input" type="radio" name="status"   id="inlineRadio1" value="0">
                                            </c:if>
                                            <c:if test="${student.status eq 0}">
                                                <strong class="ml-3 mr-1">Hoạt Động</strong><input class="form-check-input" type="radio" name="status"  id="inlineRadio1" value="1">
                                                <strong class="ml-3 mr-1">Không Hoạt Động</strong><input class="form-check-input" type="radio" name="status" checked=""  id="inlineRadio1" value="0">
                                            </c:if>
                                            <div class="mt-3">
                                                <input class="ml-3 p-1" type="submit" value="Confirm"/>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="p-3 py-5">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <h3 class="text-right">HỒ SƠ HỌC SINH</h3>
                                </div>
                                <div class="row mt-2">
                                    <input name="id" value="${student.studentID}" hidden="">
                                    <div class="col-md-6">
                                        <h4>Họ</h4>
                                        <input type="text" class="form-control" value="${student.firstName}" readonly="">
                                    </div>
                                    <div class="col-md-6">
                                        <h4>Tên</h4>
                                        <input type="text" class="form-control" value="${student.lastName}" readonly="">
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12">
                                        <h4>Tuổi</h4>
                                        <input type="number" class="form-control"value="${student.age}" readonly="">
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12">
                                        <h4>Số điện thoại</h4>
                                        <input type="text" class="form-control" value="0${student.phone}" readonly="">
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12">
                                        <h4>Khóa</h4>
                                        <input type="text" class="form-control" value="${student.unit}" readonly="">
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12">
                                        <h4>Email</h4>
                                        <input type="text" class="form-control" name="email" value="${student.email}" readonly="">
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12">
                                        <h4>Giới tính</h4>
                                        <c:if test="${student.gender eq 1}">
                                            <span class="ml-3 mr-1">Nam</span><input class="form-check-input" type="radio" name="inlineRadioOptions" checked="" id="inlineRadio1" value="1">
                                            <span class="ml-3 mr-1">Nữ</span><input class="form-check-input" type="radio" name="inlineRadioOptions"   id="inlineRadio1" value="0">
                                        </c:if>
                                        <c:if test="${student.gender eq 0}">
                                            <span class="ml-3 mr-1">Nam</span><input class="form-check-input" type="radio" name="inlineRadioOptions"  id="inlineRadio1" value="1">
                                            <span class="ml-3 mr-1">Nữ</span><input class="form-check-input" type="radio" name="inlineRadioOptions" checked=""  id="inlineRadio1" value="0">
                                        </c:if>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12">
                                        <h4>Đất Nước</h4>
                                        <select class="form-select" aria-label="Default select example">
                                            <option selected value="${student.countryID}">${student.countryName}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12">
                                        <h4>Tỉnh, Thành Phố</h4>
                                        <select class="form-select" aria-label="Default select example">
                                            <option selected value="${student.provinceID}">${student.provinceName}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12">
                                        <h4>Quận, Huyện</h4>
                                        <select class="form-select" aria-label="Default select example">
                                            <option selected value="${student.districID}">${student.districtName}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12">
                                        <h4>Địa Chỉ</h4>
                                        <input type="text" class="form-control"value="${student.address}" readonly="">
                                    </div>
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
