<%-- 
    Document   : header
    Created on : Jun 21, 2022, 11:55:08 PM
    Author     : asus
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <header>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="css/viewListStyle.css">
    </header>
    <body>
        <div class="d-flex main">
            <div class="d-flex align-items-center left_box"> 
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-items" aria-controls="navbarSupportedContent" aria-expanded="true" aria-label="Toggle navigation"> 
                    <span class="fas fa-bars"></span> 
                </button> 
                <a class="text-decoration-none fs14 ps-2" href="home.jsp">FCS<span class="fs13 pe-2">.com</span></a> 
            </div>
            <div class="topnav">
                <div class="d-flex">
                    <%if (Integer.parseInt(request.getSession().getAttribute("role").toString()) == 1) {%>
                    <a class="col-md-2"  href="SellerListController">CHỦ KINH DOANH</a>  
                    <a class="col-md-2"  href="StudentListController">HỌC SINH</a> 
                    <a class="col-md-2"  href="ListAllReportHostelController">BÁO CÁO NHÀ TRỌ</a>
                    <a class="col-sm-2"  href="ListAllReportRestaurantController">BÁO CÁO NHÀ ĂN</a>

                    <%} else if (Integer.parseInt(request.getSession().getAttribute("role").toString()) == 3) {%>
                    <a class="col-md-2"></a>
                    <a class="col-md-3" href="hostellist">NHÀ TRỌ CỦA TÔI</a>  
                    <a class="col-md-3" href="ListRestaurantBySeller">NHÀ ĂN CỦA TÔI</a>  

                    <%} else if (Integer.parseInt(request.getSession().getAttribute("role").toString()) == 2) {%>
                    <a class="col-md-2"></a>
                    <a class="col-md-3" href="ListAllRestaurantController">NHÀ ĂN</a>  
                    <a class="col-md-3" href="listallhostels">NHÀ TRỌ</a> 
                    <%}%>
                    <div class="col-md-1"></div>
                    <div class="dropdownProfile col-md-2 ml-5">    
                        <button class="dropdown-toggle mt-3" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            ${sessionScope.username}
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="UpdateSellerProfile">HỒ SƠ CỦA TÔI</a>
                            <a class="dropdown-item" href="ChangePasswordServlet">ĐỔI MẬT KHẨU</a>
                            <a class="dropdown-item" href="LogoutServlet">ĐĂNG XUẤT</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>