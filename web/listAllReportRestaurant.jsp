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
        <div class="clearfix">
            <ul class="pagination">
                <c:if test="${tag>1}">
                    <li class="page-item disabled"><a href="ListAllReportRestaurantController?index=${tag-1}">Previous</a></li>
                    </c:if>
                    <c:forEach begin="1" end="${endP}" var="i">
                    <li class="page-item ${tag==i?"active":""}"><a href="ListAllReportRestaurantController?index=${i}" class="page-link">${i}</a></li>
                    </c:forEach>
                    <c:if test="${tag<endP}">
                    <li class="page-item"><a href="ListAllReportRestaurantController?index=${tag+1}" class="page-link">Next</a></li>
                    </c:if>
            </ul>
        </div> 
    </body>
</html>
