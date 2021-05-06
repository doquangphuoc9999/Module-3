<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/2/2021
  Time: 1:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
    <h1>Customers</h1>
    <p><a href="/addCustomer">Create customer</a></p>

    <table border="1">
        <tr>
            <td>Name</td>
            <td>Gmail</td>
            <td>Address</td>
            <td>Edit</td>
            <td>Delete</td>
        </tr>
        <c:forEach items='${requestScope["customer"]}' var="customer">
            <tr>
                <td>${customer.name}</td>
                <td>${customer.email}</td>
                <td>${customer.address}</td>
                <td><a href ='eidtcustomer?id=${customer.id}'>Edit</a></td>
                <td><a href ='deleteCustomer?id=${customer.id}'>Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
