<%-- 
    Document   : header
    Created on : Jun 21, 2022, 11:55:08 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <header>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
                        <li><a style="color: #fff; font-size: 18px" href="SellerListController">View List Sellers</a></li>
                        <li><a style="color: #fff; font-size: 18px" href="StudentListController">view list students</a><li>
                        <li><a style="color: #fff; font-size: 18px" href="ClubListController">view list club</a><li> 
                        <li><a style="color: #fff; font-size: 18px" href="#">view list reports</a><li>
                        <!--<li><span class="far fa-user-circle ava mt-1"></span></li>-->   
                        <li class="dropdownProfile">
                            <a class="dropdown-toggle" style="color: #fff; text-decoration: none" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                ${sessionScope.username}
                            </a>
                            <div class="dropdown-menu" style="background-color: white" aria-labelledby="dropdownMenuButton">
                                <!--<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">-->
                                <a class="dropdown-item" style="color: red" href="#">Profile</a>
                                <a class="dropdown-item" style="color: red" href="login.jsp">Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
