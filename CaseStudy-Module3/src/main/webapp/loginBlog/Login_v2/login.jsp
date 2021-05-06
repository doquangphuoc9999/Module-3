
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/25/2021
  Time: 3:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Login V2</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="loginBlog/Login_v2/images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="loginBlog/Login_v2/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="loginBlog/Login_v2/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="loginBlog/Login_v2/fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="loginBlog/Login_v2/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="loginBlog/Login_v2/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="loginBlog/Login_v2/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="loginBlog/Login_v2/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="loginBlog/Login_v2/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="loginBlog/Login_v2/css/util.css">
    <link rel="stylesheet" type="text/css" href="loginBlog/Login_v2/css/main.css">
    <!--===============================================================================================-->
</head>
<body>

<div class="limiter">
    <div class="container-login100">
        <c:if test="${message != null}">
            <div aria-live="polite" aria-atomic="true" style="position: relative; min-height: 200px;">
                <div class="toast" style="position: absolute; top: 0; right: 0;">
                    <div class="toast-header">
                        <img src="loginBlog/images/canhBao.jpg" class="rounded mr-2" alt="...">
                        <strong class="mr-auto">Bootstrap</strong>
                        <small>11 mins ago</small>
                        <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="toast-body">
                        Hello, world! This is a toast message.
                    </div>
                </div>
            </div>
            <c:remove var="message" scope="session" />
        </c:if>
        <div class="wrap-login100">
            <form action="/login" method="post" class="login100-form validate-form">
					<span class="login100-form-title p-b-26">
						Welcome
					</span>
                <span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
					</span>

                <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
                    <input class="input100" type="text" name="email">
                    <span class="focus-input100" data-placeholder="Email"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
                    <input class="input100" type="password" name="pass">
                    <span class="focus-input100" data-placeholder="Password"></span>
                </div>

                <div class="container-login100-form-btn">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button class="login100-form-btn">
                            Login
                        </button>
                    </div>
                </div>

                <div class="text-center p-t-115">
						<span class="txt1">
							Don’t have an account?
						</span>

                    <a class="txt2" href="#">
                        Sign Up
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>


<div id="dropDownSelect1"></div>
<script>
    $('.toast').toast(option)
</script>
<!--===============================================================================================-->
<script src="loginBlog/Login_v2/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="loginBlog/Login_v2/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="loginBlog/Login_v2/vendor/bootstrap/js/popper.js"></script>
<script src="loginBlog/Login_v2/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="loginBlog/Login_v2/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="loginBlog/Login_v2/vendor/daterangepicker/moment.min.js"></script>
<script src="loginBlog/Login_v2/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="loginBlog/Login_v2/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="loginBlog/Login_v2/js/main.js"></script>

</body>
</html>
