<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/6/2021
  Time: 9:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search User</title>
</head>
<body>
    <h3>
        <a href="/user">List User</a>
    </h3>

    <table border="1">
        <thead>
        <tr>
            <td>id</td>
            <td>User name</td>
            <td>Age</td>
            <td>Gmail</td>
            <td>Country id</td>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="display" items="${listCountry}">
                <tr>
                    <td>${display.id}</td>
                    <td>${display.nameUser}</td>
                    <td>${display.ageUser}</td>
                    <td>${display.gmail}</td>
                    <td>${display.getCountryId().getNameCountry()}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
