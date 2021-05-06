<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/2/2021
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
    <h2>Edit Customer</h2>

    <p>
        <a href = "<c:url value="/" />">List Customer</a>
    </p>

    <p>${Message}</p>

    <form action="/eidtcustomer" method="post">
        <label>Full name</label><br>
        <input type="text" name="fullName" value="${customer.name}"><br>
        <label>Email</label><br>
        <input type="email" name="email" value="${customer.email}"><br>
        <label>Address</label><br>
        <input type="text" name="address" value="${customer.address }"><br>
        <input type="reset" name="reset" value="reset">
        <input type="submit">


    </form>
</body>
</html>
