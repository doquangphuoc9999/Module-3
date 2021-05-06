<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/4/2021
  Time: 8:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Edit Us</h2>

<p>
    <a href="/user">List User</a>
</p>

<p>
    ${message}
</p>
<form action="/editUser" method="post">
    <label>User name</label><br>
    <input type="text" name="name" value="${edit.nameUser}"><br>
    <label>User Age</label><br>
    <input type="number" name="age" value="${edit.ageUser}"><br>
    <label>User gmail</label><br>
    <input type="email" name="email" value="${edit.gmail}"><br>
    <label>User Country</label><br>
    <select name="countryName" id="countryId" >
        <c:forEach var="listCountry" items="${list}">
            <c:if test="${edit.countryId.id == listCountry.id}">
                <option value="${edit.countryId.id}" selected>${listCountry.nameCountry}</option>
            </c:if>
            <c:if test="${edit.countryId.id != listCountry.id}">
                <option value="${listCountry.id}" >${listCountry.nameCountry}</option>
            </c:if>
        </c:forEach>
    </select>
    <input type="hidden" name="id" value="${edit.idPost}">
    <input type="submit">
    <input type="reset">

</form>
</body>
</html>
