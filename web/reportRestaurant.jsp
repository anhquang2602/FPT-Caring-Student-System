<%-- 
    Document   : reportRestaurant
    Created on : Aug 5, 2022, 10:27:59 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ReportRestaurantController" method="post" >
            <h1>Báo cáo bài viết</h1>
            <br>
            <label>Lí do bị báo cáo bài viết :</label>
            <br>
            <input type="text" name="id" value="${restaurant.restaurantID}">
            <br>
            <input type="checkbox" name="spam" value="1">Spam
            <br>
            <input type="checkbox" name="offensive" value="1">Offensive
            <br>
            <input type="checkbox" name="violent" value="1">Violent
            <br>
            <input type="checkbox" name="truthless" value="1">Truthless
            <br>
            <jsp:useBean  id="date"  class="java.util.Date" />
            Current year is: <fmt:formatDate  value="${date}" pattern="yyyy-mm-dd" />
            <br>
            <input class="mt-4 btn btn-dark d-flex justify-content-center align-items-center" type="submit" value="Báo Cáo Bài Viết"/>
        </form>
    </body>
</html>
