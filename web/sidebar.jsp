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
        <link rel="stylesheet" href="css/viewListStyle.css">
    </head>
    <body>
        <div class="main-sb">
            <ul>
                <%if (Integer.parseInt(request.getSession().getAttribute("role").toString()) == 1) {%>
                <li> 
                    <span class="fas fa-th-list"></span> 
                    <a class="fs12 ps-3" style="" href="ListAllRestaurantController">NHÀ ĂN</a>  
                </li>
                <li> 
                    <span class="fas fa-chart-line"></span> 
                    <a class="fs12 ps-3" style="text-decoration: none; color: rgb(238, 77, 45)" href="FilterHostelController">NHÀ TRỌ</a> 
                </li>
                <li> 
                    <span class="fas fa-chart-line"></span> 
                    <a class="fs12 ps-3" style="text-decoration: none; color: rgb(238, 77, 45)" href="ClubListController">CÂU LẠC BỘ</a> 
                <li> 
                    <span class="fas fa-suitcase-rolling"></span> 
                    <a class="fs12 ps-3" style="text-decoration: none; color: rgb(238, 77, 45)" href="BusPagingServlet">XE BUS</a> 
                </li>
                <li> 
                    <span class="fas fa-calendar-alt"></span> 
                    <a class="fs12 ps-3" style="text-decoration: none; color: rgb(238, 77, 45)" href="department">PHÒNG BAN</a> 
                </li>

                <%} else if (Integer.parseInt(request.getSession().getAttribute("role").toString()) == 3) {%>
                <li> 
                    <span class="fas fa-th-list"></span> 
                    <a class="fs12 ps-3" style="text-decoration: none; color: rgb(238, 77, 45)" href="ListAllRestaurantController">NHÀ ĂN</a>  
                </li>
                <li> 
                    <span class="fas fa-chart-line"></span> 
                    <a class="fs12 ps-3" style="text-decoration: none; color: rgb(238, 77, 45)" href="listallhostels">NHÀ TRỌ</a> 
                </li>
                <%} else if (Integer.parseInt(request.getSession().getAttribute("role").toString()) == 2) {%>
                <li> 
                    <span class="fas fa-chart-line"></span> 
                    <a class="fs12 ps-3" style="text-decoration: none; color: rgb(238, 77, 45)" href="ClubListController">CÂU LẠC BỘ</a> 
                <li> 
                    <span class="fas fa-suitcase-rolling"></span> 
                    <a class="fs12 ps-3" style="text-decoration: none; color: rgb(238, 77, 45)" href="BusPagingServlet">XE BUS</a> 
                </li>
                <li> 
                    <span class="fas fa-calendar-alt"></span> 
                    <a class="fs12 ps-3" style="text-decoration: none; color: rgb(238, 77, 45)" href="department">PHÒNG BAN</a> 
                </li>
                <%}%>
            </ul>
        </div>
    </body>
</html>
