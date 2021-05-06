<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/22/2021
  Time: 3:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of Notes</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Css/Style.css">
</head>
<body>
<div class="container">
    <h2 style="text-align: center">Các ghi chú</h2>
    <h2><a href="/add">Add Notes</a></h2>
    <div class="row">
        <div class="col-6">
            <select class="form-select list_noteType" aria-label="Default select example">
                <c:forEach items="${listNotetype}" var="list">
                    <option selected>Thể loại</option>
                    <option value="${list.idNote_type}">${list.nameNote}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-6">
            <form action="/notes" method="get">
            <div class="search-title">
                    <input type="text" class="text-title" name="title" placeholder="Tiêu đề">
                    <input type="submit" class="submit-title" placeholder="Tìm">
            </div>
            </form>
        </div>
    </div>
    <table class="table table-striped">
        <tr>
            <th>ID</th>
            <th>Title Note</th>
            <th>Content</th>
            <th>Type Note</th>
            <th colspan="2">Action</th>
        </tr>
        <c:forEach var="list" items='${listNote}'>
            <tr>
                <td>${list.idNote}</td>
                <td>${list.title}</td>
                <td>${list.content}</td>
                <td>${list.idNote_type.nameNote}</td>
                <td><a href="/editNote?idNote=${list.idNote}">EDIT</a></td>
                <td><a href="/deleteNote?idNote=${list.idNote}">DELETE</a></td>
            </tr>
        </c:forEach>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
