<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/26/2021
  Time: 5:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link
            rel="stylesheet"
            href="signUp/colorlib-regform-7/fonts/material-icon/css/material-design-iconic-font.min.css"
    />

    <!-- Main css -->
    <link rel="stylesheet" href="signUp/colorlib-regform-7/css/style.css" />
</head>
<body>
<div class="main">
    <!-- Sign up form -->
    <section class="signup">
        <div class="container">
            <div class="signup-content">
                <div class="signup-form">
                    <h2 class="form-title">Sign up</h2>
                    <form action="/SignUp" method="post" class="register-form" id="register-form">
                        <h2>${mess}</h2>
                        <div class="form-group">
                            <label for="name"
                            ><i class="zmdi zmdi-account material-icons-name"></i
                            ></label>
                            <input
                                    type="text"
                                    name="name"
                                    id="name"
                                    placeholder="Your Name"
                            />
                        </div>
                        <div class="form-group">
                            <label for="email"><i class="zmdi zmdi-email"></i></label>
                            <input
                                    type="email"
                                    name="email"
                                    id="email"
                                    placeholder="Your Email"
                            />
                        </div>
                        <div class="form-group">
                            <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                            <input
                                    type="password"
                                    name="pass"
                                    id="pass"
                                    placeholder="Password"
                            />
                        </div>
                        <div class="form-group">
                            <label
                            ><i class="zmdi zmdi-lock-outline"></i
                            ></label>
                            <input
                                    type="password"
                                    name="re_pass"
                                    id="re_pass"
                                    placeholder="Repeat your password"
                            />
                        </div>
                        <div class="form-group">
                            <input
                                    type="checkbox"
                                    name="agree-term"
                                    id="agree-term"
                                    class="agree-term"
                            />
                            <label for="agree-term" class="label-agree-term"
                            ><span><span></span></span>I agree all statements in
                                <a href="#" class="term-service">Terms of service</a></label
                            >
                        </div>
                        <div class="form-group form-button">
                            <input
                                    type="submit"
                                    name="signup"
                                    id="signup"
                                    class="form-submit"
                                    value="Register"
                            />
                        </div>
                    </form>
                </div>
                <div class="signup-image">
                    <figure>
                        <img src="signUp/colorlib-regform-7/images/signup-image.jpg" alt="sing up image" />
                    </figure>
                    <a href="/login" class="signup-image-link">Go to page login</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Sing in  Form -->
</div>

<!-- JS -->
<script src="signUp/colorlib-regform-7/vendor/jquery/jquery.min.js"></script>
<script src="signUp/colorlib-regform-7/js/main.js"></script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
