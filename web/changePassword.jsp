<%-- 
    Document   : changePassword
    Created on : Jun 24, 2022, 11:07:43 PM
    Author     : longn
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/changePasswordStyle.css">
    </head>
    <body class="bg-white">
        <div class="px-0">
            <%@include file="/header.jsp" %> 
            <div class="d-md-flex">
                <ul id="navbar-items" class="p-3">
                    <%@include file="/sidebar.jsp" %>
                </ul>
                <div class="container mt-5 mb-5">
                    <div class="d-flex justify-content-center row">
                        <div class="col-md-5 mt-5">
                            <div class="card p-3">
                                <div class="d-flex flex-column">  
                                    <span class="login mt-3">ĐỔI MẬT KHẨU</span> 
                                </div>
                                <div class="input-field d-flex flex-column mt-3"> 
                                    <form name="changePassForm" action="ChangePasswordServlet" method="post" onsubmit="return checkSend()">
                                        <div class="mt-3">
                                            Old Password
                                            <input class="form-control" type="password" id="oldpass" name="oldpass" placeholder="Nhập mật khẩu hiện tại của bạn"/>
                                        </div>
                                        <div id="divCheckOldPass"></div>
                                        <div class="mt-3">
                                        New Password
                                        <input class="form-control" type="password" id="pass" name="pass" placeholder="Nhập mật khẩu mới của bạn"/>
                                        </div>
                                        <div class="mt-3">
                                        <div id="divCheckPass"></div>
                                        Re-Password
                                        <input class="form-control" type="password" id="repass" name="repass" placeholder="Nhập lai mật khẩu mới"/>
                                        </div>
                                        <div id="divCheckRePass"></div>
                                        <input class="mt-5 btn btn-dark d-flex justify-content-center align-items-center" style="background-color: rgb(238, 77, 45); border: none;" type="submit" value="Xác nhận" onclick="checkValidatorForChangePassword()"/>
                                    </form>
                                </div>
                                <h4 class="mt-3" style="text-align: center; color: #842029"> ${errorChangePass}</h4>
                                <h4 class="mt-3" style="text-align: center; color: #842029"> ${successChangePass}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <%@include file="/footer.jsp" %>
    <script src="validator/Validator.js"></script>
</html>
