<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/3/2021
  Time: 8:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Product</title>
</head>
<body>
    <h2>Add Product</h2>
    <p>
        <a href="/products">List Product</a>
    </p>

    <p>
        ${message}
    </p>

    <form action="/addProduct" method="post">
            <label>Products Name</label><br>
            <input type="text" name="productName"><br>
            <lable>Product Price</lable><br>
            <input type="text" name="productPrice" ><br>
            <label>product Description</label><br>
            <input type="text" name="description" ><br>
            <label>Producer</label><br>
            <input type="text" name="producer"><br>
            <input type="hidden" name="id" value="${product.id}">
            <input type="reset">
            <input type="submit">
    </form>
</body>
</html>
