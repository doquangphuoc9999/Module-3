<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/4/2021
  Time: 3:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List User</title>
    <p>
        <a href="/addUser">Add User</a>
    </p>
</head>
<body>
    <h3>List User</h3>

    <form action="/search" method="post">
        <input type="text" name="searchCountry" placeholder="Enter your country...">
        <input type="submit">
    </form>
    <table class="table" border="1">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">User name</th>
            <th scope="col">User age</th>
            <th scope="col">gmail</th>
            <th scope="col">Country</th>
            <th scope="col">Edit</th>
            <th scope="col">Delete</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <th scope="row">${user.id}</th>
                    <td scope="row">${user.nameUser}</td>
                    <td scope="row">${user.ageUser}</td>
                    <td scope="row">${user.gmail}</td>
                    <td scope="row">${user.countryId.nameCountry}</td>
                    <td scope="row"><a href="editUser?id=${user.id}">Edit</a></td>
                    <td scope="row"><a href="deleteUser?id=${user.id}">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
