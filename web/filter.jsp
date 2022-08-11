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
            <div style="margin-top:  20px;margin-bottom:   20px">
                <form action="FilterHostelController" method="post">
                    Hostel <input type="text" name="keywordHostel" value="${keywordHostel}" >
                    Bộ lọc tìm kiếm <br/>

                    Giá: <input type="text" name="under" value="${under}"> - <input type="text" name="upper" value="${upper}"> <br/>
                    <mark>${costReport}</mark>
                    <br/>
                    Khoảng cách: <select name="distance">
                        <option value="6" <c:if test = "${distance == 10 }">
                                selected="selected"
                            </c:if>> Tất cả</option>
                        <option value="1" <c:if test = "${distance == 1 }">
                                selected="selected"
                            </c:if> > < 1km</option>
                        <option value="2"<c:if test = "${distance == 2 }">
                                selected="selected"
                            </c:if>> < 2km</option>
                        <option value="3" <c:if test = "${distance == 3 }">
                                selected="selected"
                            </c:if>> < 3km</option>
                        <option value="5" <c:if test = "${distance == 5 }">
                                selected="selected"
                            </c:if>> < 5km</option>
                    </select>
                    <br/>
                    <br/>
                    Xếp hạng: <select name="star">
                        <option value="6" <c:if test = "${star == 6 }">
                                selected="selected"
                            </c:if>> Tất cả</option>
                        <option value="1" <c:if test = "${star == 1 }">
                                selected="selected"
                            </c:if>> 1</option>
                        <option value="2" <c:if test = "${star == 2 }">
                                selected="selected"
                            </c:if>> 2</option>
                        <option value="3" <c:if test = "${star == 3 }">
                                selected="selected"
                            </c:if>> 3</option>
                        <option value="4" <c:if test = "${star == 4 }">
                                selected="selected"
                            </c:if>> 4</option>
                        <option value="5" <c:if test = "${star == 5 }">
                                selected="selected"
                            </c:if>> 5</option>
                    </select>
                    <<input type="submit" value="Tìm kiếm"> 
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
                <a href="FilterHostelController?index=${i}&costUnder=${under}&costUpper=${upper}&distance=${distance}">${i}</a> 
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
