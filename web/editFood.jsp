<%-- 
    Document   : editFood
    Created on : Jul 29, 2022, 9:42:27 AM
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
        <form action="EditFoodController" method="post">
            <h1>Edit Food</h1>
            <input type="text" name="id" value="${food.foodID}" hidden>
            
            <label>Tên món ăn: </label>
            <input type="text" name="foodName" value="${food.foodName}">
            <br>
            <label>Giá : </label>
            <input type="text" name="costFood" value="${food.cost}">
            <br>
            <label>Ghi chú :</label>
            <input type="text" name="desFood" value="${food.descriptions}">
            <br>
            <input class="mt-4 btn btn-dark d-flex justify-content-center align-items-center" type="submit" value="Chỉnh sửa món ăn"/>
        </form>
    </body>
</html>
