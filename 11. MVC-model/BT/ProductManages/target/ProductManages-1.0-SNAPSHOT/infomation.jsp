<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/3/2021
  Time: 9:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>
    <a href="/products">
        List Products
    </a>
</h2>
<table border="1">
    <tr>
        <td>id</td>
        <td>Products Name</td>
        <td>Products Price</td>
        <td>Product Description</td>
        <td>Producer</td>
    </tr>
    <tr>
        <td>${product.id}</td>
        <td>${product.productName}</td>
        <td>${product.productPrice}</td>
        <td>${product.productDescription}</td>
        <td>${product.producer}</td>
    </tr>
</table>
</body>
</html>
