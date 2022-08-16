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
                        <form class="example  align-items-center" action="SellerListController" method="post"> 
                            <input type="text" placeholder="" name="key" value="${key}"> 
                            <button type="submit"><i class="fa fa-search"></i></button> 
                            <br/>
                            <div class="col-md-12">
                                <label class="labels" for="cars">Tỉnh, thành phố</label>
                                <select name="province" id="province" class="province form-select" onchange>
                                    <option value="">Chọn tỉnh, thành phố</option>
                                    <c:forEach items ="${listProvince}" var="o">
                                        <option value="${o.provinceID}" 

                                                <c:if test = "${province == o.provinceID }">
                                                    selected="selected"
                                                </c:if>    >${o.provinceName}</option>

                                    </c:forEach>
                                </select>
                            </div>
                            <div class="col-md-12"><label class="labels">Giới Tính</label></br>
                                <c:if test="${gender eq 3}">
                                    <strong class="ml-3 mr-1">Tất Cả</strong><input class="form-check-input" type="radio" name="gender" checked=""  id="inlineRadio2" value="3">
                                    <strong class="ml-3 mr-1">Nam</strong><input class="form-check-input" type="radio" name="gender"  id="inlineRadio1" value="1"> 
                                    <strong class="ml-3 mr-1">Nữ</strong><input class="form-check-input" type="radio" name="gender"  id="inlineRadio2" value="0">                
                                </c:if>
                                <c:if test="${gender eq 1}">
                                    <strong class="ml-3 mr-1">Tất Cả</strong><input class="form-check-input" type="radio" name="gender"  id="inlineRadio2" value="3"> 
                                    <strong class="ml-3 mr-1">Nam</strong><input class="form-check-input" type="radio" name="gender" checked=""  id="inlineRadio1" value="1"> 
                                    <strong class="ml-3 mr-1">Nữ</strong><input class="form-check-input" type="radio" name="gender"  id="inlineRadio2" value="0">               
                                </c:if>
                                <c:if test="${gender eq 0}">
                                    <strong class="ml-3 mr-1">Tất Cả</strong><input class="form-check-input" type="radio" name="gender"  id="inlineRadio2" value="3">
                                    <strong class="ml-3 mr-1">Nam</strong><input class="form-check-input" type="radio" name="gender"  id="inlineRadio1" value="1"> 
                                    <strong class="ml-3 mr-1">Nữ</strong><input class="form-check-input" type="radio" name="gender" checked=""  id="inlineRadio2" value="0">              
                                </c:if>
                            </div>
                            <div class="col-md-12"><label class="labels">Trạng Thái</label><br/>
                                <c:if test="${status eq 1}">
                                    <strong class="ml-3 mr-1">Tất Cả</strong><input class="form-check-input" type="radio" name="status" id="inlineRadio1" value="3" >
                                    <strong class="ml-3 mr-1">Hoạt Động</strong><input class="form-check-input" type="radio" name="status" checked="" id="inlineRadio1" value="1">
                                    <strong class="ml-3 mr-1">Không Hoạt Động</strong><input class="form-check-input" type="radio" name="status"   id="inlineRadio1" value="0" >
                                </c:if>
                                <c:if test="${status eq 0}">
                                    <strong class="ml-3 mr-1">Tất Cả</strong><input class="form-check-input" type="radio" name="status" id="inlineRadio1" value="3" >
                                    <strong class="ml-3 mr-1">Hoạt Động</strong><input class="form-check-input" type="radio" name="status"  id="inlineRadio1" value="1">
                                    <strong class="ml-3 mr-1">Không Hoạt Động</strong><input class="form-check-input" type="radio" name="status" checked=""  id="inlineRadio1" value="0" >
                                </c:if>
                                <c:if test="${status eq 3}">
                                    <strong class="ml-3 mr-1">Tất Cả</strong><input class="form-check-input" type="radio" name="status" checked=""  id="inlineRadio1" value="3" >
                                    <strong class="ml-3 mr-1">Hoạt Động</strong><input class="form-check-input" type="radio" name="status"  id="inlineRadio1" value="1">
                                    <strong class="ml-3 mr-1">Không Hoạt Động</strong><input class="form-check-input" type="radio" name="status"  id="inlineRadio1" value="0" >
                                </c:if>
                            </div>
                            <button type="submit">Lọc</button> 
                            <!--                            <div class="col-md-12">
                                                            <label class="labels" for="cars">Quận, phường</label>
                                                            <select name="district"  id ="district" class="district form-select">
                                                                <option value="">Tất Cả</option>
                            <c:forEach items ="${listDistrict}" var="o">
                                <option value="${o.districtID}" 
                                <c:if test = "${admin.districtID == o.districtID }">
                                    selected="selected"
                                </c:if>    >${o.districtName}</option>
                            </c:forEach>
                        </select>
                    </div>-->
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
                                                <li><a>Danh sách Chủ Kinh Doanh</a></li>
                                            </ul>
                                        </div>
                                        ${listSize}
                                        <div class="card card-table">
                                            <div class="card-body">
                                                <div class="table-responsive">
                                                    <table class="table table-hover table-center datatable" id="seller">
                                                        <thead>
                                                            <tr>
                                                                <th>ID Chủ Kinh Doanh</th>
                                                                <th>Tên Chủ Kinh Doanh</th>
                                                                <th>Tuổi</th>
                                                                <th>Giới Tính</th>
                                                                <th>Số Điện Thoại</th>
                                                                <th>Email</th>
                                                                <th class="text-center">Trạng Thái</th>
                                                                <th>Xem Hồ Sơ</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach items="${listSeller}" var="seller">
                                                                <tr>
                                                                    <td>${seller.sellerID}</td>
                                                                    <td>${seller.firstName} ${seller.lastName}</td>
                                                                    <td>${seller.age}</td>
                                                                    <td>
                                                                        <c:if test="${seller.gender==1}">Nam</c:if>
                                                                        <c:if test="${seller.gender==0}">Nữ</c:if>
                                                                        </td>
                                                                        <td>0${seller.phone}</td>
                                                                    <td>${seller.email}</td>
                                                                    <td class="text-center">
                                                                        <c:if test="${seller.status==1}">
                                                                            <div class="actions">
                                                                                <a class="btn btn-sm bg-purple-light mr-2">
                                                                                    <i class="fas fa-check-square"></i>
                                                                                </a>
                                                                            </div>
                                                                        </c:if>
                                                                        <c:if test="${seller.status==0}">
                                                                            <div class="actions">
                                                                                <a class="btn btn-sm bg-default-light mr-2">
                                                                                    <i class="fas fa-square"></i>
                                                                                </a>
                                                                            </div>
                                                                        </c:if>
                                                                    </td>
                                                                    <td>
                                                                        <a href="ViewSellerController?id=${seller.sellerID}" style="text-decoration: none">Chi Tiết</a>
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
    <!--    <script src="validator/Validator.js"></script>
    -->        <script language="javascript">

        var gender = document.getElementById('genderlable').innerHTML;

        if (gender == 1) {
            document.getElementById('inlineRadio1').setAttribute('checked', true);
        } else
        {
            document.getElementById('inlineRadio2').setAttribute('checked', true);
        }


        // Hàm xử lý khi thẻ select thay đổi giá trị được chọn
        // obj là tham số truyền vào và cũng chính là thẻ select

                    
                   
    </script><!--
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
    <script>
        $(document).on('change', '.province', function () {
            var province = document.getElementById("province").value;
            $('#district').empty();


            $.ajax({
                type: "GET",

                url: "/Test_1/FindDistrictToSearch",
                data: {
                    province: province,
                },
                headers: {
                    Accept: "application/json; charset=utf-8",
                    contentType: "application/json; charset=utf-8"
                },

                success: function (data) {

                    data.forEach(function (a) {
                        $("#district").append('<option value="' + a.districtID + '">' + a.districtName + '</option>');

                    });
                },
                error: function (e) {
                    console.log("ERROR: ", e);
                }
            });

        });
    </script>-->
</html>


