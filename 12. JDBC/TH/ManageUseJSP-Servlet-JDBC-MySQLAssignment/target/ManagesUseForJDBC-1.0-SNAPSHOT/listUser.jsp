<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/3/2021
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List User</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
</head>

<p>
    <a href="/createUser">Add User</a>
</p>
<body>
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">User name</th>
        <th scope="col">Gmail</th>
        <th scope="col">Address</th>
        <th scope="col">Edit</th>
        <th scope="col">Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${user}">
        <tr>
            <th scope="row">${user.id}</th>
            <th scope="row">${user.nameUser}</th>
            <th scope="row">${user.email}</th>
            <th scope="row">${user.country}</th>
            <th scope="row"><a href="/editUser?id=${user.id}">Edit</a></th>
            <th scope="row"><a href="/delete?id=${user.id}">Delete</a></th>
        </tr>
    </c:forEach>

    </tbody>
</table>
</body>
</html>
