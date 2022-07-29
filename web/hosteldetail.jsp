<%-- 
    Document   : hosteldetail
    Created on : Jul 17, 2022, 7:05:42 PM
    Author     : nguye
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/pagingStyle.css">
        <link rel="stylesheet" href="css/hostelStyle.css">
    </head>
    <body class="bg-white">
        <div class="px-0">
            <%@include file="/header.jsp" %> 
            <div class="d-md-flex">
                <ul id="navbar-items" class="p-3">
                    <%@include file="/sidebar.jsp" %>
                </ul>
                <div class="container rounded bg-white mt-5 mb-5">
                    <div>
                        <ul class="breadcrumb bg-white">
                            <li><a href="home.jsp">Home</a></li>
                            <li><a href="listallhostels">List All Hostels</a></li>
                            <li><a>Hostel Detail</a></li>
                        </ul>
                    </div>
                    <div class="row">
                        <div class="col-md-4 mt-5">
                            <div class="d-flex flex-column align-items-center text-center">
                                <form>
                                    <div class="form-group row"> 
                                        <div class="col mt-5 thumbnail">
                                            <img src="https://noithatnhadepviet.vn/upload/elfinder/h%C3%ACnh%20thi%E1%BA%BFt%20k%E1%BA%BF/hinh%20support%205/2-thiet-ke-nha-tro-12m2.jpg" class="form-control" style="padding: 0px" alt="">
                                        </div>
                                        <div class="col mt-5 thumbnail">
                                            <img src="https://noithatnhadepviet.vn/upload/elfinder/h%C3%ACnh%20thi%E1%BA%BFt%20k%E1%BA%BF/hinh%20support%205/2-thiet-ke-nha-tro-12m2.jpg" class="form-control" style="padding: 0px" alt="">
                                        </div>
                                        <div class="col mt-5 thumbnail">
                                            <img src="https://noithatnhadepviet.vn/upload/elfinder/h%C3%ACnh%20thi%E1%BA%BFt%20k%E1%BA%BF/hinh%20support%205/2-thiet-ke-nha-tro-12m2.jpg" class="form-control" style="padding: 0px" alt="">
                                        </div>
                                    </div>
                                    <div class="form-group row"> 
                                        <div class="col mt-5 thumbnail">
                                            <img src="https://noithatnhadepviet.vn/upload/elfinder/h%C3%ACnh%20thi%E1%BA%BFt%20k%E1%BA%BF/hinh%20support%205/2-thiet-ke-nha-tro-12m2.jpg" class="form-control" style="padding: 0px" alt="">
                                        </div>
                                        <div class="col mt-5 thumbnail">
                                            <img src="https://noithatnhadepviet.vn/upload/elfinder/h%C3%ACnh%20thi%E1%BA%BFt%20k%E1%BA%BF/hinh%20support%205/2-thiet-ke-nha-tro-12m2.jpg" class="form-control" style="padding: 0px" alt="">
                                        </div>
                                        <div class="col mt-5 thumbnail">
                                            <img src="https://noithatnhadepviet.vn/upload/elfinder/h%C3%ACnh%20thi%E1%BA%BFt%20k%E1%BA%BF/hinh%20support%205/2-thiet-ke-nha-tro-12m2.jpg" class="form-control" style="padding: 0px" alt="">
                                        </div>
                                    </div>
                                </form>
                                <span class="font-weight-bold labels mt-5" ><label class="labels">Nhà trọ:</label> ${hosteldetail.hostelName}</span>
                                <span class="font-weight-bold labels"><label class="labels">Chủ trọ:</label> ${hosteldetail.sellerName}</span>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="p-3 py-5">
                                <div class="row mt-3">
                                    <form class="form" method="POST" id="updateForm" action="edithostel"  name="edithostelForm" onsubmit="return validateEditHostel()">
                                        <div class="col-md-12">
                                            <label class="labels">Số phòng</label>
                                            <input type="text" class="form-control" value="${hosteldetail.totalRoom}" readonly="">
                                        </div>
                                        <div class="col-md-12">
                                            <label class="labels">Tình trạng phòng</label>
                                            <input type="radio" id="collection1" name="status" 
                                                   <c:if test = "${editHostel.status == true}">
                                                       checked
                                                   </c:if> value="yes"> 
                                            <label for="collection1">
                                                <div class="left_box">
                                                    <div class="left_box_collection"> 
                                                        <div class="radio_button"> <span></span>
                                                            <h4>Còn phòng</h4>
                                                        </div>                               
                                                    </div>
                                                </div>
                                            </label> 
                                            <input type="radio" id="collection2" name="status" 
                                                   <c:if test = "${editHostel.status == false}">
                                                       checked
                                                   </c:if>  name="status" value="no"> 
                                            <label for="collection2">
                                                <div class="left_box">
                                                    <div class="left_box_collection">
                                                        <div class="radio_button"> <span></span>
                                                            <h4>Hết phòng</h4>
                                                        </div>
                                                    </div>                                    
                                                </div>
                                            </label>
                                        </div>
                                        <div class="col-md-12">
                                            <label class="labels">Số tầng</label>
                                            <input type="text" class="form-control" value="${hosteldetail.floor}" readonly="">
                                        </div>
                                        <div class="col-md-12">
                                            <label class="labels">Tỉnh, Thành phố</label>
                                            <input type="text" class="form-control" value="${hosteldetail.provinceNamẹ}" readonly="">
                                        </div>
                                        <div class="col-md-12">
                                            <label class="labels">Quận, Huyện</label>
                                            <input type="text" class="form-control" value="${hosteldetail.districtName}" readonly="">
                                        </div>
                                        <div class="col-md-12">
                                            <label class="labels">Địa chỉ</label>
                                            <input type="text" class="form-control" value="${hosteldetail.address}" readonly="">
                                        </div>
                                        <div class="col-md-12">
                                            <label class="labels">Giá thuê</label>
                                            <input type="text" class="form-control" value="${hosteldetail.cost}" readonly="">
                                        </div>
                                        <div class="col-md-12">
                                            <label class="labels">Khoảng cách</label>
                                            <input type="text" class="form-control" value="${hosteldetail.distance}" readonly="">
                                        </div>
                                        <div class="col-md-12">
                                            <label class="labels">Mô tả</label>
                                            <textarea class="form-control" readonly="" rows="15">${hosteldetail.description}</textarea>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--                        <p>•Trạng thái:</p>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio"  id="flexRadioDefault1" name="status" 
        <c:if test = "${hosteldetail.status == true}">
            checked
        </c:if> value="yes">
    
    
    <label class="form-check-label" for="flexRadioDefault1">
     Còn phòng
    </label>
    </div><br>
    <div class="form-check">
    <input class="form-check-input" type="radio"  id="flexRadioDefault2" <c:if test = "${hosteldetail.status == false}">
        checked
        </c:if>  name="status" value="no">
    <label class="form-check-label" for="flexRadioDefault2">
        Hết phòng
    </label>
    </div><br>-->


        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    </body>
    <%@include file="/footer.jsp" %>
</html>
