 <%-- 
    Document   : forgotPass_InputEmail
    Created on : Jun 24, 2022, 10:33:18 PM
    Author     : longn
--%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/enterEmailStyle.css">
    </head>
    <body style="background-image: url(images/logo.jpg); background-size: 100% 100%">
        <div class="container padding-bottom-3x mb-2 mt-5">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="forgot">
                        <h2>Bạn quên mật khẩu?</h2>
                        <p>Thay đổi mật khẩu của bạn trong 3 bước đơn giản. Điều này sẽ giúp bạn bảo mật mật khẩu của bạn!</p>
                        <ol class="list-unstyled">
                            <li><span class="text-primary text-medium">1. </span>Nhập địa chỉ email của bạn dưới đây.</li>
                            <li><span class="text-primary text-medium">2. </span>Hệ thống của chúng tôi sẽ gửi cho bạn mã OTP trong email của bạn.</li>
                            <li><span class="text-primary text-medium">3. </span>Sử dụng mã OTP để đặt lại mật khẩu của bạn.</li>
                        </ol>
                    </div>	
                    <form class="card mt-4" name="inputEmailForm" action="ForgotPass_InputEmailServlet" method="post" onsubmit="return checkSend()">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="email-for-pass">Nhập địa chỉ email của bạn</label>
                                <input class="form-control" type="text" name="username" id="email-for-pass">
                                <small class="form-text text-muted">
                                    Nhập địa chỉ email bạn đã sử dụng trong quá trình đăng ký trên FCS.com. Sau đó, chúng tôi sẽ gửi một liên kết đến địa chỉ này qua email.
                                </small>
                                <h2 style="color: red"> ${errorInputEmail}</h2>
                            </div>
                        </div>
                        <div class="card-footer">
                            <input class="btn btn-success" type="submit" value="Gửi mã OTP" onclick="checkValidatorForgotPassword_InputEmail()"/>
                            <button class="btn btn-danger" type="submit" onclick="window.location.href = 'login.jsp'">Quay lại Đăng nhập</a></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
    <script src="validator/validate.js"></script>
</html>
