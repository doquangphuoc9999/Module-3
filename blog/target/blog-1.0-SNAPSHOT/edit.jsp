<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/21/2021
  Time: 8:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
</head>
<body>
    <div class="container">
    <h2>Sửa bài viết</h2>
    <h2>
        <p>${messSuccess}</p>
    </h2>
    <form action="/editList" method="post">
        <input type="hidden" name="id" value="${edit.idPost}">
        <label>Title</label>
        <input type="text" name="title" value="${edit.title}"> <br>
        <label>Nội dung ngắn</label><br>
        <textarea rows="5" cols="70" name="shortContent">Nhập văn bản...
            </textarea> <br>
        <label>Nội dung văn bản</label><br>
        <textarea rows="9" cols="70" name="content">Nhập văn bản...
            </textarea><br>
        <label>Link ảnh</label><br>
        <input type="text" name="img"><br>
        <select name="category">
            <option value="">Vui lòng chọn</option>
            <c:forEach items="${DBlistCategory}" var="listCategory">
                <option value="${listCategory.id}">${listCategory.nameCategory}</option>
            </c:forEach>
        </select><br>
        <input type="submit" value="submit">
    </form>
</div>
</body>
</html>
