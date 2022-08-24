<%-- 
    Document   : checkregister
    Created on : Jun 5, 2022, 1:05:53 AM
    Author     : longn
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue@2.6.12/dist/vue.js"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/verifyOPTStyle.css">
    </head>
     <body style="background-image: url(images/logo.jpg); background-size: 100% 100%">
        <div class="container mt-5 mb-5">
            <div class="d-flex flex row g-0">
                <div class="col-md-4"></div>
                <div class="col-md-8 mt-5">
                    <div class="card card2 p-3" style="margin-top: 200px">
                        <div class="input-field d-flex flex-column mt-3"> 
                            <form name="" action="AuthenticateServlet" method="post" onsubmit="return checkSend() >
                              <h5 style="color: #21214e">Vui lòng nhập mã OTP<br> </h5> 
                                <div class="mb-3"> 
                                    <span> gửi đến email của bạn</span>  
                                </div> 
                                <div id="otp" class="inputs d-flex flex-row justify-content-center mt-2"> 
                                    <input class="m-2 text-center form-control rounded" style="width: 100px" type="number" id="inputCode" name="inputCode" required=""/> 
                                </div> 
                                <div class="mt-4"> 
                                    <input class="btn btn-danger px-4 validate" style="background-color: rgb(238, 77, 45)" type="submit" value="Xác nhận">
                                </div> 
                                <div id="divCheckCode"></div>
                                <div class="mt-3 content d-flex justify-content-center align-items-center"> 
                                </div>
                            </form>
                            <div>${errorAuthentication}</div>
                        </div> 
                    </div>
                </div> 
            </div>
        </div> 
    </body>
    <script src="validator/validate.js"></script>
</html>
