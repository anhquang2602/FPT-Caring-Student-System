<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!DOCTYPE html> 
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/profileStyle.css">
        <link rel="stylesheet" href="css/pagingStyle.css">
    </head>
    <body class="bg-white">
        <div class="px-0">
            <%@include file="/header.jsp" %> 
            <div class="d-md-flex">
                <ul id="navbar-items" class="p-3">
                    <%@include file="/sidebar.jsp" %>
                </ul>
                <div class="container rounded bg-white mt-5 mb-5">
                    <div class="row">
                        <div>
                            <ul class="breadcrumb bg-white">
                                <li><a href="home.jsp">Home</a></li>
                                <li><a href="SellerListController">List Seller</a></li>
                                <li><a>Detail Seller</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3">
                            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                                <img class="rounded-circle mt-5" width="150px" src="${seller.image}">
                                <!--                                <form action="ViewSellerController" method="post">
                                                                    <div class="form-group">                       
                                                                        <input style="padding-left: 80px"type="file" class="form-control-file" id="exampleFormControlFile1">
                                                                    </div>
                                                                </form>-->
                            </div>
                            <a href="${seller.linkFb}" title="" target="_blank">My Facebook</a>
                        </div>
                        <div class="col-md-5">
                            <div class="p-3 py-5">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <h4 class="text-right">Profile Seller</h4>
                                </div>
                                <div class="row mt-2">
                                    <input name="id" value="${seller.sellerID}" hidden="">
                                    <div class="col-md-6"><label class="labels">First Name</label><input type="text" class="form-control" value="${seller.firstName}" readonly=""></div>
                                    <div class="col-md-6"><label class="labels">Last Name</label><input type="text" class="form-control" value="${seller.lastName}" readonly=""></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12"><label class="labels">Age</label><input type="number" class="form-control"value="${seller.age}" readonly=""></div>
                                    <div class="col-md-12"><label class="labels">Mobile Number</label><input type="text" class="form-control" value="0${seller.phone}" readonly=""></div>
                                    <div class="col-md-12"><label class="labels">Email</label><input type="text" class="form-control" value="${seller.email}" readonly=""></div>
                                    <div class="col-md-12"><label class="labels">Sex</label></br>
                                        <c:if test="${seller.gender eq 1}">
                                            <input class="form-check-input" type="radio" name="inlineRadioOptions" checked="" id="inlineRadio1" value="1">Nam
                                            <input class="form-check-input" type="radio" name="inlineRadioOptions"   id="inlineRadio1" value="0" >Nữ
                                        </c:if>
                                        <c:if test="${seller.gender eq 0}">
                                            <input class="form-check-input" type="radio" name="inlineRadioOptions"  id="inlineRadio1" value="1">Nam
                                            <input class="form-check-input" type="radio" name="inlineRadioOptions" checked=""  id="inlineRadio1" value="0" >Nữ
                                        </c:if>
                                    </div>
                                    <div class="col-md-12"><label class="labels">Country</label>
                                        <select class="form-select" aria-label="Default select example">
                                            <option selected value="${seller.countryID}">${seller.countryName}</option>
                                        </select>
                                    </div>
                                    <div class="col-md-12"><label class="labels">Province</label>
                                        <select class="form-select" aria-label="Default select example">
                                            <option selected value="${seller.provinceID}">${seller.provinceName}</option>
                                        </select>
                                    </div>
                                    <div class="col-md-12"><label class="labels">District</label>
                                        <select class="form-select" aria-label="Default select example">
                                            <option selected value="${seller.districtID}">${seller.districtName}</option>
                                        </select>
                                    </div>
                                    <div class="col-md-12"><label class="labels">Address Detail</label>
                                        <input type="text" class="form-control"value="${seller.address}" readonly="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="p-3 py-5">
                                <%if (Integer.parseInt(request.getSession().getAttribute("role").toString()) == 1) {%>
                                <form action="ChangeStatusSeller" method="post">
                                    <div class="col-md-12 mt-5 ml-5"><label class="labels">Status</label></br>
                                        <input type="text" class="form-control" name="email" value="${seller.email}" readonly="" hidden="">
                                    </div>
                                    <div class="mt-1">
                                        <c:if test="${seller.status eq 1}">
                                            <input class="form-check-input" type="radio" name="status" checked="" id="inlineRadio1" value="1">Active
                                            <input class="form-check-input" type="radio" name="status"   id="inlineRadio1" value="0" >Inactive
                                        </c:if>
                                        <c:if test="${seller.status eq 0}">
                                            <input class="form-check-input" type="radio" name="status"  id="inlineRadio1" value="1">Active
                                            <input class="form-check-input" type="radio" name="status" checked=""  id="inlineRadio1" value="0" >Inactive
                                        </c:if>
                                        <input class="ml-3" type="submit" value="Confirm"/>
                                    </div>
                                </form>
                                <%}%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <%@include file="/footer.jsp" %>
</html>
