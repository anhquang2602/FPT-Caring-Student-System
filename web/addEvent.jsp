<%-- 
    Document   : listAllEventOfClub
    Created on : Aug 13, 2022, 4:08:32 PM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
                <form action="AddNewEvent" enctype="multipart/form-data"  method="post" >
                    Ảnh sự kiện: 
                    <img class="rounded-circle mt-5" width="150px" src="${eventImage}" id="output">
                    <input style="padding-left: 80px" type="file" name="eventImage" accept="image/*" onchange="loadFile(event)" class="form-control-file" id="eventImg"><br/>
                    Tên sự kiện: <input type="text" value="${eventName}" name="eventName"> <br/>
                    <p>${errorEventName}</p>
                    Thời gian:  <input type="text" value="${time}" name="time"> <br/>
                    Mô tả: <textarea name="des" >${des}</textarea> <br/>
                    <input type="submit" value="Tạo">
                </form>
            </div>
            <%@include file="/footer.jsp" %>

        </div>
    </body>
    <script>
                                        var loadFile = function (event) {
                                            var output = document.getElementById('output');
                                            output.src = URL.createObjectURL(event.target.files[0]);
                                            output.onload = function () {
                                                URL.revokeObjectURL(output.src) // free memory
                                            }
                                        };
</script>
</html>
