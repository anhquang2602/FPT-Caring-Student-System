<%-- 
    Document   : edithostel
    Created on : Jul 17, 2022, 4:23:34 PM
    Author     : nguye
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/addHostelStyle.css">
        <link rel="stylesheet" href="css/pagingStyle.css">
        <style>
            .error {
                color: red;
            }
            .message {
                color: green;

            }
        </style>
    </head>
    <body class="bg-white">
        <div class="px-0">
            <%@include file="/header.jsp" %> 
            <div class="d-md-flex">
                <ul id="navbar-items" class="p-3">
                    <%@include file="/sidebar.jsp" %>
                </ul>
                <div class="container rounded bg-white mt-5 mb-5">
                    <div class="col-xl-12 mb-5">
                        <div>
                            <ul class="breadcrumb bg-white">
                                <li><a href="home.jsp">Trang chủ</a></li>
                                <li><a href="hostellist">Nhà trọ của tôi</a></li>
                                <li><a>Chi tiết nhà trọ</a></li>
                            </ul>
                        </div>
                        <div class="card">
                            <form class="form" method="POST" id="updateForm" action="edithostel"  name="edithostelForm" onsubmit="return validateEditHostel()" enctype="multipart/form-data">
                                <div class="input_text" hidden>
                                    <input type="text" name="hostelId" value="${editHostel.hostelID}" hidden>
                                </div>
                                <div class="left-side">
                                    <div class="mt-5">
                                        <input type="file" accept="image/*" onchange="loadFile(event)" name ="image1" id="file1">
                                        <label for="file1" style="position: absolute; margin-left: 30px; margin-top: 65px; opacity: 50%">+</label>
                                        <img id="Url1" name="Url1" width="170px" height="170px"
                                             <c:if test="${editHostel.img1 != null}">
                                                 src="${editHostel.img1}" </c:if>/>
                                             <script>
                                                 var loadFile = function (event) {
                                                     var output = document.getElementById('Url1');
                                                     output.src = URL.createObjectURL(event.target.files[0]);
                                                     output.style.width = "170px";
                                                     output.style.height = "170px";
                                                     output.onload = function () {
                                                         URL.revokeObjectURL(output.src) // free memory
                                                     }
                                                 };
                                             </script>
                                        <c:if test="${editHostel.img1 != null}">
                                            <a id="U1" class ="Url1" style="position: absolute; margin-left: -20px; text-decoration: none" href="deleteImage?id=${editHostel.hostelID}&url=Url1">X</a>
                                        </c:if>

                                        <input type="file" accept="image/*" onchange="loadFile2(event)" name ="image2" id="file2">
                                        <%--<c:if test="${editHostel.img2 != null}">--%>
                                            <!--<a id="U2" class ="Url2" href="deleteImage?id=${editHostel.hostelID}&url=Url2">Delete Image</a>-->
                                        <%--</c:if>--%>
                                        <label for="file2" style="position: absolute; margin-left: 40px; margin-top: 60px; opacity: 50%">+</label>
                                        <img id="Url2" name="Url2" style="margin-left: 10px"
                                             width="170px" height="170px"
                                             <c:if test="${editHostel.img2 != null}">
                                                 src="${editHostel.img2}" </c:if>/>
                                             <script>
                                                 var loadFile2 = function (event) {
                                                     var output = document.getElementById('Url2');
                                                     output.src = URL.createObjectURL(event.target.files[0]);
                                                     output.style.width = "170px";
                                                     output.style.height = "170px";
                                                     output.onload = function () {
                                                         URL.revokeObjectURL(output.src) // free memory
                                                     }
                                                 };
                                             </script>

                                             <input type="file" accept="image/*" onchange="loadFile3(event)" name ="image3" id="file3">
                                        <%--<c:if test="${editHostel.img3 != null}">--%>
                                            <!--<a id="U3" class ="Url3" href="deleteImage?id=${editHostel.hostelID}&url=Url3">Delete Image</a>-->
                                        <%--</c:if>--%>
                                        <label for="file3" style="position: absolute; margin-left: 40px; margin-top: 60px; opacity: 50%">+</label>
                                        <img id="Url3" name="Url3" style="margin-left: 10px"
                                             width="170px" height="170px"
                                             <c:if test="${editHostel.img3 != null}">
                                                 src="${editHostel.img3}" </c:if>/>
                                             <script>
                                                 var loadFile3 = function (event) {
                                                     var output = document.getElementById('Url3');
                                                     output.src = URL.createObjectURL(event.target.files[0]);
                                                     output.style.width = "170px";
                                                     output.style.height = "170px";
                                                     output.onload = function () {
                                                         URL.revokeObjectURL(output.src) // free memory
                                                     }
                                                 };
                                             </script>
                                        <c:if test="${editHostel.img3 != null}">
                                            <a id="U3" class ="Url3" style="position: absolute; margin-left: -20px; text-decoration: none" href="deleteImage?id=${editHostel.hostelID}&url=Url3">X</a>
                                            <input type="file" accept="image/*" onchange="loadFile(event)" name ="image3" id="file3">
                                            <label for="file3" style="position: absolute; margin-left: 40px; margin-top: 65px; opacity: 50%">+</label>
                                        </c:if>
                                    </div>

                                    <div class="mt-5">    
                                        <input type="file" accept="image/*" onchange="loadFile4(event)" name ="image4" id="file4">
                                        <%--<c:if test="${editHostel.img4 != null}">--%>
                                            <!--<a id="U4" class ="Url4" href="deleteImage?id=${editHostel.hostelID}&url=Url4">Delete Image</a>-->
                                        <%--</c:if>--%>
                                        <label for="file4" style="position: absolute; margin-left: 30px; margin-top: 65px; opacity: 50%">+</label>
                                        <img id="Url4" name="Url4"
                                             width="170px" height="170px"
                                             <c:if test="${editHostel.img4 != null}">
                                                 src="${editHostel.img4}" </c:if>/>
                                             <script>
                                                 var loadFile4 = function (event) {
                                                     var output = document.getElementById('Url4');
                                                     output.src = URL.createObjectURL(event.target.files[0]);
                                                     output.style.width = "170px";
                                                     output.style.height = "170px";
                                                     output.onload = function () {
                                                         URL.revokeObjectURL(output.src) // free memory
                                                     }
                                                 };
                                             </script>

                                             <input type="file" accept="image/*" onchange="loadFile5(event)" name ="image5" id="file5">
                                        <%--<c:if test="${editHostel.img5 != null}">--%>
                                            <!--<a id="U5" class ="Url5" href="deleteImage?id=${editHostel.hostelID}&url=Url5">Delete Image</a>-->
                                        <%--</c:if>--%>
                                        <label for="file5" style="position: absolute; margin-left: 40px; margin-top: 65px; opacity: 50%">+</label>
                                        <img id="Url5" name="Url5" style="margin-left: 10px"
                                             width="170px" height="170px"
                                             <c:if test="${editHostel.img5 != null}">
                                                 src="${editHostel.img5}" </c:if>/>
                                             <script>
                                                 var loadFile5 = function (event) {
                                                     var output = document.getElementById('Url5');
                                                     output.src = URL.createObjectURL(event.target.files[0]);
                                                     output.style.width = "170px";
                                                     output.style.height = "170px";
                                                     output.onload = function () {
                                                         URL.revokeObjectURL(output.src) // free memory
                                                     }
                                                 };
                                             </script>

                                             <input type="file" accept="image/*" onchange="loadFile6(event)" name ="image6" id="file6">
                                        <%--<c:if test="${editHostel.img6 != null}">--%>
                                            <!--<a id="U6" class ="Url6" href="deleteImage?id=${editHostel.hostelID}&url=Url6">Delete Image</a>-->
                                        <%--</c:if>--%>
                                        <label for="file6" style="position: absolute; margin-left: 40px; margin-top: 65px; opacity: 50%">+</label>
                                        <img id="Url6" name="Url6" style="margin-left: 10px"
                                             width="170px" height="170px"
                                             <c:if test="${editHostel.img6 != null}">
                                                 src="${editHostel.img6}" </c:if>/>
                                             <script>
                                                 var loadFile6 = function (event) {
                                                     var output = document.getElementById('Url6');
                                                     output.src = URL.createObjectURL(event.target.files[0]);
                                                     output.style.width = "170px";
                                                     output.style.height = "170px";
                                                     output.onload = function () {
                                                         URL.revokeObjectURL(output.src) // free memory
                                                     }
                                                 };
                                             </script>
                                        </div> 
                                        <div class="oriton_img"> 
                                            <h5>Tình trạng phòng</h5>                   
                                        </div>   
                                        <div class="left_text">
                                            <input type="radio" id="collection1" name="status" 
                                            <c:if test = "${editHostel.status == true}">
                                                checked
                                            </c:if> value="yes"> 
                                        <label for="collection1">
                                            <div class="left_box">
                                                <div class="left_box_collection"> 
                                                    <div class="radio_button"> <span></span>
                                                        <h4>Còn phòng</h4>
                                                    </div>                               
                                                </div>
                                            </div>
                                        </label> 
                                        <input type="radio" id="collection2" name="status" 
                                               <c:if test = "${editHostel.status == false}">
                                                   checked
                                               </c:if>  name="status" value="no"> 
                                        <label for="collection2">
                                            <div class="left_box">
                                                <div class="left_box_collection">
                                                    <div class="radio_button"> <span></span>
                                                        <h4>Hết phòng</h4>
                                                    </div>
                                                </div>                                    
                                            </div>
                                        </label>
                                    </div>
                                </div>

                                <div class="right-side">
                                    <h3>Mô tả phòng</h3>
                                    <div class="input_text"> <input type="text" name="hostelName" value="${editHostel.hostelName}"> <span>Tên nhà trọ</span> </div>
                                    <div class="error" id="errorName"></div>
                                    <div class="input_text"> <input type="text" name="room" value="${editHostel.totalRoom}"> <span>Số phòng</span> </div>   
                                    <div class="error" id="errorRoom"></div>
                                    <div class="input_text"> <input type="number" name="floor" value="${editHostel.floor}"> <span>Số tầng</span> </div>
                                    <div class="error" id="errorFloor"></div>
                                    <div class="billing">
                                        <div class="input_text"> 
                                            <span>Tỉnh, thành phố</span> 
                                            <select name="province" id="province" class="province">
                                                <option value="">Select Province</option>
                                                <c:forEach items ="${listProvince}" var="o">
                                                    <option value="${o.provinceID}"
                                                            <c:if test = "${editHostel.provinceNamẹ == o.provinceName }">
                                                                selected="selected"
                                                            </c:if>>
                                                        ${o.provinceName}
                                                    </option>
                                                </c:forEach>
                                            </select> 
                                        </div>                         
                                    </div>
                                    <div class="error" id="errorProvince"></div>
                                    <div class="billing">
                                        <div class="input_text"> 
                                            <span>Quận, phường</span> 
                                            <select name="district"  id ="district" class="district">
                                                <c:forEach items ="${listDistrict}" var="o">
                                                    <option value="${o.districtID}" 
                                                            <c:if test = "${editHostel.districtName == o.districtName }">
                                                                selected="selected"
                                                            </c:if>>
                                                        ${o.districtName}
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </div>                         
                                    </div>
                                    <div class="input_text"> <input type="text" name="address" value="${editHostel.address}"> <span>Địa chỉ</span> 
                                        <div class="error" id="errorAddress"></div></div>
                                    <div class="input_text"> <input type="text" name="cost" value="${editHostel.cost}"> <span>Giá thuê</span> 
                                        <div class="error" id="errorCost"></div></div>
                                    <div class="input_text"> <input type="text" name="distance" value="${editHostel.distance}"> <span>Khoảng cách</span> 
                                        <div class="error" id="errorDistance"></div></div>
                                    <div> <span>Mô tả</span> 
                                        <textarea style="width: 100%; margin-top: 10px" type="text" name="description">
                                            ${editHostel.description}
                                        </textarea>
                                    </div>
                                    <div class="pay"> 
                                        <button type="submit">Save</button> 
                                        <button style="margin-top: 5px" type="reset">Reset </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
                                                 $(document).on('change', '.province', function () {
                                                     var province = document.getElementById("province").value;
                                                     $('#district').empty();


                                                     $.ajax({
                                                         type: "GET",

                                                         url: "/Test_1/findDistrict",
                                                         data: {
                                                             province: province,
                                                         },
                                                         headers: {
                                                             Accept: "application/json; charset=utf-8",
                                                             contentType: "application/json; charset=utf-8"
                                                         },

                                                         success: function (data) {

                                                             data.forEach(function (a) {
                                                                 $("#district").append('<option value="' + a.districtID + '">' + a.districtName + '</option>');

                                                             });
                                                         },
                                                         error: function (e) {
                                                             console.log("ERROR: ", e);
                                                         }
                                                     });

                                                 });
        </script>
        <script>
            $("#U1").click(function (event) {
                event.preventDefault();
                $.ajax({
                    url: $(this).attr('href'),
                    success: function (response) {
                        var output = document.getElementById(response);
                        output.removeAttribute('src');
                        
                        $("." + response).remove();
                        output.onload = function () {
                            URL.revokeObjectURL(output.src) // free memory
                        }


                    }
                });
                return false; // for good measure
            });
            $("#U2").click(function (event) {
                event.preventDefault();
                $.ajax({
                    url: $(this).attr('href'),
                    success: function (response) {
                        var output = document.getElementById(response);
                        output.src = '';
                        output.style.width = "0px"
                        $("." + response).remove();
                        output.onload = function () {
                            URL.revokeObjectURL(output.src) // free memory
                        }


                    }
                });
                return false; // for good measure
            });
            $("#U3").click(function (event) {
                event.preventDefault();
                $.ajax({
                    url: $(this).attr('href'),
                    success: function (response) {
                        var output = document.getElementById(response);
                        output.src = '';
                        output.style.width = "0px"
                        $("." + response).remove();
                        output.onload = function () {
                            URL.revokeObjectURL(output.src) // free memory
                        }


                    }
                });
                return false; // for good measure
            });
            $("#U4").click(function (event) {
                event.preventDefault();
                $.ajax({
                    url: $(this).attr('href'),
                    success: function (response) {
                        var output = document.getElementById(response);
                        output.src = '';
                        output.style.width = "0px"
                        $("." + response).remove();
                        output.onload = function () {
                            URL.revokeObjectURL(output.src) // free memory
                        }


                    }
                });
                return false; // for good measure
            });
            $("#U5").click(function (event) {
                event.preventDefault();
                $.ajax({
                    url: $(this).attr('href'),
                    success: function (response) {
                        var output = document.getElementById(response);
                        output.src = '';
                        output.style.width = "0px"
                        $("." + response).remove();
                        output.onload = function () {
                            URL.revokeObjectURL(output.src) // free memory
                        }


                    }
                });
                return false; // for good measure
            });
            $("#U6").click(function (event) {
                event.preventDefault();
                $.ajax({
                    url: $(this).attr('href'),
                    success: function (response) {
                        var output = document.getElementById(response);
                        output.src = '';
                        output.style.width = "0px"
                        $("." + response).remove();
                        output.onload = function () {
                            URL.revokeObjectURL(output.src) // free memory
                        }


                    }
                });
                return false; // for good measure
            });

        </script>
        <script>
            function reset() {
                location.reload();
            }

        </script>

        <script>
            function validateEditHostel() {
                let isValid = true;
                const hostelName = document.edithostelForm.hostelName.value;
                const room = document.edithostelForm.room.value;
                const floor = document.edithostelForm.floor.value;
                const province = document.edithostelForm.province.value;
                const address = document.edithostelForm.address.value;
                const cost = document.edithostelForm.cost.value;
                const distance = document.edithostelForm.distance.value;
                const regex = /[+-]?([0-9]*[.])?[0-9]+/;
                const regex2 = /^[0-9]*$/;
                const success = document.getElementById('success');

                document.getElementById('errorName').innerText = ' ';
                document.getElementById('errorRoom').innerText = ' ';
                document.getElementById('errorFloor').innerText = ' ';
                document.getElementById('errorProvince').innerText = ' ';
                document.getElementById('errorAddress').innerText = ' ';
                document.getElementById('errorCost').innerText = ' ';
                document.getElementById('errorDistance').innerText = ' ';


                if (!hostelName) {
                    document.getElementById('errorName').innerText = 'Bạn phải nhập tên nhà trọ!';
                    isValid = false;
                }

                if (!room) {
                    document.getElementById('errorRoom').innerText = 'Bạn phải nhập số phòng!';
                    isValid = false;
                } else if (room <= 0) {
                    document.getElementById('errorRoom').innerText = 'Invalid!';
                    isValid = false;
                } else if (!regex2.test(room)) {
                    document.getElementById('errorRoom').innerText = 'Invalid!';
                    isValid = false;
                }

                if (!floor) {
                    document.getElementById('errorFloor').innerText = 'Bạn phải nhập số tầng!';
                    isValid = false;
                } else if (!regex2.test(floor)) {
                    document.getElementById('errorFloor').innerText = 'Invalid!';
                    isValid = false;
                } else if (floor <= 0) {
                    document.getElementById('errorFloor').innerText = 'Invalid!';
                    isValid = false;
                }

                if (!province) {
                    document.getElementById('errorProvince').innerText = 'Bạn phải chọn tỉnh!';
                    isValid = false;
                }

                if (!address) {
                    document.getElementById('errorAddress').innerText = 'Bạn phải nhập địa chỉ!';
                    isValid = false;
                }

                if (!cost) {
                    document.getElementById('errorCost').innerText = 'Bạn phải nhập giá thuê!';
                    isValid = false;
                } else if (!regex.test(cost)) {
                    document.getElementById('errorCost').innerText = 'Invalid!';
                    isValid = false;
                } else if (cost <= 0) {
                    document.getElementById('errorCost').innerText = 'Giá thuê phải > 0 ';
                    isValid = false;
                }

                if (!distance) {
                    document.getElementById('errorDistance').innerText = 'Bạn phải nhập khoảng cách!';
                    isValid = false;
                } else if (!regex.test(distance)) {
                    document.getElementById('errorDistance').innerText = 'Invalid!';
                    isValid = false;
                } else if (distance <= 0) {
                    document.getElementById('errorDistance').innerText = 'Khoảng cách phải > 0 ';
                    isValid = false;
                }

                if (isValid) {
                    alert('Save successfully!');
                }

                return isValid;

            }
        </script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous">
        </script>
    </body>
    <%@include file="/footer.jsp" %>
</html>

