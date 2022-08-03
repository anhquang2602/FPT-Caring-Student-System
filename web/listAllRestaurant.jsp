<%-- 
    Document   : listAllRestaurant
    Created on : Jul 29, 2022, 12:43:52 AM
    Author     : DELL
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
        <h1>List All Restaurant</h1>
        <table>
            <c:forEach items="${listRestaurant}" var="restaurant">
                <tr>
                    <td>
                        <a class = "long" href="RestaurantListController?id=${restaurant.restaurantID}">${restaurant.restaurantName}</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
