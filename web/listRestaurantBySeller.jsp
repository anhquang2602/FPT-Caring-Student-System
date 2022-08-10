<%-- 
    Document   : listRestaurantBySeller
    Created on : Jul 26, 2022, 11:03:49 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/listRestaurantBySellerStyle.css">
    </head>
    <body>

        <h2>My restaurant</h2>
<!--                <form action="AddRestaurantController" >
                    <input type="submit" value="Thêm bài biết">
                </form>
                <table>
        <c:forEach items="${listRestaurant}" var="restaurant" >
            <tr>
                <td>
            ${restaurant.restaurantName}
        </td>

        <td>
            <div class="dropdown">
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="EditRestaurantController?id=${restaurant.restaurantID}">Edit Post</a>
                    <a class="dropdown-item" href="DeleteRestaurantController?id=${restaurant.restaurantID}">Delete Post</a>
                </div>
            </div>
        </td>
    </tr>
        </c:forEach>
    </table>-->

        <div class="container">
            <div class="accordion d-flex justify-content-center align-items-center height" id="accordionExample">
                <div class="row">
                    <div class="col-md-6">
                        <div class="p-3">
                            <ul class="testimonial-list">
                                <c:forEach items="${listRestaurant}" var="restaurant" >
                                    <li>
                                        <div class="card p-3" data-toggle="collapse" data-target="#collapse${restaurant.restaurantID}" aria-expanded="true" aria-controls="${restaurant.restaurantID}">
                                            <div class="d-flex flex-row align-items-center">
                                                <img src="https://i.imgur.com/FFStwMz.jpeg" width="50" class="rounded-circle">
                                                <div class="d-flex flex-column ml-2">
                                                    <span class="font-weight-normal">${restaurant.restaurantName}</span>

                                                </div>
                                                
                                            </div>

                                        </div>   
                                    </li>
                                </c:forEach>                               
                            </ul>
                        </div>
                    </div>


                    <div class="col-md-6">
                        <div class="p-3 testimonials-margin">
                            <c:forEach items="${listRestaurant}" var="restaurant" >
                                <div id="collapse${restaurant.restaurantID}" class="collapse" aria-expanded="true" data-parent="#accordionExample" >
                                    <a class="dropdown-item" href="EditRestaurantController?id=${restaurant.restaurantID}">Edit Post</a>
                                </div>  
                            </c:forEach>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </body>
</html>
