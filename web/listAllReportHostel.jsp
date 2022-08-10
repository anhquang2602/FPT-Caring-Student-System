<%-- 
    Document   : listAllReportHostel
    Created on : Aug 8, 2022, 3:12:32 AM
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
       <h1>List All Report Of Hostel</h1>
        <table border="1">
            <tr>
                <th>Tên Trọ</th>
                <th>Spam</th>
                <th>Violent</th>
                <th>Offensive</th>
                <th>Truthless</th>
                <th>Action</th>
            </tr>
            <c:forEach items="${listReportHostel}" var="report">
                <tr>
                    <td>${report.hostelName}</td>
                    <td>${report.spam}</td>
                    <td>${report.violent}</td>
                    <td>${report.offensive}</td>
                    <td>${report.truthless}</td>
                    <td>   
                        <a href="#">Xóa bài đăng</a>
                        <a href="detailhostel?id=${report.hostelID}">View post</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
