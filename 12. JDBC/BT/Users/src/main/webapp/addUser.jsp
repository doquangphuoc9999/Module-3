<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/4/2021
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add User</title>
</head>
<body>
<h2>Add User</h2>
<p>
    ${message}
</p>
<p>
    <a href="/user">List User</a>
</p>
<form action="/addUser" method="post">
    <label>User name</label><br>
    <input type="text" name="name"><br>
    <label>User Age</label><br>
    <input type="number" name="age"><br>
    <label>User gmail</label><br>
    <input type="email" name="email"><br>
    <label>User Country</label><br>
    <select name="countryName" id="countryId">
        <c:forEach var="country" items="${listCountry}">
            <option value="${country.id}">${country.nameCountry}</option>
        </c:forEach>
    </select>
    <input type="submit">
    <input type="reset">

</form>
</body>
</html>
