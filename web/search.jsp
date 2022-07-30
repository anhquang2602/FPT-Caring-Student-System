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
                Hostel <input type="text" name="keywordHostel" value="${keywordHostel}"> 
                <input type="submit" value="Search"> 
                
                <div>
                    Giá: <br/>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" name="cost">
                        <label class="form-check-label" for="flexCheckDefault">
                            <1,000,000
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" name="cost">
                        <label class="form-check-label" for="flexCheckChecked">
                            1,000,000 - 2,000,000
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" name="cost">
                        <label class="form-check-label" for="flexCheckChecked">
                            2,000,000 - 3,000,000
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" name="cost">
                        <label class="form-check-label" for="flexCheckChecked">
                            3,000,000 - 5,000,000
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" name="cost">
                        <label class="form-check-label" for="flexCheckChecked">
                            > 5,000,000
                        </label>
                    </div>
                </div>
                <div>
                    Khoảng cách: <br/>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" name="distance">
                        <label class="form-check-label" for="flexCheckDefault">
                            < 1km
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" name="distance">
                        <label class="form-check-label" for="flexCheckChecked">
                            < 2km
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" name="distance">
                        <label class="form-check-label" for="flexCheckChecked">
                            < 3km
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" name="distance">
                        <label class="form-check-label" for="flexCheckChecked">
                            < 5km
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" name="distance">
                        <label class="form-check-label" for="flexCheckChecked">
                            > 5km
                        </label>
                    </div>
                </div>


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

                <c:forEach begin="1" end="${totalPage}" var="i">
                    <a href="#">${i}</a>
                </c:forEach>

            </form>
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
