<%-- 
    Document   : editEvent
    Created on : Aug 14, 2022, 8:58:19 PM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="EditEvent" method="get">
            Event Name: <input type="text" value="${eventName}"> <br/>
            Thời gian: <input type="text" value="${time}"> <br/>
            Mô tả: <input type="text" value="${des}"> <br/>
            <input type="submit" value="Lưu">
            <input type="reset" value="Đặt Lại">
        </form>
    </body>
</html>
