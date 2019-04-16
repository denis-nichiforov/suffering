<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login V15</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="../../resources/images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../resources/vendor/bootstrap/css/bootstrap.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../resources/fonts/external/fonts/font-awesome-4.7.0/css/font-awesome.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../resources/fonts/external/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../resources/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../resources/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../resources/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../resources/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../resources/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../resources/include/style/external/css/util.css">
    <link rel="stylesheet" type="text/css" href="../../resources/include/style/external/css/main.css">
    <!--===============================================================================================-->

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <link rel="stylesheet" href="../../resources/include/style/common.css">
</head>
<body>

<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-form-title" style="background-image: url(../../resources/images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Registration
					</span>
            </div>

            <form class="login100-form validate-form" method="post">
                <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                    <div class="mistakes" id="labelUser"></div>
                    <span class="label-input100">Username</span>
                    <input class="input100" id="user" type="text" name="user" placeholder="Enter username">
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
                    <div class="mistakes" id="labelPassword"></div>
                    <span class="label-input100">Password</span>
                    <input class="input100" id="password" type="password" name="password" placeholder="Enter password">
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
                    <div class="mistakes" id="labelpasswordRepeat"></div>
                    <span class="label-input100">Password</span>
                    <input class="input100" id="passwordRepeat" type="password" name="passwordRepeat" placeholder="Enter password repeat">
                    <span class="focus-input100"></span>
                </div>

                <div class="flex-sb-m w-full p-b-30">
                    <%--<div class="contact100-form-checkbox">--%>
                        <%--<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">--%>
                        <%--<label class="label-checkbox100" for="ckb1">--%>
                            <%--Remember me--%>
                        <%--</label>--%>
                    <%--</div>--%>

                    <%--<div>--%>
                    <%--<a href="#" class="txt1">--%>
                    <%--Forgot Password?--%>
                    <%--</a>--%>
                    <%--</div>--%>
                </div>

                <div class="container-login100-form-btn">
                    <button id="button" type="button"  class="login100-form-btn">
                        Registration
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

<!--===============================================================================================-->
<script src="../../resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="../../resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="../../resources/vendor/bootstrap/js/popper.js"></script>
<script src="../../resources/vendor/bootstrap/js/popper.min.js"></script>
<!--===============================================================================================-->
<script src="../../resources/vendor/select2/select2.min.css"></script>
<!--===============================================================================================-->
<script src="../../resources/vendor/daterangepicker/moment.min.js"></script>
<script src="../../resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="../../resources/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="../../resources/include/jscripts/external/main.js"></script>
<script src="../../resources/include/jscripts/registration.js"></script>


</body>
</html>