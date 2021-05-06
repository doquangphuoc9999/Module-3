<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/22/2021
  Time: 9:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/add.css">
</head>
<body>
<div class="container">
    <h2>Ghi chú</h2>
    <h2>${mess}</h2>
    <form action="/editNote" method="post">
        <div class="content">
            <div class="row title" >
                <b class="col-3">Tiêu đề: </b>
                <input type="text" value="${list.title}" name="title" class="col-9">
            </div>
            <div class="row content-add-body">
                <b class="col-3">Nội dung: </b>
                <textarea class="col-9"  name="content-body" cols="30" rows="10">${list.content}</textarea>
            </div>
            <div class="submit">
                <input type="submit" value="submit">
                <input type="reset" value="reset">
            </div>
        </div>
        <input type="hidden" name="idNote" value="${list.idNote}">
    </form>
</div>
</body>
</html>
