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
        <div class="px-0 bg-white">
            <%@include file="/header.jsp" %> 
            <div class="d-md-flex">
                <ul id="navbar-items" class="p-3">
                    <%@include file="/sidebar.jsp" %>
                </ul>
                <form action="EditEvent" method="post">
                    <div class="container rounded bg-white mt-5 mb-5">
                        <div class="row">
                            <div>
                                <ul class="breadcrumb bg-white">
                                    <li><a href="home.jsp">Trang chủ</a></li>
                                    <li><a href="UpdateClubProfile">Danh sách sự kiện</a></li>                                    
                                </ul>
                            </div>
                            <a href="AddNewEvent">Thêm sự kiện</a>
                            Event Name: <input type="text" value="${eventName}" name="eventName" readonly=""> <br/>
                            <p>${errorEventName}</p>
                            Thời gian: <input type="text" value="${time}" name="time"> <br/>
                            Mô tả: <textarea name="des">${des}</textarea> <br/>
                            <input type="submit" value="Lưu">
                            <input type="reset" value="Đặt Lại">
                        </div>
                    </div>

                </form>

            </div>
            <%@include file="/footer.jsp" %>

        </div>

    </body>
</html>
