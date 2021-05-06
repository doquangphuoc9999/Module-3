<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/21/2021
  Time: 10:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Post</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2>Thêm bài viết</h2>
        <h2>
            <p>${messSuccess}</p>
        </h2>
        <form action="/addPost" method="post">
            <label>Title</label>
            <input type="text" name="title"> <br>
            <label>Nội dung ngắn</label><br>
            <textarea rows="5" cols="70" name="shortContent" placeholder="Nhập văn bản..."></textarea>
            <textarea rows="4" cols="50" placeholder="Describe yourself here..."></textarea>
            <br>
            <label>Nội dung văn bản</label><br>
            <textarea rows="9" cols="70" name="content" placeholder="Nhập văn bản..."></textarea><br>
            <label>Link ảnh</label><br>
            <input type="text" name="img"><br>
            <select name="category">
                <option value="">Vui lòng chọn</option>
                <c:forEach items="${listCategory}" var="listCategory">
                    <option value="${listCategory.id}">${listCategory.nameCategory}</option>
                </c:forEach>
            </select><br>
            <input type="submit" value="submit">
        </form>
    </div>
</body>
</html>
