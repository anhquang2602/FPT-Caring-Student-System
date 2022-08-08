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
        <c:choose>
            <c:when test="${stt.equals('1')}">
                <div class="position-fixed bottom-0 end-0 p-3" style="right: 10px; bottom: 10px; z-index: 11">
                    <div class="toast" data-autohide="true">
                        <div class="toast-header bg-success">
                            <strong class="mr-auto text-white"><h4>Report Restaurant Successfully</h4></strong>
                            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
                        </div>
                        <div class="toast-body">
                            Report Restaurant Successfully !
                        </div>
                    </div>
                </div>
            </c:when>
        </c:choose>
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
        <script>
                $(document).ready(function () {
                    $(".toast").toast({delay: 4000});
                    $(".toast").toast("show");

                });
            </script>
    </body>
</html>
