<%-- 
    Document   : listRestaurantBySeller
    Created on : Jul 26, 2022, 11:03:49 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>

    </head>
    <body>

        <h1>List Restaurant of me</h1>
        <form action="AddRestaurantController" >
            <input type="submit" value="Thêm bài biết">
        </form>
        <table>
            <c:forEach items="${listRestaurant}" var="restaurant" >
                <tr>
                    <td>
                        <a class = "long" href="">${restaurant.restaurantName}</a>
                    </td>

                    <td>
                        <div class="dropdown">
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="EditRestaurantController?id=${restaurant.restaurantID}">Edit Post</a>
                                <a class="dropdown-item" href="DeleteRestaurantController?id=${restaurant.restaurantID}">Delete Post</a>
                            </div>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>
