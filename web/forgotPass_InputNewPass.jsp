<%-- 
    Document   : forgotPass_InputNewPass
    Created on : Jun 24, 2022, 11:07:43 PM
    Author     : longn
--%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/loginStyle.css">
    </head>
     <body style="background-image: url(images/logo.jpg); background-size: 100% 100%">
        <div class="container mt-5 mb-5">
            <div class="d-flex justify-content-center row">
                <div class="col-sm-5">
                    <div class="card card2 p-3" style="margin-top: 100px">
                        <div class="d-flex flex-column">  
                            <span class="login mt-3">Mật khẩu mới</span> 
                        </div>
                        <form name="inputNewPassForm" action="ForgotPass_InputNewPassServlet" method="post" onsubmit="return checkSend()">
                            <div class="input-field d-flex flex-column mt-3"> 
                                <span class="mt-3">Nhập mật khẩu mới</span> 
                                <input class="form-control" type="password" id="pass" name="pass" placeholder="Nhập mật khẩu mới"/>
                                <div id="divCheckPass"></div>
                                <span class="mt-3">Nhập lại mật khẩu mới</span> 
                                <input class="form-control" type="password" id="repass" name="repass" placeholder="Nhập lại mật khẩu "/>
                                <div id="divCheckRePass"></div>
                                <input class="mt-5 btn btn-dark d-flex justify-content-center align-items-center" type="submit" value="Xác nhận" onclick="checkValidatorForInputNewPass()"/>
                            </div>
                        </form>
                        <h2 style="color: red"> ${errorInputNewPass}</h2>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="validator/validate.js"></script>
</html>
