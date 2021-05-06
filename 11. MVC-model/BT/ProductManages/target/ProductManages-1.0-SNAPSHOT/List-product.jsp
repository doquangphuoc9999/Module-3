<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/2/2021
  Time: 8:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product</title>
    <link rel="stylesheet" href="../css/Style.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
</head>
<body>
    <h2>Products</h2>
    <p>
        <a href="/addProduct">
            Add Products
        </a>
    </p>
    <form action="./findByName">
        <input type="text" name="findName" placeholder="Enter your name product">
        <input type="submit" placeholder="Enter">
    </form>
    <table border="1">
        <tr>
            <td>id</td>
            <td>Products Name</td>
            <td>Products Price</td>
            <td>Product Description</td>
            <td>Producer</td>
            <td>Edit</td>
            <td>Delete</td>
        </tr>
        <c:forEach items='${requestScope["product"]}' var="product">
            <tr>
                <td><a href="infomationProduct?id=${product.id}">${product.id}</a></td>
                <td>${product.productName}</td>
                <td>${product.productPrice}</td>
                <td>${product.productDescription}</td>
                <td>${product.producer}</td>
                <td><a href="editProduct?id=${product.id}">Edit</a></td>
                <td><a href="delete?id=${product.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
