<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 1/29/2021
  Time: 5:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<form action="/calculator" method="post">
    <h2>Simple Calculator</h2>
    <span></span>
    <input type="text" name="firtOperand" placeholder="Enter operand">
    <select value="option" name="operand">
        <option value="+">+</option>
        <option value="-">-</option>
        <option value="*">*</option>
        <option value="/">/</option>
    </select>
    <input type="text" name="second-operand" placeholder="Enter operand">
    <input type="submit" value="submit">
</form>
</body>
</html>
