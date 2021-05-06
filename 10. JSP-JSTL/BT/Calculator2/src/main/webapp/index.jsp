<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 1/30/2021
  Time: 1:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <form method="post" action="/calculator">
        <h2>Simple Calculator</h2>
        <div class="content">
          <div class="first-operand">
              <span>First Operand</span>
              <input type="text" name="first-operand" placeholder="Enter first operand">
          </div>
            <div class="operand">
                <span>Operator</span>
                <select name="operand" class="option-operand">
                    <option value="+">+</option>
                    <option value="+">-</option>
                    <option value="+">*</option>
                    <option value="+">/</option>
                </select>
            </div>
            <div class="second-operand">
                <span>Second operand</span>
                <input type="text" name="second-operand" placeholder="Enter second operand">
            </div>
                <input type="submit" placeholder="Calculate">
        </div>
    </form>
</body>
</html>
