<%-- 
    Document   : reportRestaurant
    Created on : Aug 14, 2022, 3:55:23 PM
    Author     : dung
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css">
<script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/reportStyle.css">
    </head>
    <body>
        <form action="ReportRestaurantController" method="post" >

            <!--            <div class="min-h-screen flex justify-center items-center bg-indigo-300 ">
                            <div class="h-auto w-96 font-sans px-4 rounded-lg bg-white ">-->
            <div class="main">

                <div class="flex justify-center items-center mt-3">
                    <span class="h-20 w-20"><img src="https://imgur.com/4Y88KnF.gif"></span>
                </div>

                <p class="text-center mt-4 text-2xl font-semibold">Báo cáo nhà hàng </p>
                <p class="text-center mt-1 text-sm text-gray-600 font-semibold">Nếu bạn nhận thấy có vấn đề, đừng chần chừ mà hãy báo cáo ngay cho quản trị viên.</p>
                <hr class="mt-3">
                <p class="text-lg mt-3 text-red-600 font-semibold">Lí do bị báo cáo của nhà hàng</p>
                <div class="flex flex-col mt-3">
                    <input type="text" name="id" value="${restaurant.restaurantID}" hidden>
                    <div>
                        <input class="cursor-pointer" id="r1" type="checkbox" name="spam" value="1" > 
                        <label for="r1">Spam</label>
                    </div>
                    <div>
                        <input class="cursor-pointer" id="r2" type="checkbox" name="offensive" value="1" >
                        <label for="r2">Hình Ảnh Không Phù Hợp</label>
                    </div>
                    <div>
                        <input class="cursor-pointer" id="r3" type="checkbox" name="violent" value="1" >
                        <label for="r3">Ngôn Từ Đả Kích</label>
                    </div>
                    <div>
                        <input class="cursor-pointer" id="r4" type="checkbox" name="truthless" value="1" >
                        <label for="r4">Thông Tin Sai Sự Thật</label>
                    </div>

                </div>
                <hr class="mt-3">
                <br>    
                <p class="text-sm font-semibold"><jsp:useBean id="date" class="java.util.Date" />
                    Thời gian báo cáo: </p>
                <p class="text-sm font-semibold" ><fmt:formatDate  value="${date}" pattern="yyyy-MM-dd" /></p>            
                <button class="continue mt-4 mb-10 h-12 w-full bg-green-400 rounded-lg hover:bg-green-700 text-white text-sm cursor-pointer transition-all" value="Báo Cáo nhà hàng" >Báo cáo nhà hàng</button>

            </div>
            <!--                </div>
                        </div>-->



        </form>
    </body>
    <script src="validator/reportProblem.js"></script>
</html>
