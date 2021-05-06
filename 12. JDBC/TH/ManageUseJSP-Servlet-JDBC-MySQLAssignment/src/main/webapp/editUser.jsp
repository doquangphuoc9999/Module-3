<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/3/2021
  Time: 4:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<h2>Edit User</h2>

<h3>
    <a href="/showUser">List User</a>
</h3>
<p>
    ${message}
</p>
<form action="/editUser" method="post">
    <label>User name</label><br>
    <input type="text" name="nameUser"  value="${user.nameUser}"><br>
    <label>Gmail</label><br>
    <input type="text" name="emailUser" value="${user.email}"><br>
    <label>Address</label><br>
    <input type="text" name="address" value="${user.country}"><br>
    <input type="hidden" name="id" value="${user.id}">
    <input type="reset">
    <input type="submit">
</form>
</body>
</html>
