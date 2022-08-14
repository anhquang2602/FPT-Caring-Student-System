<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!DOCTYPE html> 
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--        <meta http-equiv="refresh" content="0.1">-->
        <link rel="stylesheet" href="css/profileStyle.css">
        <link rel="stylesheet" href="css/pagingStyle.css">
    </head>
    <body class="bg-white">
        <div class="px-0 bg-white">
            <%@include file="/header.jsp" %> 
            <div class="d-md-flex">
                <ul id="navbar-items" class="p-3">
                    <%@include file="/sidebar.jsp" %>
                </ul>
                <form action="UpdateStudentProfile" enctype="multipart/form-data"  method="post" name="updateStudentForm">
                    <div class="container rounded bg-white mt-5 mb-5">
                        <div class="row">
                            <div>
                                <ul class="breadcrumb bg-white">
                                    <li><a href="home.jsp">Home</a></li>
                                    <li><a href="UpdateStudentProfile">My Profile</a></li>                                    
                                </ul>
                            </div>
                            <div class="col-md-4">
                                <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="${UserAvatar}" id="output">
                                    <div class="form-group mt-3">                       
                                        <input style="padding-left: 80px" type="file" name="avatarImage" accept="image/*" onchange="loadFile(event)" class="form-control-file" id="avatarImg">
                                    </div>
                                    <div id="divCheckImg"></div>
                                    <span class="mt-2">${student.email}</span><br>
                                    <a href="${student.linkFb}" title="" target="_blank">My Facebook</a>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="p-3 py-5">
                                    <div class="d-flex justify-content-between align-items-center mb-3">
                                        <h4 class="text-right">My Profile</h4>
                                    </div>
                                    <div class="row mt-2">
                                        <input name="id" value="${student.studentNo}" hidden="">
                                        <div class="col-md-6"><label class="labels">First Name</label><input type="text" name="firstName" class="form-control" value="${student.firstName}" ></div>
                                        <div class="col-md-6"><label class="labels">Last Name</label><input type="text" name="lastName" class="form-control" value="${student.lastName}" ></div>
                                        <div class="col-md-6"><label class="labels">StudentID</label><input type="text" name="studentId" class="form-control" value="${student.studentID}" ></div>
                                        <div class="col-md-6"><label class="labels">Unit</label><input type="text" name="unit" class="form-control" value="${student.unit}" ></div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-md-12"><label class="labels">Age</label><input type="number" name="age" class="form-control"value="${student.age}" ></div>
                                        <div class="col-md-12"><label class="labels">Mobile Number</label><input type="text" name="phone" class="form-control" value="${student.phone}" ></div>
                                        <div class="col-md-12"><label class="labels">Email</label><input type="text" class="form-control" readonly="" value="${student.email}" ></div>
                                        <div class="col-md-12"><label class="labels">Link Facebook</label><input type="text" class="form-control" name="linkFb" value="${student.linkFb}" ></div>
                                        <div class="col-md-12"><label class="labels">Sex</label></br>
                                            <label class="labels" id="genderlable" hidden="">${student.gender}</label>
                                            <input class="form-check-input" type="radio" name="gender"  id="inlineRadio1" value="1"> Nam
                                            <input class="form-check-input" type="radio" name="gender"  id="inlineRadio2" value="0"> Nữ                                            
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <label class="labels" for="cars">Tỉnh, thành phố</label>
                                        <select name="province" id="province" class="province form-select" onchange>
                                            <option value="">Select Province</option>
                                            <c:forEach items ="${listProvince}" var="o">
                                                <option value="${o.provinceID}" 
                                                        <c:if test = "${student.provinceID == o.provinceID }">
                                                            selected="selected"
                                                        </c:if>    >${o.provinceName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="error" id="errorProvince"></div> 
                                    <div class="col-md-12">
                                        <label class="labels" for="cars">Quận, phường</label>
                                        <select name="district"  id ="district" class="district form-select">
                                            <c:forEach items ="${listDistrict}" var="o">
                                                <option value="${o.districtID}" 
                                                        <c:if test = "${student.districtID == o.districtID }">
                                                            selected="selected"
                                                        </c:if>    >${o.districtName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-md-12"><label class="labels">Address Detail</label><input type="text" name="addressDetail" class="form-control"value="${student.address}" ></div>
                                </div>
                                <div class="mt-5 text-center">
                                    <button onclick="tai_lai_trang()">re load</button>
                                    <button class="btn btn-primary profile-button" type="submit" >Save Profile</button>
                                </div>
                                <label class="labels">${UpdateError}</label>
                                <label class="labels">${UpdateProcess}</label>
                            </div>
                        </div>
                    </div>
            </div>
        </form>
    </div>
</div>
</body>
<script src="validator/Validator.js"></script>
<script>
        function tai_lai_trang(){
                   var img = document.getElementById('output').src;
                   
        }
</script>
<script language="javascript">

                                        var gender = document.getElementById('genderlable').innerHTML;

                                        if (gender == 1) {
                                            document.getElementById('inlineRadio1').setAttribute('checked', true);
                                        } else
                                        {
                                            document.getElementById('inlineRadio2').setAttribute('checked', true);
                                        }


                                        // Hàm xử lý khi thẻ select thay đổi giá trị được chọn
                                        // obj là tham số truyền vào và cũng chính là thẻ select

        
       
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
crossorigin="anonymous"></script>
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
    var loadFile = function (event) {
        var output = document.getElementById('output');
        output.src = URL.createObjectURL(event.target.files[0]);
        output.onload = function () {
            URL.revokeObjectURL(output.src) // free memory
        }
    };
</script>

<script>
        function validateUpdateStudent() {
            let isValid = true;
            const province = document.updateStudentForm.province.value;
            document.getElementById('errorProvince').innerText = ' ';
            if (!province) {
                document.getElementById('errorProvince').innerText = 'Bạn phải chọn tỉnh!';
                isValid = false;
            }
            return isValid;
        }
    </script>
<%@include file="/footer.jsp" %>
</html>
