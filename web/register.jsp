<!doctype html>
<html lang="en">
    <head>
        <title>Register page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/style.css">

    </head>
    <body class="img js-fullheight" style="background-image: url(images/3.jpg); ">
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">
                        <h2 class="heading-section">FPT CARING SYSTEM</h2>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-4">
                        <div class="login-wrap p-0">
                            <h3 class="mb-4 text-center">Create an account?</h3>
                            <form name="registerform" action="register" method="post" class="signin-form" onsubmit="return checkSend()">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Enter email" name="username" id="username" required>
                                </div>
                                <div class="form-group">
                                    <input  type="password" class="form-control" placeholder="Enter password" name="pass" id="pass" required>
                                    <span toggle="#pass" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <div class="form-group">
                                    <input  type="password" class="form-control" placeholder="Enter confirm password" name="repass" id="repass" required>
                                    <span toggle="#repass" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <tr><td><div id="divcheckpass"></div></td></tr>
                                <p class="w-100 text-center">&mdash; Choose your role &mdash;</p>
                                <tr>
                                    <td><input name="role" type="radio" value="2" checked/>user
                                        <input name="role" type="radio" value="3" />seller
                                    </td>
                                </tr>
                                <div class="form-group">
                                    <button type="submit" class="form-control btn btn-primary submit px-3" onclick="checkValidatorForRegister()">Create</button>
                                </div>

                            </form>	         
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="js/jquery.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
        <h2 style="color: red"> ${requestScope.error}</h2>
    </body>
    <script src="Validator.js"></script>
</html>

