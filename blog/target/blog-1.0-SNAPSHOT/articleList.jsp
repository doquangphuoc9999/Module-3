<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/19/2021
  Time: 1:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
</head>
<body>
    <div class="container">
        <h2>
            ${mess}
        </h2>
        <table border="1" width="100%" style="border-collapse: collapse">
            <thead>
            <tr>
                <th>id</th>
                <th>Title</th>
                <th>Time</th>
                <th>Images</th>
                <th>Category</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="listArticle" items="${list}">
                <tr>
                    <td>${listArticle.idPost}</td>
                    <td>${listArticle.title}</td>
                    <td>${listArticle.publisht}</td>
                    <td><img src='${listArticle.image}' alt="" style="height: 100px"></td>
                    <td>${listArticle.category.nameCategory}</td>
                    <td><a href="editList?idPost=${listArticle.idPost}">Edit</a></td>
                    <td><a href="delete?idPost=${listArticle.idPost}">Delete</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
