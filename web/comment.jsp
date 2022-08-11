<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Nested Comment Indentation</title>
        <link rel="stylesheet" href="css/commentStyle.css" />
    </head>
    <body>

        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <html lang="en">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>


            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <title>Nested Comment Indentation</title>
            <link rel="stylesheet" href="css/commentStyle.css" />
            <style>




                * {
                    margin: 0;
                    padding: 0;
                    box-sizing: border-box;
                }
                body{
                    flex-direction: column;
                    font-family: Arial, Helvetica, san-serif;

                }
                .rating_heading{
                    animation: scale-up 1s ease;
                    font-weight:  bold;
                    color: orange;
                }
                @keyframes scale-up{
                    0%{
                        opacity: 0;
                        transform: scale(.5);
                    }
                    100%{
                        opacity: 1;
                        transform: scale(1);
                    }
                }

                .star_rating {
                    user-select: none;
                    /*                background-color: #e6e6e6;*/
                    padding: 1rem 2rem;
                    margin: 1rem;
                    border-radius: .3rem;
                    animation: slide-up 1s ease;
                    text-align: center;
                }
                @keyframes slide-up{
                    0%{
                        opacity: 0;
                        transform: translateY(50px);
                    }
                    100%{
                        opacity: 1;
                        transform: translateY(0px);
                    }
                }
                .star {
                    font-size: 3rem;
                    color: #ff9800;
                    background-color: unset;
                    border: none;
                    text-align: center;

                }
                .star:hover{
                    cursor: pointer;   
                }

            </style>
        </head>
        <body>



            <input id="hostelId" value="${hostelID}" hidden/>


            <div class="container mt-5">
                <div class="d-flex justify-content-center row">
                    <div class="col-md-8" style="min-width: 100%">
                        <div class="d-flex flex-column comment-section">

                            <div class="bg-light p-2">
                                <div class="d-flex flex-row align-items-start"><img class="rounded-circle" src="https://i.imgur.com/RpzrMR2.jpg" width="40"><textarea class="form-control ml-1 shadow-none textarea"></textarea></div>

                                <div class="mt-2 text-right"><div class="sold_stars ml-auto"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div><button class="btn btn-primary btn-sm shadow-none" type="button">Post comment</button><button class="btn btn-outline-primary btn-sm ml-1 shadow-none" type="button">Cancel</button></div>
                            </div>


                            <div class="bg-white p-2">
                                <div class="d-flex flex-row user-info"><img class="rounded-circle" src="https://i.imgur.com/RpzrMR2.jpg" width="40">
                                    <div class="d-flex flex-column justify-content-start ml-2"><span class="d-block font-weight-bold name">Marry Andrews</span><span class="date text-black-50">Shared publicly - Jan 2020</span></div>
                                </div>
                                <div class="sold_stars ml-auto"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>
                                <div class="mt-2">
                                    <p class="comment-text">Comment 1</p>
                                </div>


                            </div>

                            <div class="bg-white p-2">
                                <div class="d-flex flex-row user-info"><img class="rounded-circle" src="https://i.imgur.com/RpzrMR2.jpg" width="40">
                                    <div class="d-flex flex-column justify-content-start ml-2"><span class="d-block font-weight-bold name">Marry Andrews</span><span class="date text-black-50">Shared publicly - Jan 2020</span></div>
                                </div>
                                <div class="sold_stars ml-auto"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>
                                <div class="mt-2">
                                    <p class="comment-text">Comment 2</p>
                                </div>
                            </div>

                            <h3 class="rating_heading">ÄÃ¡nh giÃ¡ 5 sao</h3>
                            <div class ="star_rating">
                                <p style="font-weight:  bold">Cáº£m nháº­n cá»§a báº¡n vá» nhÃ  trá» nÃ y?</p>


                                <c:if test="${studentComment == null}">
                                    <button class="star" id="star1"  value="1">&#9734;</button>
                                    <button class="star" id="star2"  value="2">&#9734;</button>
                                    <button class="star" id="star3"  value="3">&#9734;</button>
                                    <button class="star" id="star4"  value="4">&#9734;</button>
                                    <button class="star" id="star5"  value="5">&#9734;</button>
                                    <p class="current_rating">0 trÃªn 5</p></div>
                                </c:if> 

                            <c:if test="${studentComment.starvoting == 1}">
                                <button class="star" id="star1"  value="1">&#9733;</button>
                                <button class="star" id="star2"  value="2">&#9734;</button>
                                <button class="star" id="star3"  value="3">&#9734;</button>
                                <button class="star" id="star4"  value="4">&#9734;</button>
                                <button class="star" id="star5"  value="5">&#9734;</button>
                                <p class="current_rating">1 trÃªn 5</p></div>
                            </c:if>   

                        <c:if test="${studentComment.starvoting  == 2}">
                            <button class="star" id="star1"  value="1">&#9733;</button>
                            <button class="star" id="star2"  value="2">&#9733;</button>
                            <button class="star" id="star3"  value="3">&#9734;</button>
                            <button class="star" id="star4"  value="4">&#9734;</button>
                            <button class="star" id="star5"  value="5">&#9734;</button>
                            <p class="current_rating">2 trÃªn 5</p></div>
                        </c:if>  

                    <c:if test="${studentComment.starvoting  == 3}">
                        <button class="star" id="star1"  value="1">&#9733;</button>
                        <button class="star" id="star2"  value="2">&#9733;</button>
                        <button class="star" id="star3"  value="3">&#9733;</button>
                        <button class="star" id="star4"  value="4">&#9734;</button>
                        <button class="star" id="star5"  value="5">&#9734;</button>
                        <p class="current_rating">3 trÃªn 5</p></div>
                    </c:if>  

                <c:if test="${studentComment.starvoting == 4}">
                    <button class="star" id="star1"  value="1">&#9733;</button>
                    <button class="star" id="star2"  value="2">&#9733;</button>
                    <button class="star" id="star3"  value="3">&#9733;</button>
                    <button class="star" id="star4"  value="4">&#9733;</button>
                    <button class="star" id="star5"  value="5">&#9734;</button>
                    <p class="current_rating">4 trÃªn 5</p></div>
                </c:if>  

            <c:if test="${studentComment.starvoting == 5}">
                <button class="star" id="star1"  value="1">&#9733;</button>
                <button class="star" id="star2"  value="2">&#9733;</button>
                <button class="star" id="star3"  value="3">&#9733;</button>
                <button class="star" id="star4"  value="4">&#9733;</button>
                <button class="star" id="star5"  value="5">&#9733;</button>
                <p class="current_rating">5 trÃªn 5</p></div>
            </c:if>  



        <div class="bg-light p-2">
            <div class="d-flex flex-row align-items-start"><img class="rounded-circle" src="" width="40"><textarea class="form-control ml-1 shadow-none textarea" id="message" > ${studentComment.message}</textarea></div>

            <div class="mt-2 text-right"><button class="btn btn-primary btn-sm shadow-none" onclick="postComment()" type="button">Post comment</button><button class="btn btn-outline-primary btn-sm ml-1 shadow-none" type="button">Cancel</button></div>
        </div>




    </div>
</div>
</div>
</div>






</body>

<script>
    const allStars = document.querySelectorAll('.star');
    let current_rating = document.querySelector('.current_rating');

    allStars.forEach((star, i) => {
        star.onclick = function () {
            let current_star_level = i + 1;
            current_rating.innerText = current_star_level + ' trÃªn 5 ';
            allStars.forEach((star, j) => {
                if (current_star_level >= j + 1) {
                    star.innerHTML = '&#9733';
                } else {
                    star.innerHTML = '&#9734';
                }
            })
        }
    });



</script>  
<script>

    function postComment() {
        var hostelId = document.getElementById("hostelId").value;
        var x = document.getElementById("message").value;
        var u = 0;
        allStars.forEach((star, i) => {
            if (star.textContent != "â") {
                u++;
            }

        });

        if (u == 0) {
            alert("Vui lÃ²ng xáº¿p háº¡ng nhÃ  trá»!");
            return;
        } else {
            $.ajax({
                type: "POST",

                url: "/Test_1/star",
                data: {
                    hostelId: hostelId,
                    star: u,
                    message: x
                },
                headers: {
                    Accept: "application/json; charset=utf-8",
                    contentType: "application/json; charset=utf-8"
                },

                success: function (data) {

                    alert('Cáº£m Æ¡n báº¡n ÄÃ£ ÄÃ¡nh giÃ¡ nhÃ  trá»!');
                    window.location = "/Test_1/detailhostel?id=" + hostelId;
                },
                error: function (e) {
                    console.log("ERROR: ", e);
                }
            });
        }
    }


    $(".btnSave").click(function () {
        var hostelId = document.getElementById("hostelId").value;
        var i = 0;
        allStars.forEach((star, i) => {
            i++;
        });
        alert(i);
        $.ajax({
            type: "POST",

            url: "/Test_1/star",
            data: {
                hostelId: hostelId,
                star: 5,
            },
            headers: {
                Accept: "application/json; charset=utf-8",
                contentType: "application/json; charset=utf-8"
            },

            success: function (data) {

                alert(data);
            },
            error: function (e) {
                console.log("ERROR: ", e);
            }
        });
    });
</script>

</body>


</html>
