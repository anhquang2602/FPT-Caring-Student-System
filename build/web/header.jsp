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
        <div class="d-flex" style="background-color: rgb(238, 77, 45)">
            <div class="d-flex align-items-center" style="width: 20%"> 
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-items" aria-controls="navbarSupportedContent" aria-expanded="true" aria-label="Toggle navigation"> 
                    <span class="fas fa-bars"></span> 
                </button> 
                <a class="text-decoration-none fs14 ps-2" href="home.jsp">FCS<span class="fs13 pe-2">.com</span></a> 
            </div>
            <div id="topnavbar">
                <div class="topnav" style="width: 100%;  background-color: rgb(238, 77, 45)">
                    <ul class="d-flex my-2">
                        <%if (Integer.parseInt(request.getSession().getAttribute("role").toString()) == 1) {%>
                        <a style="color: #fff; margin-left: 50px" href="SellerListController">View List Sellers</a>  
                        <a style="color: #fff; margin-left: 50px" href="StudentListController">view list students</a> 
                        <a style="color: #fff; margin-left: 50px" href="ClubListController">view list club</a> 
                        <a style="color: #fff; margin-left: 50px" href="#contact">view list reports</a>
                        <%} else if (Integer.parseInt(request.getSession().getAttribute("role").toString()) == 2) {%>
                        <a style="color: #fff; margin-left: 50px" href="hostellist">My Hostel</a>  
                        <a style="color: #fff; margin-left: 50px" href="#">My Restaurant</a>                           
                        <%}%>
                        <div class="dropdownProfile" style="margin-left: 200px">    
                            <button class="dropdown-toggle mt-2" style="background-color: rgb(238, 77, 45); color: white; text-decoration: none; border: none; font-size: 20px" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                ${sessionScope.username}
                            </button>
                            <div class="dropdown-menu" style="background-color: white; left: 0;box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); z-index: 999" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" style="color: red" href="UpdateSellerProfile">My Profile</a>
                                <a class="dropdown-item" style="color: red" href="ChangePasswordServlet">Change Password</a>
                                <a class="dropdown-item" style="color: red" href="LogoutServlet">Log out</a>
                            </div>
                        </div>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
