<%-- 
    Document   : search
    Created on : Jul 13, 2022, 11:38:18 PM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div style="margin-bottom: 20px">
            <form action="SearchController" method="post">
                Hostel <input type="text" name="keywordHostel" value="${keywordHostel}" > 
                <input type="submit" value="Tìm Kiếm">
            </form>

            <div style="margin-top:  20px;margin-bottom:   20px">
                <form action="FilterHostelController" method="post">
                    ${keywordHostel}
                    Bộ lọc tìm kiếm <br/>

                    Giá: <input type="text" name="under" value="${under}"> - <input type="text" name="upper" value="${upper}"> <br/>
                    <mark>${costReport}</mark>
                    <br/>
                    Khoảng cách: <select name="distance">
                        <option value="1"> < 1km</option>
                        <option value="2"> < 2km</option>
                        <option value="3"> < 3km</option>
                        <option value="5"> < 5km</option>
                        <option value="10"> < 10km</option>
                    </select>
                    <br/>
                    <input type="submit" value="Áp Dụng"> 
                </form>

            </div>

            <div id="listHostel">

                <c:forEach items="${hostels}" var="hostel">
                    <div>
                        <img src="img/DH-FPT.jpg"> <br/>
                        Tên nhà trọ: ${hostel.hostelName} <br/>
                        Tình trạng: 
                        <c:if test="${hostel.status eq true}">
                            Còn Phòng
                        </c:if>
                        <c:if test="${hostel.status eq false}">
                            Hết Phòng
                        </c:if>
                        <br/>
                        Địa chỉ: ${hostel.address}, ${hostel.districtName}, ${hostel.provinceNamẹ}, ${hostel.countryName} <br/>
                        Giá: ${hostel.cost} <br/>
                        Khoảng cách: ${hostel.distance}
                    </div>
                </c:forEach>
            </div>

            <c:forEach begin="1" end="${totalPage}" var="i">
                <a href="SearchController?index=${i}&keywordHostel=${keywordHostel}">${i}</a> 
            </c:forEach>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        </div>


        <div>
            Restaurant <input type="text" name="keywordRestaurant"> <br/>

        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
