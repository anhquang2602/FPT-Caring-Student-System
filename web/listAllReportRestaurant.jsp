<%-- 
    Document   : listAllReport
    Created on : Aug 6, 2022, 1:39:34 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>List All Report Of Restaurant</h1>
        <table border="1">
            <tr>
                <th>Tên Nhà Hàng</th>
                <th>Spam</th>
                <th>Violent</th>
                <th>Offensive</th>
                <th>Truthless</th>
                <th>Action</th>
            </tr>
            <c:forEach items="${listReportRestaurant}" var="report">
                <tr>
                    <td>${report.restaurantName}</td>
                    <td>${report.spam}</td>
                    <td>${report.violent}</td>
                    <td>${report.offensive}</td>
                    <td>${report.truthless}</td>
                    <td>   
                        <a href="#">Xóa bài đăng</a>
                        <a href="RestaurantListController?id=${report.restaurantID}">View post</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        
    </body>
</html>
