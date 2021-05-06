<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/22/2021
  Time: 11:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Css/Style.css">
</head>
<body>
<div class="container">
    <h2 style="text-align: center">Ghi chú</h2>
    <table class="table table-striped">
        <tr>
            <th>ID</th>
            <th>Title Note</th>
            <th>Content</th>
            <th>Type Note</th>
        </tr>
        <c:forEach var="list" items="${listNotes}">
            <tr>
                <td>${list.idNote}</td>
                <td>${list.title}</td>
                <td>${list.content}</td>
                <td>${list.idNote_type.nameNote}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
