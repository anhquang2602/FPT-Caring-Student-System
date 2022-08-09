<%-- 
    Document   : sidebar
    Created on : Jul 10, 2022, 11:54:58 AM
    Author     : asus
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <script src="jquery/jquery.js"></script>
        <script type="text/javascript" src='js/bootstrap.min.js'></script>
        <link rel="stylesheet" href="css/sidebar.css">
    </head>
    <sidebar>
        <div style="background-color: #f2f2f2">
            <%if (Integer.parseInt(request.getSession().getAttribute("role").toString()) == 1) {%>
            <li> <span class="fas fa-th-list"></span> <a class="fs12 ps-3" style="text-decoration: none; color: rgb(238, 77, 45)" href="ListAllRestaurantController">Nhà ăn</a>  </li>
            <li> <span class="fas fa-chart-line"></span> <a class="fs12 ps-3" style="text-decoration: none; color: rgb(238, 77, 45)" href="listallhostels">Nhà trọ</a> </li>
            <li> <span class="fas fa-suitcase-rolling"></span> <a class="fs12 ps-3" style="text-decoration: none; color: rgb(238, 77, 45)" href="BusPagingServlet">Xe Bus</a> </li>
            <li> <span class="fas fa-calendar-alt"></span> <a class="fs12 ps-3" style="text-decoration: none; color: rgb(238, 77, 45)" href="department">Phòng Ban</a> </li>
                <%} else if (Integer.parseInt(request.getSession().getAttribute("role").toString()) == 3) {%>

            <li> <span class="fas fa-th-list"></span> <a class="fs12 ps-3" style="text-decoration: none; color: rgb(238, 77, 45)" href="ListAllRestaurantController">Nhà ăn</a>  </li>

            <li> <span class="fas fa-chart-line"></span> <a class="fs12 ps-3" style="text-decoration: none; color: rgb(238, 77, 45)" href="listallhostels">Nhà trọ</a> </li>
                <%} else if (Integer.parseInt(request.getSession().getAttribute("role").toString()) == 2) {%>
                <%}%>
        </div>
    </sidebar>
</html>
