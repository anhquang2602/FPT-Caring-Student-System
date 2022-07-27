<%-- 
    Document   : hosteldetail
    Created on : Jul 17, 2022, 7:05:42 PM
    Author     : nguye
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Nhà trọ ${hosteldetail.hostelName}</h3>
        <p>•Chủ trọ: ${hosteldetail.sellerName}</p>
        <p>•Số phòng: ${hosteldetail.totalRoom}</p>
        
        <p>•Trạng thái:</p>
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
        </div><br>
        
        <p>•Số tầng: ${hosteldetail.floor}</p>
        <p>•Tỉnh, Thành phố: ${hosteldetail.provinceNamẹ}</p>
        <p>•Quận, Huyện: ${hosteldetail.districtName}</p>
        <p>•Địa chỉ: ${hosteldetail.address}</p>
        <p>•Giá thuê: ${hosteldetail.cost}</p>
        <p>•Khoảng cách: ${hosteldetail.distance}</p>
        <p>•Mô tả: ${hosteldetail.description}</p>
        <img src="${hosteldetail.img1}">
        <img src="${hosteldetail.img2}">
        <img src="${hosteldetail.img3}">
        <img src="${hosteldetail.img4}">
        <img src="${hosteldetail.img5}">
        <img src="${hosteldetail.img6}">
        


        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    </body>
</html>
